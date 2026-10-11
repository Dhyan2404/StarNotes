package androidx.versionedparcelable;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcelable;
import androidx.annotation.RestrictTo;
import androidx.collection.ArrayMap;
import androidx.versionedparcelable.VersionedParcel;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.lang.reflect.Method;
import java.nio.charset.Charset;
import java.util.Set;

@RestrictTo({RestrictTo.Scope.LIBRARY})
/* renamed from: androidx.versionedparcelable.a */
/* loaded from: classes3.dex */
public class C1536a extends VersionedParcel {

    /* renamed from: A */
    public static final int f10941A = 0;

    /* renamed from: B */
    public static final int f10942B = 1;

    /* renamed from: C */
    public static final int f10943C = 2;

    /* renamed from: D */
    public static final int f10944D = 3;

    /* renamed from: E */
    public static final int f10945E = 4;

    /* renamed from: F */
    public static final int f10946F = 5;

    /* renamed from: G */
    public static final int f10947G = 6;

    /* renamed from: H */
    public static final int f10948H = 7;

    /* renamed from: I */
    public static final int f10949I = 8;

    /* renamed from: J */
    public static final int f10950J = 9;

    /* renamed from: K */
    public static final int f10951K = 10;

    /* renamed from: L */
    public static final int f10952L = 11;

    /* renamed from: M */
    public static final int f10953M = 12;

    /* renamed from: N */
    public static final int f10954N = 13;

    /* renamed from: O */
    public static final int f10955O = 14;

    /* renamed from: z */
    public static final Charset f10956z = Charset.forName("UTF-16");

    /* renamed from: q */
    public final DataInputStream f10957q;

    /* renamed from: r */
    public final DataOutputStream f10958r;

    /* renamed from: s */
    public DataInputStream f10959s;

    /* renamed from: t */
    public DataOutputStream f10960t;

    /* renamed from: u */
    public b f10961u;

    /* renamed from: v */
    public boolean f10962v;

    /* renamed from: w */
    public int f10963w;

    /* renamed from: x */
    public int f10964x;

    /* renamed from: y */
    public int f10965y;

    /* renamed from: androidx.versionedparcelable.a$b */
    /* loaded from: classes3.dex */
    public static class b {

        /* renamed from: a */
        public final ByteArrayOutputStream f10967a;

        /* renamed from: b */
        public final DataOutputStream f10968b;

        /* renamed from: c */
        public final int f10969c;

        /* renamed from: d */
        public final DataOutputStream f10970d;

        public b(int i, DataOutputStream dataOutputStream) {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            this.f10967a = byteArrayOutputStream;
            this.f10968b = new DataOutputStream(byteArrayOutputStream);
            this.f10969c = i;
            this.f10970d = dataOutputStream;
        }

        /* renamed from: a */
        public void m6760a() throws IOException {
            this.f10968b.flush();
            int size = this.f10967a.size();
            this.f10970d.writeInt((this.f10969c << 16) | (size >= 65535 ? 65535 : size));
            if (size >= 65535) {
                this.f10970d.writeInt(size);
            }
            this.f10967a.writeTo(this.f10970d);
        }
    }

    public C1536a(InputStream inputStream, OutputStream outputStream) {
        this(inputStream, outputStream, new ArrayMap(), new ArrayMap(), new ArrayMap());
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public void closeField() {
        b bVar = this.f10961u;
        if (bVar != null) {
            try {
                if (bVar.f10967a.size() != 0) {
                    this.f10961u.m6760a();
                }
                this.f10961u = null;
            } catch (IOException e) {
                throw new VersionedParcel.ParcelException(e);
            }
        }
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public VersionedParcel createSubParcel() {
        return new C1536a(this.f10959s, this.f10960t, this.mReadCache, this.mWriteCache, this.mParcelizerCache);
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public boolean isStream() {
        return true;
    }

    /* renamed from: m */
    public final void m6758m(int i, String str, Bundle bundle) {
        switch (i) {
            case 0:
                bundle.putParcelable(str, null);
                return;
            case 1:
                bundle.putBundle(str, readBundle());
                return;
            case 2:
                bundle.putBundle(str, readBundle());
                return;
            case 3:
                bundle.putString(str, readString());
                return;
            case 4:
                bundle.putStringArray(str, (String[]) readArray(new String[0]));
                return;
            case 5:
                bundle.putBoolean(str, readBoolean());
                return;
            case 6:
                bundle.putBooleanArray(str, readBooleanArray());
                return;
            case 7:
                bundle.putDouble(str, readDouble());
                return;
            case 8:
                bundle.putDoubleArray(str, readDoubleArray());
                return;
            case 9:
                bundle.putInt(str, readInt());
                return;
            case 10:
                bundle.putIntArray(str, readIntArray());
                return;
            case 11:
                bundle.putLong(str, readLong());
                return;
            case 12:
                bundle.putLongArray(str, readLongArray());
                return;
            case 13:
                bundle.putFloat(str, readFloat());
                return;
            case 14:
                bundle.putFloatArray(str, readFloatArray());
                return;
            default:
                throw new RuntimeException("Unknown type " + i);
        }
    }

    /* renamed from: n */
    public final void m6759n(Object obj) {
        if (obj == null) {
            writeInt(0);
            return;
        }
        if (obj instanceof Bundle) {
            writeInt(1);
            writeBundle((Bundle) obj);
            return;
        }
        if (obj instanceof String) {
            writeInt(3);
            writeString((String) obj);
            return;
        }
        if (obj instanceof String[]) {
            writeInt(4);
            writeArray((String[]) obj);
            return;
        }
        if (obj instanceof Boolean) {
            writeInt(5);
            writeBoolean(((Boolean) obj).booleanValue());
            return;
        }
        if (obj instanceof boolean[]) {
            writeInt(6);
            writeBooleanArray((boolean[]) obj);
            return;
        }
        if (obj instanceof Double) {
            writeInt(7);
            writeDouble(((Double) obj).doubleValue());
            return;
        }
        if (obj instanceof double[]) {
            writeInt(8);
            writeDoubleArray((double[]) obj);
            return;
        }
        if (obj instanceof Integer) {
            writeInt(9);
            writeInt(((Integer) obj).intValue());
            return;
        }
        if (obj instanceof int[]) {
            writeInt(10);
            writeIntArray((int[]) obj);
            return;
        }
        if (obj instanceof Long) {
            writeInt(11);
            writeLong(((Long) obj).longValue());
            return;
        }
        if (obj instanceof long[]) {
            writeInt(12);
            writeLongArray((long[]) obj);
            return;
        }
        if (obj instanceof Float) {
            writeInt(13);
            writeFloat(((Float) obj).floatValue());
        } else if (obj instanceof float[]) {
            writeInt(14);
            writeFloatArray((float[]) obj);
        } else {
            throw new IllegalArgumentException("Unsupported type " + obj.getClass());
        }
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public boolean readBoolean() {
        try {
            return this.f10959s.readBoolean();
        } catch (IOException e) {
            throw new VersionedParcel.ParcelException(e);
        }
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public Bundle readBundle() {
        int readInt = readInt();
        if (readInt < 0) {
            return null;
        }
        Bundle bundle = new Bundle();
        for (int i = 0; i < readInt; i++) {
            m6758m(readInt(), readString(), bundle);
        }
        return bundle;
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public byte[] readByteArray() {
        try {
            int readInt = this.f10959s.readInt();
            if (readInt <= 0) {
                return null;
            }
            byte[] bArr = new byte[readInt];
            this.f10959s.readFully(bArr);
            return bArr;
        } catch (IOException e) {
            throw new VersionedParcel.ParcelException(e);
        }
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public CharSequence readCharSequence() {
        return null;
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public double readDouble() {
        try {
            return this.f10959s.readDouble();
        } catch (IOException e) {
            throw new VersionedParcel.ParcelException(e);
        }
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public boolean readField(int i) {
        while (true) {
            try {
                int i2 = this.f10964x;
                if (i2 == i) {
                    return true;
                }
                if (String.valueOf(i2).compareTo(String.valueOf(i)) > 0) {
                    return false;
                }
                if (this.f10963w < this.f10965y) {
                    this.f10957q.skip(r2 - r1);
                }
                this.f10965y = -1;
                int readInt = this.f10957q.readInt();
                this.f10963w = 0;
                int i3 = readInt & 65535;
                if (i3 == 65535) {
                    i3 = this.f10957q.readInt();
                }
                this.f10964x = (readInt >> 16) & 65535;
                this.f10965y = i3;
            } catch (IOException unused) {
                return false;
            }
        }
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public float readFloat() {
        try {
            return this.f10959s.readFloat();
        } catch (IOException e) {
            throw new VersionedParcel.ParcelException(e);
        }
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public int readInt() {
        try {
            return this.f10959s.readInt();
        } catch (IOException e) {
            throw new VersionedParcel.ParcelException(e);
        }
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public long readLong() {
        try {
            return this.f10959s.readLong();
        } catch (IOException e) {
            throw new VersionedParcel.ParcelException(e);
        }
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public <T extends Parcelable> T readParcelable() {
        return null;
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public String readString() {
        try {
            int readInt = this.f10959s.readInt();
            if (readInt <= 0) {
                return null;
            }
            byte[] bArr = new byte[readInt];
            this.f10959s.readFully(bArr);
            return new String(bArr, f10956z);
        } catch (IOException e) {
            throw new VersionedParcel.ParcelException(e);
        }
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public IBinder readStrongBinder() {
        return null;
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public void setOutputField(int i) {
        closeField();
        b bVar = new b(i, this.f10958r);
        this.f10961u = bVar;
        this.f10960t = bVar.f10968b;
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public void setSerializationFlags(boolean z, boolean z2) {
        if (!z) {
            throw new RuntimeException("Serialization of this object is not allowed");
        }
        this.f10962v = z2;
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public void writeBoolean(boolean z) {
        try {
            this.f10960t.writeBoolean(z);
        } catch (IOException e) {
            throw new VersionedParcel.ParcelException(e);
        }
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public void writeBundle(Bundle bundle) {
        try {
            if (bundle == null) {
                this.f10960t.writeInt(-1);
                return;
            }
            Set<String> keySet = bundle.keySet();
            this.f10960t.writeInt(keySet.size());
            for (String str : keySet) {
                writeString(str);
                m6759n(bundle.get(str));
            }
        } catch (IOException e) {
            throw new VersionedParcel.ParcelException(e);
        }
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public void writeByteArray(byte[] bArr) {
        try {
            if (bArr != null) {
                this.f10960t.writeInt(bArr.length);
                this.f10960t.write(bArr);
            } else {
                this.f10960t.writeInt(-1);
            }
        } catch (IOException e) {
            throw new VersionedParcel.ParcelException(e);
        }
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public void writeCharSequence(CharSequence charSequence) {
        if (!this.f10962v) {
            throw new RuntimeException("CharSequence cannot be written to an OutputStream");
        }
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public void writeDouble(double d) {
        try {
            this.f10960t.writeDouble(d);
        } catch (IOException e) {
            throw new VersionedParcel.ParcelException(e);
        }
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public void writeFloat(float f) {
        try {
            this.f10960t.writeFloat(f);
        } catch (IOException e) {
            throw new VersionedParcel.ParcelException(e);
        }
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public void writeInt(int i) {
        try {
            this.f10960t.writeInt(i);
        } catch (IOException e) {
            throw new VersionedParcel.ParcelException(e);
        }
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public void writeLong(long j) {
        try {
            this.f10960t.writeLong(j);
        } catch (IOException e) {
            throw new VersionedParcel.ParcelException(e);
        }
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public void writeParcelable(Parcelable parcelable) {
        if (!this.f10962v) {
            throw new RuntimeException("Parcelables cannot be written to an OutputStream");
        }
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public void writeString(String str) {
        try {
            if (str != null) {
                byte[] bytes = str.getBytes(f10956z);
                this.f10960t.writeInt(bytes.length);
                this.f10960t.write(bytes);
            } else {
                this.f10960t.writeInt(-1);
            }
        } catch (IOException e) {
            throw new VersionedParcel.ParcelException(e);
        }
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public void writeStrongBinder(IBinder iBinder) {
        if (!this.f10962v) {
            throw new RuntimeException("Binders cannot be written to an OutputStream");
        }
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public void writeStrongInterface(IInterface iInterface) {
        if (!this.f10962v) {
            throw new RuntimeException("Binders cannot be written to an OutputStream");
        }
    }

    public C1536a(InputStream inputStream, OutputStream outputStream, ArrayMap<String, Method> arrayMap, ArrayMap<String, Method> arrayMap2, ArrayMap<String, Class> arrayMap3) {
        super(arrayMap, arrayMap2, arrayMap3);
        this.f10963w = 0;
        this.f10964x = -1;
        this.f10965y = -1;
        DataInputStream dataInputStream = inputStream != null ? new DataInputStream(new a(inputStream)) : null;
        this.f10957q = dataInputStream;
        DataOutputStream dataOutputStream = outputStream != null ? new DataOutputStream(outputStream) : null;
        this.f10958r = dataOutputStream;
        this.f10959s = dataInputStream;
        this.f10960t = dataOutputStream;
    }

    /* renamed from: androidx.versionedparcelable.a$a */
    /* loaded from: classes3.dex */
    public class a extends FilterInputStream {
        public a(InputStream inputStream) {
            super(inputStream);
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public int read() throws IOException {
            C1536a c1536a = C1536a.this;
            int i = c1536a.f10965y;
            if (i != -1 && c1536a.f10963w >= i) {
                throw new IOException();
            }
            int read = super.read();
            C1536a.this.f10963w++;
            return read;
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public long skip(long j) throws IOException {
            C1536a c1536a = C1536a.this;
            int i = c1536a.f10965y;
            if (i != -1 && c1536a.f10963w >= i) {
                throw new IOException();
            }
            long skip = super.skip(j);
            if (skip > 0) {
                C1536a.this.f10963w += (int) skip;
            }
            return skip;
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public int read(byte[] bArr, int i, int i2) throws IOException {
            C1536a c1536a = C1536a.this;
            int i3 = c1536a.f10965y;
            if (i3 != -1 && c1536a.f10963w >= i3) {
                throw new IOException();
            }
            int read = super.read(bArr, i, i2);
            if (read > 0) {
                C1536a.this.f10963w += read;
            }
            return read;
        }
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public void writeByteArray(byte[] bArr, int i, int i2) {
        try {
            if (bArr != null) {
                this.f10960t.writeInt(i2);
                this.f10960t.write(bArr, i, i2);
            } else {
                this.f10960t.writeInt(-1);
            }
        } catch (IOException e) {
            throw new VersionedParcel.ParcelException(e);
        }
    }
}
