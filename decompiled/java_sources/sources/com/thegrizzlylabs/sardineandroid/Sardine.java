package com.thegrizzlylabs.sardineandroid;

import com.thegrizzlylabs.sardineandroid.report.SardineReport;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import java.util.Map;
import java.util.Set;
import javax.xml.namespace.QName;
import org.w3c.dom.Element;

/* loaded from: classes10.dex */
public interface Sardine {
    void copy(String str, String str2) throws IOException;

    void copy(String str, String str2, boolean z) throws IOException;

    void createDirectory(String str) throws IOException;

    void delete(String str) throws IOException;

    void disableCompression();

    void enableCompression();

    boolean exists(String str) throws IOException;

    InputStream get(String str) throws IOException;

    InputStream get(String str, Map<String, String> map) throws IOException;

    DavAcl getAcl(String str) throws IOException;

    List<String> getPrincipalCollectionSet(String str) throws IOException;

    List<DavPrincipal> getPrincipals(String str) throws IOException;

    DavQuota getQuota(String str) throws IOException;

    @Deprecated
    List<DavResource> getResources(String str) throws IOException;

    void ignoreCookies();

    List<DavResource> list(String str) throws IOException;

    List<DavResource> list(String str, int i) throws IOException;

    List<DavResource> list(String str, int i, Set<QName> set) throws IOException;

    List<DavResource> list(String str, int i, boolean z) throws IOException;

    String lock(String str) throws IOException;

    String lock(String str, int i) throws IOException;

    void move(String str, String str2) throws IOException;

    void move(String str, String str2, boolean z) throws IOException;

    void move(String str, String str2, boolean z, String str3) throws IOException;

    List<DavResource> patch(String str, List<Element> list, List<QName> list2) throws IOException;

    List<DavResource> patch(String str, Map<QName, String> map) throws IOException;

    List<DavResource> patch(String str, Map<QName, String> map, List<QName> list) throws IOException;

    List<DavResource> propfind(String str, int i, Set<QName> set) throws IOException;

    void put(String str, File file, String str2) throws IOException;

    void put(String str, File file, String str2, boolean z) throws IOException;

    void put(String str, File file, String str2, boolean z, String str3) throws IOException;

    void put(String str, byte[] bArr) throws IOException;

    void put(String str, byte[] bArr, String str2) throws IOException;

    String refreshLock(String str, String str2, String str3) throws IOException;

    <T> T report(String str, int i, SardineReport<T> sardineReport) throws IOException;

    List<DavResource> search(String str, String str2, String str3) throws IOException;

    void setAcl(String str, List<DavAce> list) throws IOException;

    void setCredentials(String str, String str2);

    void setCredentials(String str, String str2, boolean z);

    @Deprecated
    void setCustomProps(String str, Map<String, String> map, List<String> list) throws IOException;

    void unlock(String str, String str2) throws IOException;
}
