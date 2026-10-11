package com.onyx.android.sdk.replicator.note.p035db.model.extenstion;

import androidx.credentials.provider.utils.PrivilegedApp;
import com.onyx.android.sdk.base.utils.OptionsRepo;
import com.onyx.android.sdk.data.utils.JSONUtils;
import com.onyx.android.sdk.replicator.note.data.excerpt.ExcerptInfoBean;
import com.onyx.android.sdk.replicator.note.p035db.model.ShapeModel;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000(\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\u001a8\u0010\u0007\u001a\u0004\u0018\u00018\u0000\"\n\b\u0000\u0010\u0001\u0018\u0001*\u00020\u0000*\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u00032\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00000\u0005H\u0086\b¢\u0006\u0004\b\u0007\u0010\b\u001a+\u0010\u000b\u001a\u00020\n\"\b\b\u0000\u0010\u0001*\u00020\u0000*\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\t\u001a\u00028\u0000¢\u0006\u0004\b\u000b\u0010\f\u001a\f\u0010\u000e\u001a\u0004\u0018\u00010\r*\u00020\u0002\u001a\u0012\u0010\u0010\u001a\u00020\n*\u00020\u00022\u0006\u0010\u000f\u001a\u00020\r\"\u0014\u0010\u0013\u001a\u00020\u00038\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012¨\u0006\u0014"}, m61528d2 = {"", "T", "Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;", "", "key", "Ljava/lang/Class;", "cls", "getPersistObject", "(Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;", "value", "", "putPersistObject", "(Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;Ljava/lang/String;Ljava/lang/Object;)V", "Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;", "getExcerptInfoBean", PrivilegedApp.f6532i, "setExcerptInfoBean", "a", Constants.STRING_SIG, "KEY_EXCERPT_INFO", "sdk-replicator_overseasRelease"}, m61529k = 2, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nShapeModelOptions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShapeModelOptions.kt\ncom/onyx/android/sdk/replicator/note/db/model/extenstion/ShapeModelOptionsKt\n*L\n1#1,47:1\n18#1,6:48\n*S KotlinDebug\n*F\n+ 1 ShapeModelOptions.kt\ncom/onyx/android/sdk/replicator/note/db/model/extenstion/ShapeModelOptionsKt\n*L\n35#1:48,6\n*E\n"})
/* loaded from: classes8.dex */
public final class ShapeModelOptionsKt {

    /* renamed from: a */
    @NotNull
    public static final String f45520a = "KEY_EXCERPT_INFO";

    /* JADX WARN: Removed duplicated region for block: B:12:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:6:0x003a  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final com.onyx.android.sdk.replicator.note.data.excerpt.ExcerptInfoBean getExcerptInfoBean(@org.jetbrains.annotations.NotNull com.onyx.android.sdk.replicator.note.p035db.model.ShapeModel r10) {
        /*
            java.lang.String r0 = "<this>"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r10, r0)
            java.lang.String r0 = r10.getUniqueId()
            long r1 = r10.getCreatedAt()
            long r3 = r10.getUpdatedAt()
            com.onyx.android.sdk.base.utils.OptionsRepo r5 = r10.getOptions()
            java.lang.String r6 = ""
            r7 = 0
            if (r5 != 0) goto L1c
        L1a:
            r5 = r7
            goto L36
        L1c:
            java.lang.String r8 = "KEY_EXCERPT_INFO"
            java.lang.String r5 = r5.getString(r8, r6)
            int r8 = r5.length()
            if (r8 != 0) goto L2a
            r8 = 1
            goto L2b
        L2a:
            r8 = 0
        L2b:
            if (r8 == 0) goto L2e
            goto L1a
        L2e:
            com.onyx.android.sdk.data.utils.JSONUtils r8 = com.onyx.android.sdk.data.utils.JSONUtils.INSTANCE
            java.lang.Class<com.onyx.android.sdk.replicator.note.data.excerpt.ExcerptInfoBean> r9 = com.onyx.android.sdk.replicator.note.data.excerpt.ExcerptInfoBean.class
            java.lang.Object r5 = r8.parseObject(r5, r9)
        L36:
            com.onyx.android.sdk.replicator.note.data.excerpt.ExcerptInfoBean r5 = (com.onyx.android.sdk.replicator.note.data.excerpt.ExcerptInfoBean) r5
            if (r5 == 0) goto L4f
            java.lang.String r10 = r10.getPageUniqueId()
            if (r10 != 0) goto L41
            goto L42
        L41:
            r6 = r10
        L42:
            r5.setPageUniqueId(r6)
            r5.setUniqueId(r0)
            r5.setCreatedAt(r1)
            r5.setUpdatedAt(r3)
            r7 = r5
        L4f:
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.replicator.note.p035db.model.extenstion.ShapeModelOptionsKt.getExcerptInfoBean(com.onyx.android.sdk.replicator.note.db.model.ShapeModel):com.onyx.android.sdk.replicator.note.data.excerpt.ExcerptInfoBean");
    }

    public static final /* synthetic */ <T> T getPersistObject(ShapeModel shapeModel, String key, Class<T> cls) {
        Intrinsics.checkNotNullParameter(shapeModel, "<this>");
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(cls, "cls");
        OptionsRepo options = shapeModel.getOptions();
        if (options == null) {
            return null;
        }
        String string = options.getString(key, "");
        if (string.length() == 0) {
            return null;
        }
        return (T) JSONUtils.INSTANCE.parseObject(string, cls);
    }

    public static final <T> void putPersistObject(@NotNull ShapeModel shapeModel, @NotNull String key, @NotNull T value) {
        Intrinsics.checkNotNullParameter(shapeModel, "<this>");
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(value, "value");
        OptionsRepo options = shapeModel.getOptions();
        if (options != null) {
            String jSONString = JSONUtils.INSTANCE.toJSONString(value);
            if (jSONString == null) {
                jSONString = "";
            }
            options.putString(key, jSONString);
        }
    }

    public static final void setExcerptInfoBean(@NotNull ShapeModel shapeModel, @NotNull ExcerptInfoBean info) {
        Intrinsics.checkNotNullParameter(shapeModel, "<this>");
        Intrinsics.checkNotNullParameter(info, "info");
        info.setUniqueId(shapeModel.getUniqueId());
        putPersistObject(shapeModel, "KEY_EXCERPT_INFO", info);
    }
}
