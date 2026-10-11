package com.onyx.android.sdk.data.utils;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.Charsets;
import kotlin.text.StringsKt__StringsJVMKt;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0010\u0012\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u000bJ\u0010\u0010\r\u001a\u00020\u000e*\b\u0012\u0004\u0012\u00020\u00100\u000fR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0011"}, m61528d2 = {"Lcom/onyx/android/sdk/data/utils/OnyxEncryptUtils;", "", "()V", "algorithmBlockSize", "", "chunkBlockSize", "chunkDataSize", "chunkIndexSize", "keySize", "paddingBlockSize", "decryptConfigJson", "", "packet", "merge", "Ljava/nio/ByteBuffer;", "", "", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nOnyxEncryptUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OnyxEncryptUtils.kt\ncom/onyx/android/sdk/data/utils/OnyxEncryptUtils\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,70:1\n1#2:71\n1855#3,2:72\n*S KotlinDebug\n*F\n+ 1 OnyxEncryptUtils.kt\ncom/onyx/android/sdk/data/utils/OnyxEncryptUtils\n*L\n65#1:72,2\n*E\n"})
/* loaded from: classes7.dex */
public final class OnyxEncryptUtils {

    @NotNull
    public static final OnyxEncryptUtils INSTANCE = new OnyxEncryptUtils();
    private static final int algorithmBlockSize = 1;
    private static final int chunkBlockSize = 36;
    private static final int chunkDataSize = 32;
    private static final int chunkIndexSize = 4;
    private static final int keySize = 32;
    private static final int paddingBlockSize = 4;

    private OnyxEncryptUtils() {
    }

    @NotNull
    public final String decryptConfigJson(@NotNull String packet) {
        Intrinsics.checkNotNullParameter(packet, "packet");
        byte[] bArr = AESEncryptUtils.INSTANCE.toByte(packet);
        ByteBuffer wrap = ByteBuffer.wrap(bArr);
        int length = bArr.length;
        byte[] bArr2 = new byte[4];
        wrap.get(bArr2);
        int i = ByteBuffer.wrap(bArr2).order(ByteOrder.LITTLE_ENDIAN).getInt();
        wrap.get(length - 1);
        int i2 = ((length - 4) - 1) / 36;
        ArrayList arrayList = new ArrayList(i2);
        int i3 = 0;
        for (int i4 = 0; i4 < i2; i4++) {
            arrayList.add(new byte[0]);
        }
        while (true) {
            int i5 = 32;
            if (i3 >= i2) {
                ByteBuffer merge = merge(arrayList);
                byte[] bArr3 = new byte[32];
                merge.get(bArr3);
                StringsKt__StringsJVMKt.decodeToString(bArr3);
                byte[] bArr4 = new byte[merge.remaining()];
                merge.get(bArr4);
                return new String(AESEncryptUtils.INSTANCE.decryptWithCBC(bArr3, bArr4), Charsets.UTF_8);
            }
            wrap.position((i3 * 36) + 4);
            byte[] bArr5 = new byte[4];
            wrap.get(bArr5);
            int i6 = ByteBuffer.wrap(bArr5).order(ByteOrder.LITTLE_ENDIAN).getInt();
            if (i6 == i2 - 1) {
                i5 = 32 - i;
            }
            byte[] bArr6 = new byte[i5];
            ByteBuffer slice = wrap.slice();
            slice.limit(i5);
            slice.get(bArr6);
            arrayList.set(i6, bArr6);
            i3++;
        }
    }

    @NotNull
    public final ByteBuffer merge(@NotNull List<byte[]> list) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        List<byte[]> list2 = list;
        Iterator<T> it2 = list2.iterator();
        int i = 0;
        while (it2.hasNext()) {
            i += ((byte[]) it2.next()).length;
        }
        ByteBuffer allocate = ByteBuffer.allocate(i);
        Iterator<T> it3 = list2.iterator();
        while (it3.hasNext()) {
            allocate.put((byte[]) it3.next());
        }
        allocate.flip();
        Intrinsics.checkNotNull(allocate);
        return allocate;
    }
}
