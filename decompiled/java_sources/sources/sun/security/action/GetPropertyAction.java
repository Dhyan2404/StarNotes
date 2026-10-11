package sun.security.action;

import java.security.AccessController;
import java.security.PrivilegedAction;

/* loaded from: classes16.dex */
public class GetPropertyAction implements PrivilegedAction<String> {
    private String defaultVal;
    private String theProp;

    public GetPropertyAction(String str) {
        this.theProp = str;
    }

    public static String privilegedGetProperty(String str) {
        return System.getSecurityManager() == null ? System.getProperty(str) : (String) AccessController.doPrivileged(new GetPropertyAction(str));
    }

    @Override // java.security.PrivilegedAction
    public String run() {
        String property = System.getProperty(this.theProp);
        return property == null ? this.defaultVal : property;
    }

    public GetPropertyAction(String str, String str2) {
        this.theProp = str;
        this.defaultVal = str2;
    }
}
