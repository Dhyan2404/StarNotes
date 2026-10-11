package org.mortbay.resource;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.StringTokenizer;

/* loaded from: classes13.dex */
public class ResourceCollection extends Resource {
    private Resource[] _resources;

    public ResourceCollection() {
    }

    @Override // org.mortbay.resource.Resource
    public Resource addPath(String str) throws IOException, MalformedURLException {
        if (this._resources == null) {
            throw new IllegalStateException("*resources* not set.");
        }
        if (str == null) {
            throw new MalformedURLException();
        }
        if (str.length() == 0 || "/".equals(str)) {
            return this;
        }
        int i = 0;
        Resource resource = null;
        while (true) {
            Resource[] resourceArr = this._resources;
            if (i >= resourceArr.length) {
                break;
            }
            resource = resourceArr[i].addPath(str);
            if (!resource.exists()) {
                i++;
            } else if (!resource.isDirectory()) {
                return resource;
            }
        }
        int i2 = i + 1;
        ArrayList arrayList = null;
        while (true) {
            Resource[] resourceArr2 = this._resources;
            if (i2 >= resourceArr2.length) {
                break;
            }
            Resource addPath = resourceArr2[i2].addPath(str);
            if (addPath.exists() && addPath.isDirectory()) {
                if (resource != null) {
                    arrayList = new ArrayList();
                    arrayList.add(resource);
                    resource = null;
                }
                arrayList.add(addPath);
            }
            i2++;
        }
        if (resource != null) {
            return resource;
        }
        if (arrayList != null) {
            return new ResourceCollection((Resource[]) arrayList.toArray(new Resource[arrayList.size()]));
        }
        return null;
    }

    @Override // org.mortbay.resource.Resource
    public boolean delete() throws SecurityException {
        throw new UnsupportedOperationException();
    }

    @Override // org.mortbay.resource.Resource
    public boolean exists() {
        if (this._resources != null) {
            return true;
        }
        throw new IllegalStateException("*resources* not set.");
    }

    public Object findResource(String str) throws IOException, MalformedURLException {
        int i = 0;
        Resource resource = null;
        while (true) {
            Resource[] resourceArr = this._resources;
            if (i >= resourceArr.length) {
                break;
            }
            resource = resourceArr[i].addPath(str);
            if (!resource.exists()) {
                i++;
            } else if (!resource.isDirectory()) {
                return resource;
            }
        }
        int i2 = i + 1;
        ArrayList arrayList = null;
        while (true) {
            Resource[] resourceArr2 = this._resources;
            if (i2 >= resourceArr2.length) {
                break;
            }
            Resource addPath = resourceArr2[i2].addPath(str);
            if (addPath.exists() && addPath.isDirectory()) {
                if (resource != null) {
                    arrayList = new ArrayList();
                    arrayList.add(resource);
                }
                arrayList.add(addPath);
            }
            i2++;
        }
        if (resource != null) {
            return resource;
        }
        if (arrayList != null) {
            return arrayList;
        }
        return null;
    }

    @Override // org.mortbay.resource.Resource
    public File getFile() throws IOException {
        if (this._resources == null) {
            throw new IllegalStateException("*resources* not set.");
        }
        int i = 0;
        while (true) {
            Resource[] resourceArr = this._resources;
            if (i >= resourceArr.length) {
                return null;
            }
            File file = resourceArr[i].getFile();
            if (file != null) {
                return file;
            }
            i++;
        }
    }

    @Override // org.mortbay.resource.Resource
    public InputStream getInputStream() throws IOException {
        if (this._resources == null) {
            throw new IllegalStateException("*resources* not set.");
        }
        int i = 0;
        while (true) {
            Resource[] resourceArr = this._resources;
            if (i >= resourceArr.length) {
                return null;
            }
            InputStream inputStream = resourceArr[i].getInputStream();
            if (inputStream != null) {
                return inputStream;
            }
            i++;
        }
    }

    @Override // org.mortbay.resource.Resource
    public String getName() {
        if (this._resources == null) {
            throw new IllegalStateException("*resources* not set.");
        }
        int i = 0;
        while (true) {
            Resource[] resourceArr = this._resources;
            if (i >= resourceArr.length) {
                return null;
            }
            String name = resourceArr[i].getName();
            if (name != null) {
                return name;
            }
            i++;
        }
    }

    @Override // org.mortbay.resource.Resource
    public OutputStream getOutputStream() throws IOException, SecurityException {
        if (this._resources == null) {
            throw new IllegalStateException("*resources* not set.");
        }
        int i = 0;
        while (true) {
            Resource[] resourceArr = this._resources;
            if (i >= resourceArr.length) {
                return null;
            }
            OutputStream outputStream = resourceArr[i].getOutputStream();
            if (outputStream != null) {
                return outputStream;
            }
            i++;
        }
    }

    public Resource[] getResources() {
        return this._resources;
    }

    @Override // org.mortbay.resource.Resource
    public URL getURL() {
        if (this._resources == null) {
            throw new IllegalStateException("*resources* not set.");
        }
        int i = 0;
        while (true) {
            Resource[] resourceArr = this._resources;
            if (i >= resourceArr.length) {
                return null;
            }
            URL url = resourceArr[i].getURL();
            if (url != null) {
                return url;
            }
            i++;
        }
    }

    @Override // org.mortbay.resource.Resource
    public boolean isDirectory() {
        if (this._resources != null) {
            return true;
        }
        throw new IllegalStateException("*resources* not set.");
    }

    @Override // org.mortbay.resource.Resource
    public long lastModified() {
        if (this._resources == null) {
            throw new IllegalStateException("*resources* not set.");
        }
        int i = 0;
        while (true) {
            Resource[] resourceArr = this._resources;
            if (i >= resourceArr.length) {
                return -1L;
            }
            long lastModified = resourceArr[i].lastModified();
            if (lastModified != -1) {
                return lastModified;
            }
            i++;
        }
    }

    @Override // org.mortbay.resource.Resource
    public long length() {
        return -1L;
    }

    @Override // org.mortbay.resource.Resource
    public String[] list() {
        if (this._resources == null) {
            throw new IllegalStateException("*resources* not set.");
        }
        HashSet hashSet = new HashSet();
        int i = 0;
        while (true) {
            Resource[] resourceArr = this._resources;
            if (i >= resourceArr.length) {
                return (String[]) hashSet.toArray(new String[hashSet.size()]);
            }
            for (String str : resourceArr[i].list()) {
                hashSet.add(str);
            }
            i++;
        }
    }

    @Override // org.mortbay.resource.Resource
    public void release() {
        if (this._resources == null) {
            throw new IllegalStateException("*resources* not set.");
        }
        int i = 0;
        while (true) {
            Resource[] resourceArr = this._resources;
            if (i >= resourceArr.length) {
                return;
            }
            resourceArr[i].release();
            i++;
        }
    }

    @Override // org.mortbay.resource.Resource
    public boolean renameTo(Resource resource) throws SecurityException {
        throw new UnsupportedOperationException();
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0022, code lost:
    
        r3 = new java.lang.StringBuffer();
        r3.append(r0);
        r3.append(" is not an existing directory.");
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0038, code lost:
    
        throw new java.lang.IllegalArgumentException(r3.toString());
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void setResources(org.mortbay.resource.Resource[] r3) {
        /*
            r2 = this;
            org.mortbay.resource.Resource[] r0 = r2._resources
            if (r0 != 0) goto L4a
            if (r3 == 0) goto L42
            int r0 = r3.length
            if (r0 == 0) goto L3a
            r2._resources = r3
            r3 = 0
        Lc:
            org.mortbay.resource.Resource[] r0 = r2._resources
            int r1 = r0.length
            if (r3 >= r1) goto L39
            r0 = r0[r3]
            boolean r1 = r0.exists()
            if (r1 == 0) goto L22
            boolean r1 = r0.isDirectory()
            if (r1 == 0) goto L22
            int r3 = r3 + 1
            goto Lc
        L22:
            java.lang.IllegalArgumentException r2 = new java.lang.IllegalArgumentException
            java.lang.StringBuffer r3 = new java.lang.StringBuffer
            r3.<init>()
            r3.append(r0)
            java.lang.String r0 = " is not an existing directory."
            r3.append(r0)
            java.lang.String r3 = r3.toString()
            r2.<init>(r3)
            throw r2
        L39:
            return
        L3a:
            java.lang.IllegalArgumentException r2 = new java.lang.IllegalArgumentException
            java.lang.String r3 = "arg *resources* must be one or more resources."
            r2.<init>(r3)
            throw r2
        L42:
            java.lang.IllegalArgumentException r2 = new java.lang.IllegalArgumentException
            java.lang.String r3 = "*resources* must not be null."
            r2.<init>(r3)
            throw r2
        L4a:
            java.lang.IllegalStateException r2 = new java.lang.IllegalStateException
            java.lang.String r3 = "*resources* already set."
            r2.<init>(r3)
            throw r2
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mortbay.resource.ResourceCollection.setResources(org.mortbay.resource.Resource[]):void");
    }

    public void setResourcesAsCSV(String str) {
        setResources(str);
    }

    public String toString() {
        if (this._resources == null) {
            return "";
        }
        StringBuffer stringBuffer = new StringBuffer();
        int i = 0;
        while (true) {
            Resource[] resourceArr = this._resources;
            if (i >= resourceArr.length) {
                return stringBuffer.toString();
            }
            stringBuffer.append(resourceArr[i].toString());
            stringBuffer.append(';');
            i++;
        }
    }

    public ResourceCollection(Resource[] resourceArr) {
        setResources(resourceArr);
    }

    public ResourceCollection(String[] strArr) {
        setResources(strArr);
    }

    public ResourceCollection(String str) {
        setResources(str);
    }

    public void setResources(String[] strArr) {
        if (this._resources != null) {
            throw new IllegalStateException("*resources* already set.");
        }
        if (strArr != null) {
            if (strArr.length != 0) {
                this._resources = new Resource[strArr.length];
                for (int i = 0; i < strArr.length; i++) {
                    try {
                        this._resources[i] = Resource.newResource(strArr[i]);
                        if (!this._resources[i].exists() || !this._resources[i].isDirectory()) {
                            StringBuffer stringBuffer = new StringBuffer();
                            stringBuffer.append(this._resources[i]);
                            stringBuffer.append(" is not an existing directory.");
                            throw new IllegalArgumentException(stringBuffer.toString());
                        }
                    } catch (Exception e) {
                        throw new RuntimeException(e);
                    }
                }
                return;
            }
            throw new IllegalArgumentException("arg *resources* must be one or more resources.");
        }
        throw new IllegalArgumentException("*resources* must not be null.");
    }

    public void setResources(String str) {
        if (this._resources != null) {
            throw new IllegalStateException("*resources* already set.");
        }
        if (str != null) {
            StringTokenizer stringTokenizer = new StringTokenizer(str, ",;");
            int countTokens = stringTokenizer.countTokens();
            if (countTokens != 0) {
                this._resources = new Resource[countTokens];
                int i = 0;
                while (stringTokenizer.hasMoreTokens()) {
                    try {
                        this._resources[i] = Resource.newResource(stringTokenizer.nextToken().trim());
                        if (!this._resources[i].exists() || !this._resources[i].isDirectory()) {
                            StringBuffer stringBuffer = new StringBuffer();
                            stringBuffer.append(this._resources[i]);
                            stringBuffer.append(" is not an existing directory.");
                            throw new IllegalArgumentException(stringBuffer.toString());
                        }
                        i++;
                    } catch (Exception e) {
                        throw new RuntimeException(e);
                    }
                }
                return;
            }
            throw new IllegalArgumentException("arg *resources* must be one or more resources.");
        }
        throw new IllegalArgumentException("*csvResources* must not be null.");
    }
}
