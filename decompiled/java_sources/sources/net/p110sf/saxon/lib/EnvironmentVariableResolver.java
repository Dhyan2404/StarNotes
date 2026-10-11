package net.p110sf.saxon.lib;

import java.util.Set;

/* loaded from: classes11.dex */
public interface EnvironmentVariableResolver {
    Set<String> getAvailableEnvironmentVariables();

    String getEnvironmentVariable(String str);
}
