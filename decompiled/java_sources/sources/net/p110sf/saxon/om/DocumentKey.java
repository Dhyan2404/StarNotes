package net.p110sf.saxon.om;

import java.io.File;
import java.io.IOException;
import java.util.Objects;
import net.p110sf.saxon.style.PackageVersion;

/* loaded from: classes11.dex */
public class DocumentKey {
    public static final boolean CASE_BLIND_FILES = new File("a").equals(new File("A"));

    /* renamed from: a */
    public String f100774a;

    /* renamed from: b */
    public String f100775b;

    /* renamed from: c */
    public String f100776c;

    /* renamed from: d */
    public PackageVersion f100777d;

    public DocumentKey(String str) {
        this.f100776c = "";
        this.f100777d = PackageVersion.ONE;
        Objects.requireNonNull(str);
        this.f100774a = str;
        this.f100775b = normalizeURI(str);
    }

    public static String normalizeURI(String str) {
        if (str == null) {
            return null;
        }
        if (str.startsWith("FILE:")) {
            str = "file:" + str.substring(5);
        }
        if (!str.startsWith("file:")) {
            return str;
        }
        if (str.startsWith("file:///")) {
            str = "file:/" + str.substring(8);
        }
        if (str.startsWith("file:/")) {
            try {
                str = "file:" + new File(str.substring(5)).getCanonicalPath();
            } catch (IOException unused) {
            }
        }
        return CASE_BLIND_FILES ? str.toLowerCase() : str;
    }

    public boolean equals(Object obj) {
        if (obj instanceof DocumentKey) {
            DocumentKey documentKey = (DocumentKey) obj;
            if (this.f100775b.equals(documentKey.f100775b) && this.f100776c.equals(documentKey.f100776c) && this.f100777d.equals(documentKey.f100777d)) {
                return true;
            }
        }
        return false;
    }

    public String getAbsoluteURI() {
        return this.f100774a;
    }

    public int hashCode() {
        return this.f100775b.hashCode();
    }

    public String toString() {
        return this.f100774a;
    }

    public DocumentKey(String str, String str2, PackageVersion packageVersion) {
        this.f100776c = "";
        this.f100777d = PackageVersion.ONE;
        Objects.requireNonNull(str);
        this.f100774a = str;
        this.f100775b = normalizeURI(str);
        this.f100776c = str2 == null ? "" : str2;
        this.f100777d = packageVersion;
    }
}
