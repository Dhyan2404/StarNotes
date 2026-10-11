package com.google.android.gms.internal.mlkit_vision_text_bundled_common;

/* loaded from: classes5.dex */
final class zbwj {
    public static String zba(zbtc zbtcVar) {
        StringBuilder sb = new StringBuilder(zbtcVar.zbd());
        for (int i = 0; i < zbtcVar.zbd(); i++) {
            byte zba = zbtcVar.zba(i);
            if (zba == 34) {
                sb.append("\\\"");
            } else if (zba == 39) {
                sb.append("\\'");
            } else if (zba != 92) {
                switch (zba) {
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
                        if (zba < 32 || zba > 126) {
                            sb.append('\\');
                            sb.append((char) (((zba >>> 6) & 3) + 48));
                            sb.append((char) (((zba >>> 3) & 7) + 48));
                            sb.append((char) ((zba & 7) + 48));
                            break;
                        } else {
                            sb.append((char) zba);
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
}
