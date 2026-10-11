package com.sun.org.apache.xml.internal.resolver;

import com.onyx.android.sdk.p039ui.treeview.view.AndroidTreeView;
import com.sun.org.apache.xml.internal.resolver.helpers.BootstrapResolver;
import com.sun.org.apache.xml.internal.resolver.helpers.Debug;
import java.io.IOException;
import java.io.InputStream;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.MissingResourceException;
import java.util.PropertyResourceBundle;
import java.util.ResourceBundle;
import java.util.StringTokenizer;
import java.util.Vector;

/* loaded from: classes10.dex */
public class CatalogManager {
    private static String pAllowPI = "xml.catalog.allowPI";
    private static String pClassname = "xml.catalog.className";
    private static String pFiles = "xml.catalog.files";
    private static String pIgnoreMissing = "xml.catalog.ignoreMissing";
    private static String pPrefer = "xml.catalog.prefer";
    private static String pStatic = "xml.catalog.staticCatalog";
    private static String pVerbosity = "xml.catalog.verbosity";
    private BootstrapResolver bResolver = new BootstrapResolver();
    private String catalogClassName;
    private String catalogFiles;
    public Debug debug;
    private String defaultCatalogFiles;
    private boolean defaultOasisXMLCatalogPI;
    private boolean defaultPreferPublic;
    private boolean defaultRelativeCatalogs;
    private boolean defaultUseStaticCatalog;
    private int defaultVerbosity;
    private boolean fromPropertiesFile;
    private boolean ignoreMissingProperties;
    private Boolean oasisXMLCatalogPI;
    private Boolean preferPublic;
    private String propertyFile;
    private URL propertyFileURI;
    private Boolean relativeCatalogs;
    private ResourceBundle resources;
    private Boolean useStaticCatalog;
    private Integer verbosity;
    private static CatalogManager staticManager = new CatalogManager();
    private static Catalog staticCatalog = null;

    public CatalogManager() {
        this.ignoreMissingProperties = (System.getProperty(pIgnoreMissing) == null && System.getProperty(pFiles) == null) ? false : true;
        this.propertyFile = "CatalogManager.properties";
        this.propertyFileURI = null;
        this.defaultCatalogFiles = "./xcatalog";
        this.catalogFiles = null;
        this.fromPropertiesFile = false;
        this.defaultVerbosity = 1;
        this.verbosity = null;
        this.defaultPreferPublic = true;
        this.preferPublic = null;
        this.defaultUseStaticCatalog = true;
        this.useStaticCatalog = null;
        this.defaultOasisXMLCatalogPI = true;
        this.oasisXMLCatalogPI = null;
        this.defaultRelativeCatalogs = true;
        this.relativeCatalogs = null;
        this.catalogClassName = null;
        this.debug = null;
        this.debug = new Debug();
    }

    public static CatalogManager getStaticManager() {
        return staticManager;
    }

    private String queryCatalogFiles() {
        String property = System.getProperty(pFiles);
        this.fromPropertiesFile = false;
        if (property == null) {
            if (this.resources == null) {
                readProperties();
            }
            ResourceBundle resourceBundle = this.resources;
            if (resourceBundle != null) {
                try {
                    property = resourceBundle.getString("catalogs");
                    this.fromPropertiesFile = true;
                } catch (MissingResourceException unused) {
                    System.err.println(this.propertyFile + ": catalogs not found.");
                    property = null;
                }
            }
        }
        return property == null ? this.defaultCatalogFiles : property;
    }

    private boolean queryPreferPublic() {
        String property = System.getProperty(pPrefer);
        if (property == null) {
            if (this.resources == null) {
                readProperties();
            }
            ResourceBundle resourceBundle = this.resources;
            if (resourceBundle == null) {
                return this.defaultPreferPublic;
            }
            try {
                property = resourceBundle.getString("prefer");
            } catch (MissingResourceException unused) {
                return this.defaultPreferPublic;
            }
        }
        return property == null ? this.defaultPreferPublic : property.equalsIgnoreCase("public");
    }

    private boolean queryRelativeCatalogs() {
        if (this.resources == null) {
            readProperties();
        }
        ResourceBundle resourceBundle = this.resources;
        if (resourceBundle == null) {
            return this.defaultRelativeCatalogs;
        }
        try {
            String string = resourceBundle.getString("relative-catalogs");
            if (!string.equalsIgnoreCase("true") && !string.equalsIgnoreCase("yes")) {
                if (!string.equalsIgnoreCase("1")) {
                    return false;
                }
            }
            return true;
        } catch (MissingResourceException unused) {
            return this.defaultRelativeCatalogs;
        }
    }

    private boolean queryUseStaticCatalog() {
        String property = System.getProperty(pStatic);
        if (property == null) {
            if (this.resources == null) {
                readProperties();
            }
            ResourceBundle resourceBundle = this.resources;
            if (resourceBundle == null) {
                return this.defaultUseStaticCatalog;
            }
            try {
                property = resourceBundle.getString("static-catalog");
            } catch (MissingResourceException unused) {
                return this.defaultUseStaticCatalog;
            }
        }
        return property == null ? this.defaultUseStaticCatalog : property.equalsIgnoreCase("true") || property.equalsIgnoreCase("yes") || property.equalsIgnoreCase("1");
    }

    private int queryVerbosity() {
        String num = Integer.toString(this.defaultVerbosity);
        String property = System.getProperty(pVerbosity);
        if (property == null) {
            if (this.resources == null) {
                readProperties();
            }
            ResourceBundle resourceBundle = this.resources;
            if (resourceBundle != null) {
                try {
                    num = resourceBundle.getString("verbosity");
                } catch (MissingResourceException unused) {
                }
            }
        } else {
            num = property;
        }
        int i = this.defaultVerbosity;
        try {
            i = Integer.parseInt(num.trim());
        } catch (Exception unused2) {
            System.err.println("Cannot parse verbosity: \"" + num + "\"");
        }
        if (this.verbosity == null) {
            this.debug.setDebug(i);
            this.verbosity = new Integer(i);
        }
        return i;
    }

    private synchronized void readProperties() {
        InputStream resourceAsStream;
        try {
            try {
                this.propertyFileURI = CatalogManager.class.getResource("/" + this.propertyFile);
                resourceAsStream = CatalogManager.class.getResourceAsStream("/" + this.propertyFile);
            } catch (MissingResourceException unused) {
                if (!this.ignoreMissingProperties) {
                    System.err.println("Cannot read " + this.propertyFile);
                }
            }
        } catch (IOException unused2) {
            if (!this.ignoreMissingProperties) {
                System.err.println("Failure trying to read " + this.propertyFile);
            }
        }
        if (resourceAsStream != null) {
            this.resources = new PropertyResourceBundle(resourceAsStream);
            if (this.verbosity == null) {
                try {
                    int parseInt = Integer.parseInt(this.resources.getString("verbosity").trim());
                    this.debug.setDebug(parseInt);
                    this.verbosity = new Integer(parseInt);
                } catch (Exception unused3) {
                }
            }
            return;
        }
        if (!this.ignoreMissingProperties) {
            System.err.println("Cannot find " + this.propertyFile);
            this.ignoreMissingProperties = true;
        }
    }

    public boolean allowOasisXMLCatalogPI() {
        return getAllowOasisXMLCatalogPI();
    }

    public String catalogClassName() {
        return getCatalogClassName();
    }

    public Vector catalogFiles() {
        return getCatalogFiles();
    }

    public boolean getAllowOasisXMLCatalogPI() {
        if (this.oasisXMLCatalogPI == null) {
            this.oasisXMLCatalogPI = new Boolean(queryAllowOasisXMLCatalogPI());
        }
        return this.oasisXMLCatalogPI.booleanValue();
    }

    public BootstrapResolver getBootstrapResolver() {
        return this.bResolver;
    }

    public Catalog getCatalog() {
        Catalog catalog = staticCatalog;
        if (this.useStaticCatalog == null) {
            this.useStaticCatalog = new Boolean(getUseStaticCatalog());
        }
        if (catalog == null || !this.useStaticCatalog.booleanValue()) {
            catalog = getPrivateCatalog();
            if (this.useStaticCatalog.booleanValue()) {
                staticCatalog = catalog;
            }
        }
        return catalog;
    }

    public String getCatalogClassName() {
        if (this.catalogClassName == null) {
            this.catalogClassName = queryCatalogClassName();
        }
        return this.catalogClassName;
    }

    public Vector getCatalogFiles() {
        if (this.catalogFiles == null) {
            this.catalogFiles = queryCatalogFiles();
        }
        StringTokenizer stringTokenizer = new StringTokenizer(this.catalogFiles, AndroidTreeView.f47214k);
        Vector vector = new Vector();
        while (stringTokenizer.hasMoreTokens()) {
            String nextToken = stringTokenizer.nextToken();
            if (this.fromPropertiesFile && !relativeCatalogs()) {
                try {
                    nextToken = new URL(this.propertyFileURI, nextToken).toString();
                } catch (MalformedURLException unused) {
                }
            }
            vector.add(nextToken);
        }
        return vector;
    }

    public boolean getIgnoreMissingProperties() {
        return this.ignoreMissingProperties;
    }

    public boolean getPreferPublic() {
        if (this.preferPublic == null) {
            this.preferPublic = new Boolean(queryPreferPublic());
        }
        return this.preferPublic.booleanValue();
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x008d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.sun.org.apache.xml.internal.resolver.Catalog getPrivateCatalog() {
        /*
            r6 = this;
            com.sun.org.apache.xml.internal.resolver.Catalog r0 = com.sun.org.apache.xml.internal.resolver.CatalogManager.staticCatalog
            java.lang.Boolean r1 = r6.useStaticCatalog
            if (r1 != 0) goto L11
            java.lang.Boolean r1 = new java.lang.Boolean
            boolean r2 = r6.getUseStaticCatalog()
            r1.<init>(r2)
            r6.useStaticCatalog = r1
        L11:
            if (r0 == 0) goto L1b
            java.lang.Boolean r1 = r6.useStaticCatalog
            boolean r1 = r1.booleanValue()
            if (r1 != 0) goto L8f
        L1b:
            java.lang.String r1 = r6.getCatalogClassName()     // Catch: java.lang.Exception -> L81
            if (r1 != 0) goto L28
            com.sun.org.apache.xml.internal.resolver.Catalog r1 = new com.sun.org.apache.xml.internal.resolver.Catalog     // Catch: java.lang.Exception -> L81
            r1.<init>()     // Catch: java.lang.Exception -> L81
        L26:
            r0 = r1
            goto L77
        L28:
            r2 = 1
            java.lang.Class r3 = java.lang.Class.forName(r1)     // Catch: java.lang.ClassCastException -> L35 java.lang.ClassNotFoundException -> L56 java.lang.Exception -> L81
            java.lang.Object r3 = r3.newInstance()     // Catch: java.lang.ClassCastException -> L35 java.lang.ClassNotFoundException -> L56 java.lang.Exception -> L81
            com.sun.org.apache.xml.internal.resolver.Catalog r3 = (com.sun.org.apache.xml.internal.resolver.Catalog) r3     // Catch: java.lang.ClassCastException -> L35 java.lang.ClassNotFoundException -> L56 java.lang.Exception -> L81
            r0 = r3
            goto L77
        L35:
            com.sun.org.apache.xml.internal.resolver.helpers.Debug r3 = r6.debug     // Catch: java.lang.Exception -> L81
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> L81
            r4.<init>()     // Catch: java.lang.Exception -> L81
            java.lang.String r5 = "Class named '"
            r4.append(r5)     // Catch: java.lang.Exception -> L81
            r4.append(r1)     // Catch: java.lang.Exception -> L81
            java.lang.String r1 = "' is not a Catalog. Using default."
            r4.append(r1)     // Catch: java.lang.Exception -> L81
            java.lang.String r1 = r4.toString()     // Catch: java.lang.Exception -> L81
            r3.message(r2, r1)     // Catch: java.lang.Exception -> L81
            com.sun.org.apache.xml.internal.resolver.Catalog r1 = new com.sun.org.apache.xml.internal.resolver.Catalog     // Catch: java.lang.Exception -> L81
            r1.<init>()     // Catch: java.lang.Exception -> L81
            goto L26
        L56:
            com.sun.org.apache.xml.internal.resolver.helpers.Debug r3 = r6.debug     // Catch: java.lang.Exception -> L81
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> L81
            r4.<init>()     // Catch: java.lang.Exception -> L81
            java.lang.String r5 = "Catalog class named '"
            r4.append(r5)     // Catch: java.lang.Exception -> L81
            r4.append(r1)     // Catch: java.lang.Exception -> L81
            java.lang.String r1 = "' could not be found. Using default."
            r4.append(r1)     // Catch: java.lang.Exception -> L81
            java.lang.String r1 = r4.toString()     // Catch: java.lang.Exception -> L81
            r3.message(r2, r1)     // Catch: java.lang.Exception -> L81
            com.sun.org.apache.xml.internal.resolver.Catalog r1 = new com.sun.org.apache.xml.internal.resolver.Catalog     // Catch: java.lang.Exception -> L81
            r1.<init>()     // Catch: java.lang.Exception -> L81
            goto L26
        L77:
            r0.setCatalogManager(r6)     // Catch: java.lang.Exception -> L81
            r0.setupReaders()     // Catch: java.lang.Exception -> L81
            r0.loadSystemCatalogs()     // Catch: java.lang.Exception -> L81
            goto L85
        L81:
            r1 = move-exception
            r1.printStackTrace()
        L85:
            java.lang.Boolean r6 = r6.useStaticCatalog
            boolean r6 = r6.booleanValue()
            if (r6 == 0) goto L8f
            com.sun.org.apache.xml.internal.resolver.CatalogManager.staticCatalog = r0
        L8f:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.org.apache.xml.internal.resolver.CatalogManager.getPrivateCatalog():com.sun.org.apache.xml.internal.resolver.Catalog");
    }

    public boolean getRelativeCatalogs() {
        if (this.relativeCatalogs == null) {
            this.relativeCatalogs = new Boolean(queryRelativeCatalogs());
        }
        return this.relativeCatalogs.booleanValue();
    }

    public boolean getUseStaticCatalog() {
        if (this.useStaticCatalog == null) {
            this.useStaticCatalog = new Boolean(queryUseStaticCatalog());
        }
        return this.useStaticCatalog.booleanValue();
    }

    public int getVerbosity() {
        if (this.verbosity == null) {
            this.verbosity = new Integer(queryVerbosity());
        }
        return this.verbosity.intValue();
    }

    public void ignoreMissingProperties(boolean z) {
        setIgnoreMissingProperties(z);
    }

    public boolean preferPublic() {
        return getPreferPublic();
    }

    public boolean queryAllowOasisXMLCatalogPI() {
        String property = System.getProperty(pAllowPI);
        if (property == null) {
            if (this.resources == null) {
                readProperties();
            }
            ResourceBundle resourceBundle = this.resources;
            if (resourceBundle == null) {
                return this.defaultOasisXMLCatalogPI;
            }
            try {
                property = resourceBundle.getString("allow-oasis-xml-catalog-pi");
            } catch (MissingResourceException unused) {
                return this.defaultOasisXMLCatalogPI;
            }
        }
        return property == null ? this.defaultOasisXMLCatalogPI : property.equalsIgnoreCase("true") || property.equalsIgnoreCase("yes") || property.equalsIgnoreCase("1");
    }

    public String queryCatalogClassName() {
        String property = System.getProperty(pClassname);
        if (property == null) {
            if (this.resources == null) {
                readProperties();
            }
            ResourceBundle resourceBundle = this.resources;
            property = null;
            if (resourceBundle == null) {
                return null;
            }
            try {
                return resourceBundle.getString("catalog-class-name");
            } catch (MissingResourceException unused) {
            }
        }
        return property;
    }

    public boolean relativeCatalogs() {
        return getRelativeCatalogs();
    }

    public void setAllowOasisXMLCatalogPI(boolean z) {
        this.oasisXMLCatalogPI = new Boolean(z);
    }

    public void setBootstrapResolver(BootstrapResolver bootstrapResolver) {
        this.bResolver = bootstrapResolver;
    }

    public void setCatalogClassName(String str) {
        this.catalogClassName = str;
    }

    public void setCatalogFiles(String str) {
        this.catalogFiles = str;
        this.fromPropertiesFile = false;
    }

    public void setIgnoreMissingProperties(boolean z) {
        this.ignoreMissingProperties = z;
    }

    public void setPreferPublic(boolean z) {
        this.preferPublic = new Boolean(z);
    }

    public void setRelativeCatalogs(boolean z) {
        this.relativeCatalogs = new Boolean(z);
    }

    public void setUseStaticCatalog(boolean z) {
        this.useStaticCatalog = new Boolean(z);
    }

    public void setVerbosity(int i) {
        this.verbosity = new Integer(i);
        this.debug.setDebug(i);
    }

    public boolean staticCatalog() {
        return getUseStaticCatalog();
    }

    public int verbosity() {
        return getVerbosity();
    }

    public CatalogManager(String str) {
        this.ignoreMissingProperties = (System.getProperty(pIgnoreMissing) == null && System.getProperty(pFiles) == null) ? false : true;
        this.propertyFileURI = null;
        this.defaultCatalogFiles = "./xcatalog";
        this.catalogFiles = null;
        this.fromPropertiesFile = false;
        this.defaultVerbosity = 1;
        this.verbosity = null;
        this.defaultPreferPublic = true;
        this.preferPublic = null;
        this.defaultUseStaticCatalog = true;
        this.useStaticCatalog = null;
        this.defaultOasisXMLCatalogPI = true;
        this.oasisXMLCatalogPI = null;
        this.defaultRelativeCatalogs = true;
        this.relativeCatalogs = null;
        this.catalogClassName = null;
        this.debug = null;
        this.propertyFile = str;
        this.debug = new Debug();
    }
}
