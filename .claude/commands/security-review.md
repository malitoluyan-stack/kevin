# Security Review

Perform a thorough security review of the current branch diff or specified files.

## Checklist

### Input Validation & Injection
- [ ] SQL injection (raw queries, unsanitized inputs)
- [ ] Command injection (shell exec, subprocess with user input)
- [ ] XSS (unescaped output in HTML/JS contexts)
- [ ] Path traversal (user-controlled file paths)
- [ ] SSRF (user-controlled URLs fetched server-side)

### Authentication & Authorization
- [ ] Hardcoded credentials or secrets in code
- [ ] Missing authentication on sensitive endpoints
- [ ] Broken access control (horizontal/vertical privilege escalation)
- [ ] Insecure session handling

### Data Handling
- [ ] Sensitive data logged or exposed in errors
- [ ] Unencrypted storage of passwords/PII
- [ ] Insecure deserialization

### Dependencies
- [ ] Known CVEs in direct dependencies
- [ ] Unpinned dependency versions

## Output Format

For each finding:
- **Severity**: Critical / High / Medium / Low
- **Location**: file:line
- **Issue**: what the vulnerability is
- **Fix**: concrete remediation

End with a summary count by severity and overall risk rating.
