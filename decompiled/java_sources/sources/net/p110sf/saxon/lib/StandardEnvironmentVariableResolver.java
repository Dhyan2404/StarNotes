package net.p110sf.saxon.lib;

import java.util.Set;

/* loaded from: classes11.dex */
public class StandardEnvironmentVariableResolver implements EnvironmentVariableResolver {
    @Override // net.p110sf.saxon.lib.EnvironmentVariableResolver
    public Set<String> getAvailableEnvironmentVariables() {
        return System.getenv().keySet();
    }

    @Override // net.p110sf.saxon.lib.EnvironmentVariableResolver
    public String getEnvironmentVariable(String str) {
        return System.getenv(str);
    }
}
