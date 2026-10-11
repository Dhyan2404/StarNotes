package kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization;

import com.couchbase.lite.internal.BaseTLSIdentity;
import com.couchbase.lite.internal.core.C4Constants;
import com.google.android.exoplayer2.source.dash.manifest.UrlTemplate;
import com.google.protobuf.C6883t;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.thegrizzlylabs.sardineandroid.util.SardineUtil;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.internal.ProgressionUtilKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import org.apache.xmlbeans.impl.schema.SoapEncSchemaTypeSystem;
import org.jetbrains.annotations.NotNull;

/* loaded from: classes11.dex */
public final class ClassMapperLite {

    @NotNull
    public static final ClassMapperLite INSTANCE = new ClassMapperLite();

    /* renamed from: kotlin, reason: collision with root package name */
    @NotNull
    private static final String f116571kotlin;

    @NotNull
    private static final Map<String, String> map;

    static {
        List listOf;
        String joinToString$default;
        List listOf2;
        List<String> listOf3;
        List<String> listOf4;
        List<String> listOf5;
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new Character[]{'k', 'o', 't', 'l', 'i', 'n'});
        joinToString$default = CollectionsKt___CollectionsKt.joinToString$default(listOf, "", null, null, 0, null, null, 62, null);
        f116571kotlin = joinToString$default;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        listOf2 = CollectionsKt__CollectionsKt.listOf((Object[]) new String[]{"Boolean", Constants.HASIDCALL_INDEX_SIG, "Char", BaseTLSIdentity.CERT_ATTRIBUTE_COUNTRY, "Byte", "B", "Short", "S", "Int", "I", "Float", "F", "Long", "J", "Double", SardineUtil.DEFAULT_NAMESPACE_PREFIX});
        int progressionLastElement = ProgressionUtilKt.getProgressionLastElement(0, listOf2.size() - 1, 2);
        if (progressionLastElement >= 0) {
            int i = 0;
            while (true) {
                StringBuilder sb = new StringBuilder();
                String str = f116571kotlin;
                sb.append(str);
                sb.append('/');
                sb.append((String) listOf2.get(i));
                int i2 = i + 1;
                linkedHashMap.put(sb.toString(), listOf2.get(i2));
                linkedHashMap.put(str + '/' + ((String) listOf2.get(i)) + SoapEncSchemaTypeSystem.SOAP_ARRAY, '[' + ((String) listOf2.get(i2)));
                if (i == progressionLastElement) {
                    break;
                } else {
                    i += 2;
                }
            }
        }
        linkedHashMap.put(f116571kotlin + "/Unit", "V");
        map$lambda$0$add(linkedHashMap, "Any", "java/lang/Object");
        map$lambda$0$add(linkedHashMap, "Nothing", "java/lang/Void");
        map$lambda$0$add(linkedHashMap, "Annotation", "java/lang/annotation/Annotation");
        listOf3 = CollectionsKt__CollectionsKt.listOf((Object[]) new String[]{"String", "CharSequence", "Throwable", "Cloneable", UrlTemplate.f25861f, "Comparable", C4Constants.LogDomain.ENUM});
        for (String str2 : listOf3) {
            map$lambda$0$add(linkedHashMap, str2, "java/lang/" + str2);
        }
        listOf4 = CollectionsKt__CollectionsKt.listOf((Object[]) new String[]{"Iterator", "Collection", C6883t.f38147a, "Set", C6883t.f38149c, "ListIterator"});
        for (String str3 : listOf4) {
            map$lambda$0$add(linkedHashMap, "collections/" + str3, "java/util/" + str3);
            map$lambda$0$add(linkedHashMap, "collections/Mutable" + str3, "java/util/" + str3);
        }
        map$lambda$0$add(linkedHashMap, "collections/Iterable", "java/lang/Iterable");
        map$lambda$0$add(linkedHashMap, "collections/MutableIterable", "java/lang/Iterable");
        map$lambda$0$add(linkedHashMap, "collections/Map.Entry", "java/util/Map$Entry");
        map$lambda$0$add(linkedHashMap, "collections/MutableMap.MutableEntry", "java/util/Map$Entry");
        for (int i3 = 0; i3 < 23; i3++) {
            StringBuilder sb2 = new StringBuilder();
            String str4 = f116571kotlin;
            sb2.append(str4);
            sb2.append("/jvm/functions/Function");
            sb2.append(i3);
            map$lambda$0$add(linkedHashMap, "Function" + i3, sb2.toString());
            map$lambda$0$add(linkedHashMap, "reflect/KFunction" + i3, str4 + "/reflect/KFunction");
        }
        listOf5 = CollectionsKt__CollectionsKt.listOf((Object[]) new String[]{"Char", "Byte", "Short", "Int", "Float", "Long", "Double", "String", C4Constants.LogDomain.ENUM});
        for (String str5 : listOf5) {
            map$lambda$0$add(linkedHashMap, str5 + ".Companion", f116571kotlin + "/jvm/internal/" + str5 + "CompanionObject");
        }
        map = linkedHashMap;
    }

    private ClassMapperLite() {
    }

    private static final void map$lambda$0$add(Map<String, String> map2, String str, String str2) {
        map2.put(f116571kotlin + '/' + str, 'L' + str2 + ';');
    }

    @JvmStatic
    @NotNull
    public static final String mapClass(@NotNull String classId) {
        String replace$default;
        Intrinsics.checkNotNullParameter(classId, "classId");
        String str = map.get(classId);
        if (str != null) {
            return str;
        }
        StringBuilder sb = new StringBuilder();
        sb.append('L');
        replace$default = StringsKt__StringsJVMKt.replace$default(classId, '.', '$', false, 4, (Object) null);
        sb.append(replace$default);
        sb.append(';');
        return sb.toString();
    }
}
