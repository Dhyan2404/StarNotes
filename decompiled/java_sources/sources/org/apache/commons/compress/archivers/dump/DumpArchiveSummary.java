package org.apache.commons.compress.archivers.dump;

import com.sunia.HTREnginev2.yjf;
import java.io.IOException;
import java.util.Date;
import org.apache.commons.compress.archivers.zip.ZipEncoding;

/* loaded from: classes12.dex */
public class DumpArchiveSummary {

    /* renamed from: a */
    public long f105569a;

    /* renamed from: b */
    public long f105570b;

    /* renamed from: c */
    public int f105571c;

    /* renamed from: d */
    public String f105572d;

    /* renamed from: e */
    public int f105573e;

    /* renamed from: f */
    public String f105574f;

    /* renamed from: g */
    public String f105575g;

    /* renamed from: h */
    public String f105576h;

    /* renamed from: i */
    public int f105577i;

    /* renamed from: j */
    public int f105578j;

    /* renamed from: k */
    public int f105579k;

    public DumpArchiveSummary(byte[] bArr, ZipEncoding zipEncoding) throws IOException {
        this.f105569a = yjf.m58437c(bArr, 4) * 1000;
        this.f105570b = yjf.m58437c(bArr, 8) * 1000;
        this.f105571c = yjf.m58437c(bArr, 12);
        this.f105572d = yjf.m58439e(zipEncoding, bArr, 676, 16).trim();
        this.f105573e = yjf.m58437c(bArr, 692);
        this.f105574f = yjf.m58439e(zipEncoding, bArr, 696, 64).trim();
        this.f105575g = yjf.m58439e(zipEncoding, bArr, 760, 64).trim();
        this.f105576h = yjf.m58439e(zipEncoding, bArr, 824, 64).trim();
        this.f105577i = yjf.m58437c(bArr, 888);
        this.f105578j = yjf.m58437c(bArr, 892);
        this.f105579k = yjf.m58437c(bArr, 896);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            DumpArchiveSummary dumpArchiveSummary = (DumpArchiveSummary) obj;
            if (this.f105569a == dumpArchiveSummary.f105569a && getHostname() != null && getHostname().equals(dumpArchiveSummary.getHostname())) {
                return getDevname() != null && getDevname().equals(dumpArchiveSummary.getDevname());
            }
        }
        return false;
    }

    public String getDevname() {
        return this.f105575g;
    }

    public Date getDumpDate() {
        return new Date(this.f105569a);
    }

    public String getFilesystem() {
        return this.f105574f;
    }

    public int getFirstRecord() {
        return this.f105578j;
    }

    public int getFlags() {
        return this.f105577i;
    }

    public String getHostname() {
        return this.f105576h;
    }

    public String getLabel() {
        return this.f105572d;
    }

    public int getLevel() {
        return this.f105573e;
    }

    public int getNTRec() {
        return this.f105579k;
    }

    public Date getPreviousDumpDate() {
        return new Date(this.f105570b);
    }

    public int getVolume() {
        return this.f105571c;
    }

    public int hashCode() {
        int hashCode = (int) ((this.f105572d != null ? r0.hashCode() : 17) + (this.f105569a * 31));
        String str = this.f105576h;
        if (str != null) {
            hashCode = (str.hashCode() * 31) + 17;
        }
        String str2 = this.f105575g;
        return str2 != null ? (str2.hashCode() * 31) + 17 : hashCode;
    }

    public boolean isCompressed() {
        return (this.f105577i & 128) == 128;
    }

    public boolean isExtendedAttributes() {
        return (this.f105577i & 32768) == 32768;
    }

    public boolean isMetaDataOnly() {
        return (this.f105577i & 256) == 256;
    }

    public boolean isNewHeader() {
        return (this.f105577i & 1) == 1;
    }

    public boolean isNewInode() {
        return (this.f105577i & 2) == 2;
    }

    public void setDevname(String str) {
        this.f105575g = str;
    }

    public void setDumpDate(Date date) {
        this.f105569a = date.getTime();
    }

    public void setFilesystem(String str) {
        this.f105574f = str;
    }

    public void setFirstRecord(int i) {
        this.f105578j = i;
    }

    public void setFlags(int i) {
        this.f105577i = i;
    }

    public void setHostname(String str) {
        this.f105576h = str;
    }

    public void setLabel(String str) {
        this.f105572d = str;
    }

    public void setLevel(int i) {
        this.f105573e = i;
    }

    public void setNTRec(int i) {
        this.f105579k = i;
    }

    public void setPreviousDumpDate(Date date) {
        this.f105570b = date.getTime();
    }

    public void setVolume(int i) {
        this.f105571c = i;
    }
}
