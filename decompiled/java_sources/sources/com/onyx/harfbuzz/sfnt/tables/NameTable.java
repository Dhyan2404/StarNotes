package com.onyx.harfbuzz.sfnt.tables;

import androidx.annotation.Keep;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.onyx.harfbuzz.graphics.HBTypeface;
import com.onyx.harfbuzz.internal.Description;
import java.nio.charset.Charset;
import java.nio.charset.IllegalCharsetNameException;
import java.nio.charset.UnsupportedCharsetException;
import java.util.Arrays;
import java.util.Locale;

/* loaded from: classes9.dex */
public final class NameTable {

    /* renamed from: a */
    @NonNull
    public final HBTypeface f62879a;

    public NameTable(@NonNull HBTypeface hBTypeface) {
        if (hBTypeface == null) {
            throw new NullPointerException("Typeface is null");
        }
        this.f62879a = hBTypeface;
    }

    @Nullable
    public static NameTable from(@NonNull HBTypeface hBTypeface) {
        return new NameTable(hBTypeface);
    }

    @NonNull
    public Record recordAt(int i) {
        if (i >= 0 && i < recordCount()) {
            return SfntTables.getNameRecord(this.f62879a, i);
        }
        throw new IndexOutOfBoundsException("Index: " + i);
    }

    public int recordCount() {
        return SfntTables.getNameCount(this.f62879a);
    }

    /* loaded from: classes9.dex */
    public static class Record {
        public byte[] bytes;
        public int encodingId;
        public int languageId;
        public int nameId;
        public int platformId;

        @Keep
        public Record(int i, int i2, int i3, int i4, byte[] bArr) {
            this.nameId = i;
            this.platformId = i2;
            this.languageId = i3;
            this.encodingId = i4;
            this.bytes = bArr;
        }

        @Nullable
        public Charset charset() {
            try {
                String nameCharset = SfntTables.getNameCharset(this.platformId, this.encodingId);
                if (nameCharset != null) {
                    return Charset.forName(nameCharset);
                }
                return null;
            } catch (IllegalCharsetNameException | UnsupportedCharsetException unused) {
                return null;
            }
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            Record record = (Record) obj;
            return this.nameId == record.nameId && this.platformId == record.platformId && this.languageId == record.languageId && this.encodingId == record.encodingId && Arrays.equals(this.bytes, record.bytes);
        }

        public int hashCode() {
            return (((((((this.nameId * 31) + this.platformId) * 31) + this.languageId) * 31) + this.encodingId) * 31) + Arrays.hashCode(this.bytes);
        }

        @NonNull
        public Locale locale() {
            String[] nameLocale = SfntTables.getNameLocale(this.platformId, this.languageId);
            String str = nameLocale[0];
            String str2 = nameLocale[1];
            String str3 = nameLocale[2];
            String str4 = nameLocale[3];
            Locale.Builder builder = new Locale.Builder();
            builder.setLanguage(str);
            builder.setRegion(str2);
            builder.setScript(str3);
            builder.setVariant(str4);
            return builder.build();
        }

        @Nullable
        @Keep
        public String string() {
            byte[] bArr;
            Charset charset = charset();
            if (charset == null || (bArr = this.bytes) == null) {
                return null;
            }
            return new String(bArr, charset);
        }

        public String toString() {
            Charset charset = charset();
            StringBuilder sb = new StringBuilder();
            sb.append("NameTable.Record{nameId=");
            sb.append(this.nameId);
            sb.append(", platformId=");
            sb.append(this.platformId);
            sb.append(", languageId=");
            sb.append(this.languageId);
            sb.append(", encodingId=");
            sb.append(this.encodingId);
            sb.append(", bytes=");
            sb.append(Description.forByteArray(this.bytes));
            sb.append(", locale=");
            sb.append(locale().toString());
            sb.append(", charset=");
            sb.append(charset != null ? charset.name() : null);
            sb.append(", string=");
            sb.append(string());
            sb.append('}');
            return sb.toString();
        }

        public Record() {
        }
    }
}
