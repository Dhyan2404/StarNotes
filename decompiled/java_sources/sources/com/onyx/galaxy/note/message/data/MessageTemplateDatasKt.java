package com.onyx.galaxy.note.message.data;

import com.onyx.android.sdk.data.common.data.MessageTemplate;
import com.onyx.android.sdk.data.common.data.MessageTemplateSet;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002¨\u0006\u0003"}, m61528d2 = {"convertToLocal", "Lcom/onyx/android/sdk/data/common/data/MessageTemplateSet;", "Lcom/onyx/galaxy/note/message/data/GetMessageTemplatesResponse;", "note_overseasRelease"}, m61529k = 2, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nMessageTemplateDatas.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MessageTemplateDatas.kt\ncom/onyx/galaxy/note/message/data/MessageTemplateDatasKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,17:1\n1855#2,2:18\n*S KotlinDebug\n*F\n+ 1 MessageTemplateDatas.kt\ncom/onyx/galaxy/note/message/data/MessageTemplateDatasKt\n*L\n12#1:18,2\n*E\n"})
/* loaded from: classes9.dex */
public final class MessageTemplateDatasKt {
    @NotNull
    public static final MessageTemplateSet convertToLocal(@NotNull GetMessageTemplatesResponse getMessageTemplatesResponse) {
        Intrinsics.checkNotNullParameter(getMessageTemplatesResponse, "<this>");
        MessageTemplateSet messageTemplateSet = new MessageTemplateSet();
        List<? extends MessageTemplate> data = getMessageTemplatesResponse.getData();
        if (data != null) {
            for (MessageTemplate messageTemplate : data) {
                String str = (String) messageTemplate.get((Object) "key");
                if (str == null) {
                    str = "";
                }
                messageTemplateSet.put(str, messageTemplate);
            }
        }
        return messageTemplateSet;
    }
}
