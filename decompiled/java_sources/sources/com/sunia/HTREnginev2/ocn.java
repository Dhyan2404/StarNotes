package com.sunia.HTREnginev2;

import com.google.protobuf.ByteString;

/* loaded from: classes6.dex */
public final class ocn {

    /* renamed from: com.sunia.HTREnginev2.ocn$a */
    /* loaded from: classes6.dex */
    public class C14179a implements InterfaceC14181c {

        /* renamed from: a */
        public final /* synthetic */ ByteString f79576a;

        public C14179a(final ByteString val$input) {
            this.f79576a = val$input;
        }

        @Override // com.sunia.HTREnginev2.ocn.InterfaceC14181c
        /* renamed from: a */
        public byte mo55939a(int offset) {
            return this.f79576a.byteAt(offset);
        }

        @Override // com.sunia.HTREnginev2.ocn.InterfaceC14181c
        public int size() {
            return this.f79576a.size();
        }
    }

    /* renamed from: com.sunia.HTREnginev2.ocn$b */
    /* loaded from: classes6.dex */
    public class C14180b implements InterfaceC14181c {

        /* renamed from: a */
        public final /* synthetic */ byte[] f79577a;

        public C14180b(final byte[] val$input) {
            this.f79577a = val$input;
        }

        @Override // com.sunia.HTREnginev2.ocn.InterfaceC14181c
        /* renamed from: a */
        public byte mo55939a(int offset) {
            return this.f79577a[offset];
        }

        @Override // com.sunia.HTREnginev2.ocn.InterfaceC14181c
        public int size() {
            return this.f79577a.length;
        }
    }

    /* renamed from: com.sunia.HTREnginev2.ocn$c */
    /* loaded from: classes6.dex */
    public interface InterfaceC14181c {
        /* renamed from: a */
        byte mo55939a(int offset);

        int size();
    }

    /* renamed from: a */
    public static String m55934a(final ByteString input) {
        return m55935b(new C14179a(input));
    }

    /* renamed from: b */
    public static String m55935b(InterfaceC14181c input) {
        StringBuilder sb = new StringBuilder(input.size());
        for (int i = 0; i < input.size(); i++) {
            byte mo55939a = input.mo55939a(i);
            if (mo55939a == 34) {
                sb.append("\\\"");
            } else if (mo55939a == 39) {
                sb.append("\\'");
            } else if (mo55939a != 92) {
                switch (mo55939a) {
                    case 7:
                        sb.append("\\a");
                        break;
                    case 8:
                        sb.append("\\b");
                        break;
                    case 9:
                        sb.append("\\t");
                        break;
                    case 10:
                        sb.append("\\n");
                        break;
                    case 11:
                        sb.append("\\v");
                        break;
                    case 12:
                        sb.append("\\f");
                        break;
                    case 13:
                        sb.append("\\r");
                        break;
                    default:
                        if (mo55939a < 32 || mo55939a > 126) {
                            sb.append('\\');
                            sb.append((char) (((mo55939a >>> 6) & 3) + 48));
                            sb.append((char) (((mo55939a >>> 3) & 7) + 48));
                            sb.append((char) ((mo55939a & 7) + 48));
                            break;
                        } else {
                            sb.append((char) mo55939a);
                            break;
                        }
                        break;
                }
            } else {
                sb.append("\\\\");
            }
        }
        return sb.toString();
    }

    /* renamed from: c */
    public static String m55936c(final byte[] input) {
        return m55935b(new C14180b(input));
    }

    /* renamed from: d */
    public static String m55937d(String input) {
        return input.replace("\\", "\\\\").replace("\"", "\\\"");
    }

    /* renamed from: e */
    public static String m55938e(String input) {
        return m55934a(ByteString.copyFromUtf8(input));
    }
}
