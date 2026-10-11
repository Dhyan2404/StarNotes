package com.sunia.HTREnginev2;

import android.text.TextUtils;
import java.util.regex.Pattern;

/* renamed from: com.sunia.HTREnginev2.o1 */
/* loaded from: classes10.dex */
public class C14164o1 {

    /* renamed from: a */
    public static final Pattern f79206a = Pattern.compile("^.*[\\p{Ll}\\p{Lt}\\p{Lu}\\p{Lo}\\p{Mn}\\p{Mc}&&[^\\p{Script=Bopomofo}\\p{Script=Han}\\p{Script=Hiragana}\\p{Script=Katakana}\\p{Script=Khmer}\\p{Script=Lao}\\p{Script=Myanmar}\\p{Script=Thai}\\p{Script=Yi}\\p{Script=Tai_Le}\\p{Script=New_Tai_Lue}\\p{Script=Tai_Viet}\\p{Script=Tai_Tham}]]$");

    /* renamed from: b */
    public static final Pattern f79207b = Pattern.compile("^[\\p{Ll}\\p{Lt}\\p{Lu}\\p{Lo}\\p{Mn}\\p{Mc}&&[^\\p{Script=Bopomofo}\\p{Script=Han}\\p{Script=Hiragana}\\p{Script=Katakana}\\p{Script=Khmer}\\p{Script=Lao}\\p{Script=Myanmar}\\p{Script=Thai}\\p{Script=Yi}\\p{Script=Tai_Le}\\p{Script=New_Tai_Lue}\\p{Script=Tai_Viet}\\p{Script=Tai_Tham}]].*$");

    /* renamed from: a */
    public static boolean m55882a(Object obj) {
        return obj == null;
    }

    /* renamed from: a */
    public static boolean m55883a(String str) {
        return TextUtils.isEmpty(str);
    }
}
