package org.apache.commons.compress.harmony.unpack200;

import java.io.BufferedOutputStream;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.jar.JarOutputStream;

/* loaded from: classes12.dex */
public class Archive {

    /* renamed from: a */
    public InputStream f106811a;

    /* renamed from: b */
    public final JarOutputStream f106812b;

    /* renamed from: c */
    public boolean f106813c;

    /* renamed from: d */
    public int f106814d = 1;

    /* renamed from: e */
    public FileOutputStream f106815e;

    /* renamed from: f */
    public boolean f106816f;

    /* renamed from: g */
    public boolean f106817g;

    /* renamed from: h */
    public String f106818h;

    /* renamed from: i */
    public String f106819i;

    public Archive(String str, String str2) throws FileNotFoundException, IOException {
        this.f106818h = str;
        this.f106819i = str2;
        this.f106811a = new FileInputStream(str);
        this.f106812b = new JarOutputStream(new BufferedOutputStream(new FileOutputStream(str2)));
    }

    /* renamed from: a */
    public final boolean m67012a(InputStream inputStream) throws IOException {
        inputStream.mark(1);
        int read = inputStream.read();
        inputStream.reset();
        return read != -1;
    }

    public void setDeflateHint(boolean z) {
        this.f106816f = true;
        this.f106817g = z;
    }

    public void setLogFile(String str) throws FileNotFoundException {
        this.f106815e = new FileOutputStream(str);
    }

    public void setQuiet(boolean z) {
        if (z) {
            this.f106814d = 0;
        } else if (this.f106814d == 0) {
            this.f106814d = 0;
        }
    }

    public void setRemovePackFile(boolean z) {
        this.f106813c = z;
    }

    public void setVerbose(boolean z) {
        if (z) {
            this.f106814d = 2;
        } else if (this.f106814d == 2) {
            this.f106814d = 1;
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(23:1|2|3|(2:5|(1:7)(2:8|9))|11|(1:13)(1:83)|14|(1:16)|17|18|(4:21|(2:23|24)(1:26)|25|19)|27|28|(9:30|(2:31|(4:33|(2:36|34)|37|38)(0))|40|41|42|43|(2:55|56)|45|(3:47|(1:49)|(1:53)(2:51|52))(1:54))(2:63|(10:66|(1:68)(1:82)|69|(1:71)|72|(1:74)|75|(3:77|78|79)(1:81)|80|64))|39|40|41|42|43|(0)|45|(0)(0)|(1:(0))) */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0156  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0170 A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:55:0x014f A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void unpack() throws org.apache.commons.compress.harmony.pack200.Pack200Exception, java.io.IOException {
        /*
            Method dump skipped, instructions count: 388
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.commons.compress.harmony.unpack200.Archive.unpack():void");
    }

    public void setLogFile(String str, boolean z) throws FileNotFoundException {
        this.f106815e = new FileOutputStream(str, z);
    }

    public Archive(InputStream inputStream, JarOutputStream jarOutputStream) {
        this.f106811a = inputStream;
        this.f106812b = jarOutputStream;
    }
}
