CREATE TABLE REDIRECTION_PAGE (
    -- Redirection from a page id to a target page id
    SOURCE       TEXT CONSTRAINT REDIRECTION_PK PRIMARY KEY, -- A regular expression pattern (may be a full page id)
    TARGET       TEXT, -- A target pattern substitution (may be a full page id)
    IS_VALID     BOOLEAN DEFAULT FALSE -- apply only for page redirection and valid it
);

CREATE TABLE REDIRECTION_PATTERN (
    -- Will apply a regular expression pattern
    PATTERN                TEXT CONSTRAINT REDIRECTION_PATTERN_PK PRIMARY KEY, -- A regular expression pattern
    PATTERN_SUBSTITUTION   TEXT, -- Pattern substitution
    SUBSTITUTION_ORDER     NUMERIC DEFAULT 0, -- The order in which the substitution must be applied
    APPLY_ALWAYS           BOOLEAN DEFAULT FALSE -- Apply only for pattern substitution (if yes, the substitution will always been applied before searching a page redirection)
);
