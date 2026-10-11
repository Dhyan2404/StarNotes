.class public final Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNeoPdfJniWrapper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NeoPdfJniWrapper.kt\ncom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,844:1\n37#2,2:845\n37#2,2:847\n37#2,2:849\n1855#3,2:851\n1855#3,2:853\n1855#3,2:855\n1#4:857\n*S KotlinDebug\n*F\n+ 1 NeoPdfJniWrapper.kt\ncom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper\n*L\n169#1:845,2\n170#1:847,2\n171#1:849,2\n219#1:851,2\n310#1:853,2\n326#1:855,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00a8\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0002\u0008\u0010\n\u0002\u0010 \n\u0000\n\u0002\u0010\u0014\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0010\u0015\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010!\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\r\u0018\u0000 \u00d5\u00012\u00020\u0001:\u0002\u00d5\u0001B\t\u00a2\u0006\u0006\u0008\u00d3\u0001\u0010\u00d4\u0001J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0018\u0010\t\u001a\u00020\u00082\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u0010\u0010\u000c\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\nH\u0002J\u0010\u0010\r\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\nH\u0002J\u0008\u0010\u000e\u001a\u00020\u0008H\u0002J\n\u0010\u000f\u001a\u0004\u0018\u00010\nH\u0002J\u0012\u0010\u0013\u001a\u00020\u00122\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0010H\u0002J\u001a\u0010\u0017\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u00142\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u0004H\u0002J\u0010\u0010\u0018\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u0014H\u0002J\u0010\u0010\u0019\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u0014H\u0002J\u0010\u0010\u001b\u001a\u00020\u00082\u0006\u0010\u001a\u001a\u00020\u0012H\u0002J\u000e\u0010\u001e\u001a\u00020\u00082\u0006\u0010\u001d\u001a\u00020\u001cJ\u0016\u0010\"\u001a\u00020!2\u0006\u0010\u001f\u001a\u00020\u00102\u0006\u0010 \u001a\u00020\u0010J\u0006\u0010#\u001a\u00020\u0004J\u0006\u0010$\u001a\u00020\u0004J\u0006\u0010%\u001a\u00020\u0010J\u0006\u0010&\u001a\u00020\u0004J\u0006\u0010\'\u001a\u00020\u0010J\u0006\u0010(\u001a\u00020\u0004J\u0006\u0010)\u001a\u00020\u0004J\u0006\u0010*\u001a\u00020\u0004J\u0006\u0010+\u001a\u00020\u0008J\u000e\u0010-\u001a\u00020\u00042\u0006\u0010,\u001a\u00020\u0012J\u0006\u0010.\u001a\u00020\u0008J\u0010\u00100\u001a\u00020\u00102\u0008\u0010/\u001a\u0004\u0018\u00010\u0010J\u0006\u00101\u001a\u00020\u0012J\u000c\u00103\u001a\u0008\u0012\u0004\u0012\u00020\u001002J\u0016\u00106\u001a\u00020\u00042\u0006\u0010,\u001a\u00020\u00122\u0006\u00105\u001a\u000204J\u0010\u00108\u001a\u0004\u0018\u0001072\u0006\u0010,\u001a\u00020\u0012J\u000e\u0010;\u001a\u00020\u00082\u0006\u0010:\u001a\u000209J\u000e\u0010>\u001a\u00020\u00082\u0006\u0010=\u001a\u00020<J\u000e\u0010A\u001a\u00020\u00042\u0006\u0010@\u001a\u00020?JN\u0010J\u001a\u00020\u00122\u0006\u0010,\u001a\u00020\u00122\u0006\u0010B\u001a\u00020\u00122\u0006\u0010C\u001a\u00020\u00122\u0006\u0010D\u001a\u00020\u00122\u0006\u0010E\u001a\u00020\u00122\u0006\u0010F\u001a\u00020\u00122\u0006\u0010G\u001a\u00020\u00122\u0006\u0010H\u001a\u00020\u00122\u0006\u0010J\u001a\u00020IJd\u0010Q\u001a\u00020\u00082\u0006\u0010,\u001a\u00020\u00122\u0006\u0010B\u001a\u00020\u00122\u0006\u0010C\u001a\u00020\u00122\u0006\u0010D\u001a\u00020\u00122\u0006\u0010E\u001a\u00020\u00122\u0006\u0010F\u001a\u00020\u00122\u0006\u0010K\u001a\u00020\u00102\u0006\u0010L\u001a\u00020\u00042\u0006\u0010M\u001a\u00020\u00042\u0006\u0010N\u001a\u00020\u00122\u000c\u0010P\u001a\u0008\u0012\u0004\u0012\u00020I0OJ\u000e\u0010R\u001a\u00020\u00042\u0006\u0010,\u001a\u00020\u0012J\u000e\u0010S\u001a\u00020\u00042\u0006\u0010,\u001a\u00020\u0012J\u000e\u0010T\u001a\u00020\u00102\u0006\u0010,\u001a\u00020\u0012J\u000e\u0010U\u001a\u00020\u00042\u0006\u0010,\u001a\u00020\u0012J\u000e\u0010V\u001a\u00020\u00042\u0006\u0010,\u001a\u00020\u0012J\u0018\u0010Y\u001a\u0004\u0018\u00010X2\u0006\u0010,\u001a\u00020\u00122\u0006\u0010W\u001a\u00020\u0012J\u000e\u0010Z\u001a\u00020\u00102\u0006\u0010,\u001a\u00020\u0012J\u000e\u0010[\u001a\u00020\u00102\u0006\u0010\u001a\u001a\u00020\u0012J\u000e\u0010\\\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006J\u000e\u0010^\u001a\u00020\u00082\u0006\u0010]\u001a\u00020\u0006J\u001c\u0010_\u001a\u00020\u00042\u0006\u0010\u001a\u001a\u00020\u00122\u000c\u0010P\u001a\u0008\u0012\u0004\u0012\u00020I0OJ\u000e\u0010a\u001a\u00020\u00122\u0006\u0010`\u001a\u00020IJ\u000e\u0010c\u001a\u00020b2\u0006\u0010`\u001a\u00020IJ\u000e\u0010d\u001a\u00020\u00102\u0006\u0010`\u001a\u00020IJ1\u0010h\u001a\u00020\u00042\u0006\u0010,\u001a\u00020\u00122\u000c\u0010P\u001a\u0008\u0012\u0004\u0012\u00020e0O2\u000c\u0010g\u001a\u0008\u0012\u0004\u0012\u00020\u00100f\u00a2\u0006\u0004\u0008h\u0010iJ\u000e\u0010l\u001a\u00020\u00042\u0006\u0010k\u001a\u00020jJ\u000e\u0010n\u001a\u00020\u00082\u0006\u0010m\u001a\u00020\u0004J\u0014\u0010o\u001a\u0008\u0012\u0004\u0012\u00020I0O2\u0006\u0010,\u001a\u00020\u0012J\u0016\u0010r\u001a\u00020I2\u0006\u0010,\u001a\u00020\u00122\u0006\u0010q\u001a\u00020pJ\u0014\u0010t\u001a\u0008\u0012\u0004\u0012\u00020s0O2\u0006\u0010,\u001a\u00020\u0012J\u001c\u0010v\u001a\u00020\u00042\u0006\u0010,\u001a\u00020\u00122\u000c\u0010P\u001a\u0008\u0012\u0004\u0012\u00020u02J*\u0010{\u001a\u00020\u00042\u0006\u0010,\u001a\u00020\u00122\u000c\u0010x\u001a\u0008\u0012\u0004\u0012\u00020w022\u000c\u0010z\u001a\u0008\u0012\u0004\u0012\u00020y02J\u0016\u0010~\u001a\u00020\u00042\u0006\u0010,\u001a\u00020\u00122\u0006\u0010}\u001a\u00020|J\u0016\u0010\u007f\u001a\u00020\u00042\u0006\u0010,\u001a\u00020\u00122\u0006\u0010}\u001a\u00020|J\u0017\u0010\u0080\u0001\u001a\u00020\u00042\u0006\u0010,\u001a\u00020\u00122\u0006\u0010}\u001a\u00020|J!\u0010\u0080\u0001\u001a\u00020\u00042\u0006\u0010,\u001a\u00020\u00122\u0006\u0010}\u001a\u00020y2\u0008\u0010\u0082\u0001\u001a\u00030\u0081\u0001J\u0019\u0010\u0085\u0001\u001a\u00020\u00042\u0006\u0010,\u001a\u00020\u00122\u0008\u0010\u0084\u0001\u001a\u00030\u0083\u0001J\u0019\u0010\u0086\u0001\u001a\u00020\u00042\u0006\u0010,\u001a\u00020\u00122\u0008\u0010\u0084\u0001\u001a\u00030\u0083\u0001J\u0019\u0010\u0087\u0001\u001a\u00020\u00042\u0006\u0010,\u001a\u00020\u00122\u0008\u0010\u0084\u0001\u001a\u00030\u0083\u0001J\u0018\u0010\u0089\u0001\u001a\u00020\u00042\u0006\u0010,\u001a\u00020\u00122\u0007\u0010\u0088\u0001\u001a\u00020\u0010J\u0018\u0010\u008b\u0001\u001a\u00020\u00042\u0006\u0010,\u001a\u00020\u00122\u0007\u0010\u008a\u0001\u001a\u00020\u0010J\u0012\u0010\u008d\u0001\u001a\u00020\u00042\t\u0010\u008c\u0001\u001a\u0004\u0018\u00010\u0010J\u0018\u0010\u008f\u0001\u001a\u00020\u00042\u0006\u0010\u001f\u001a\u00020\u00102\u0007\u0010\u008e\u0001\u001a\u00020\u0004J\u0017\u0010\u008f\u0001\u001a\u00020\u00042\u0006\u0010\u001f\u001a\u00020\u00102\u0006\u0010%\u001a\u00020\u0010J\u0019\u0010\u008f\u0001\u001a\u00020\u00042\u0006\u0010\u001f\u001a\u00020\u00102\u0008\u0010\u0082\u0001\u001a\u00030\u0090\u0001J\u0011\u0010\u0093\u0001\u001a\u00020\u00082\u0008\u0010\u0092\u0001\u001a\u00030\u0091\u0001J\u0011\u0010\u0096\u0001\u001a\u00020\u00042\u0008\u0010\u0095\u0001\u001a\u00030\u0094\u0001J\u0018\u0010\u0098\u0001\u001a\u00020\u00042\u0006\u0010,\u001a\u00020\u00122\u0007\u0010\u0097\u0001\u001a\u00020\u0010J\u0018\u0010\u0099\u0001\u001a\u00020\u00042\u0006\u0010,\u001a\u00020\u00122\u0007\u0010\u008a\u0001\u001a\u00020\u0010J\u000f\u0010\u009a\u0001\u001a\u00020\u00042\u0006\u0010,\u001a\u00020\u0012J\u0012\u0010\u009c\u0001\u001a\u0005\u0018\u00010\u009b\u00012\u0006\u0010,\u001a\u00020\u0012J\u0019\u0010\u009e\u0001\u001a\u00020\u00042\u0006\u0010,\u001a\u00020\u00122\u0008\u0010\u009d\u0001\u001a\u00030\u009b\u0001J\u000f\u0010\u009f\u0001\u001a\u00020\u00042\u0006\u0010,\u001a\u00020\u0012J\u0010\u0010\u00a1\u0001\u001a\u00020\u00082\u0007\u0010\u00a0\u0001\u001a\u00020\u0012J\u0007\u0010\u00a2\u0001\u001a\u00020\u0004J\'\u0010\u00a3\u0001\u001a\u00020\u00042\u0006\u0010\u001a\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u00102\u0006\u0010D\u001a\u0002092\u0006\u0010E\u001a\u000209J\u000f\u0010\u00a4\u0001\u001a\u00020\u00042\u0006\u0010\u001a\u001a\u00020\u0012J\u0018\u0010\u00a6\u0001\u001a\u00020\u00042\u0006\u0010\u001a\u001a\u00020\u00122\u0007\u0010\u00a5\u0001\u001a\u00020\u0012J\u0018\u0010\u00a7\u0001\u001a\u00020\u00042\u0006\u0010\u001a\u001a\u00020\u00122\u0007\u0010\u00a5\u0001\u001a\u00020\u0012J\u0017\u0010\u00a8\u0001\u001a\u00020\u00042\u0006\u0010\u001a\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u0010J+\u0010\u00ad\u0001\u001a\u00020\u00042\u0006\u0010,\u001a\u00020\u00122\u0007\u0010\u00a9\u0001\u001a\u00020\u00102\u0007\u0010\u00aa\u0001\u001a\u00020\u00102\u0008\u0010\u00ac\u0001\u001a\u00030\u00ab\u0001J4\u0010\u00ad\u0001\u001a\u00020\u00042\u0006\u0010,\u001a\u00020\u00122\u0007\u0010\u00a9\u0001\u001a\u00020\u00102\u0007\u0010\u00aa\u0001\u001a\u00020\u00102\u0008\u0010\u00ac\u0001\u001a\u00030\u00ab\u00012\u0007\u0010\u00ae\u0001\u001a\u00020\u0010J\u000f\u0010\u00af\u0001\u001a\u00020\u00042\u0006\u0010,\u001a\u00020\u0012J\u0018\u0010\u00b0\u0001\u001a\u00020\u00102\u0006\u0010,\u001a\u00020\u00122\u0007\u0010\u0097\u0001\u001a\u00020\u0010J\u0018\u0010\u00b2\u0001\u001a\u00020\u00102\u0006\u0010,\u001a\u00020\u00122\u0007\u0010\u00b1\u0001\u001a\u00020\u0010J\u000f\u0010\u00b3\u0001\u001a\u00020\u00102\u0006\u0010\u001a\u001a\u00020\u0012J\u0010\u0010\u00b5\u0001\u001a\u00030\u00b4\u00012\u0006\u0010\u001a\u001a\u00020\u0012J\u0019\u0010\u00b7\u0001\u001a\u00030\u00b4\u00012\u0007\u0010\u00b6\u0001\u001a\u00020\u00102\u0006\u0010\u0016\u001a\u00020\u0004J\u0011\u0010\u00b8\u0001\u001a\u00020\u00102\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0014J\u000f\u0010\u00b9\u0001\u001a\u00020\u00122\u0006\u0010\u001a\u001a\u00020\u0012J\u0010\u0010\u00ba\u0001\u001a\u00020\u00142\u0007\u0010\u00b6\u0001\u001a\u00020\u0010J\u000f\u0010\u00ba\u0001\u001a\u00020\u00142\u0006\u0010\u001a\u001a\u00020\u0012J\u0008\u0010\u00bc\u0001\u001a\u00030\u00bb\u0001R\u0019\u0010\u00be\u0001\u001a\u00030\u00bb\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u001b\u0010\u00bd\u0001R\u001a\u0010\u00c0\u0001\u001a\u0004\u0018\u00010\n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\t\u0010\u00bf\u0001R\u0018\u0010\u00c2\u0001\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u0013\u0010\u00c1\u0001R\u0018\u0010\u00c3\u0001\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u0017\u0010\u00c1\u0001R\u0019\u0010\u00c5\u0001\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00c4\u0001\u0010\u00c1\u0001R\u001b\u0010\u00c8\u0001\u001a\u0005\u0018\u00010\u00c6\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u0018\u0010\u00c7\u0001R\u0017\u0010\u00cb\u0001\u001a\u00030\u00c9\u00018\u0002X\u0082\u0004\u00a2\u0006\u0007\n\u0005\u0008\u0019\u0010\u00ca\u0001R\u0017\u0010\u00ce\u0001\u001a\u00020\u00048BX\u0082\u0004\u00a2\u0006\u0008\u001a\u0006\u0008\u00cc\u0001\u0010\u00cd\u0001R\u0016\u0010\u00d1\u0001\u001a\u0004\u0018\u00010\u00108F\u00a2\u0006\u0008\u001a\u0006\u0008\u00cf\u0001\u0010\u00d0\u0001R\u0014\u0010\u00d2\u0001\u001a\u00020\u00048F\u00a2\u0006\u0008\u001a\u0006\u0008\u00d2\u0001\u0010\u00cd\u0001\u00a8\u0006\u00d6\u0001"
    }
    d2 = {
        "Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;",
        "",
        "Lcom/onyx/android/sdk/neopdf/PdfTocEntry;",
        "rootEntry",
        "",
        "h",
        "Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;",
        "root",
        "",
        "b",
        "Lcom/onyx/android/sdk/neopdf/NeoPdfOnyxTag;",
        "neoPdfOnyxTag",
        "l",
        "m",
        "k",
        "j",
        "",
        "pageJdJson",
        "",
        "c",
        "Lcom/onyx/android/sdk/reader/api/PageId;",
        "pageId",
        "useJsonPageIndexIfValid",
        "d",
        "f",
        "g",
        "pageIndex",
        "a",
        "Lcom/onyx/android/sdk/reader/api/ReaderPluginOptions;",
        "pluginOptions",
        "init",
        "path",
        "password",
        "",
        "openDocument",
        "closeDocument",
        "reopenDocument",
        "fileId",
        "isNewDocument",
        "commitId",
        "isExported",
        "supportCover",
        "isBlankContent",
        "beginLookupPageData",
        "page",
        "hasPageAnnotData",
        "endLookupPageData",
        "tag",
        "metadataString",
        "pageCount",
        "",
        "pageLabels",
        "",
        "size",
        "pageSize",
        "Landroid/graphics/Matrix;",
        "pageContentMatrix",
        "",
        "gamma",
        "setTextGamma",
        "",
        "table",
        "setTextGammaTable",
        "Lcom/onyx/android/sdk/reader/api/DrawArgs;",
        "drawArgs",
        "drawPage",
        "x",
        "y",
        "width",
        "height",
        "rotation",
        "startCharIndex",
        "endCharIndex",
        "Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;",
        "selection",
        "text",
        "caseSensitive",
        "matchWholeWord",
        "contextLength",
        "",
        "list",
        "searchInPage",
        "isTextPage",
        "isOnyxPage",
        "getPageText",
        "hasPageText",
        "isComplexPage",
        "sentenceStartIndex",
        "Lcom/onyx/android/sdk/reader/api/ReaderSentence;",
        "getSentence",
        "getPageId",
        "getPageObjId",
        "getTableOfContent",
        "entry",
        "updateTocPageIndex",
        "getPageLinks",
        "link",
        "getDestPageIndex",
        "Landroid/graphics/PointF;",
        "getLinkHitTestPoint",
        "getDestUri",
        "Lcom/onyx/android/sdk/reader/api/ReaderRichMedia;",
        "",
        "ignoreObjIdList",
        "getPageRichMedias",
        "(ILjava/util/List;[Ljava/lang/String;)Z",
        "Lcom/onyx/android/sdk/reader/api/ReaderDrmCertificateFactory;",
        "factory",
        "activateDeviceDRM",
        "render",
        "setRenderFormFields",
        "getPageTextCharBoxes",
        "Lcom/onyx/android/sdk/neopdf/PdfCharInfo;",
        "pdfChar",
        "convertToReaderSelectionImpl",
        "Lcom/onyx/android/sdk/reader/common/ReaderCharInfo;",
        "getPageTextCharInfoList",
        "Landroid/graphics/RectF;",
        "getPageImageRegions",
        "Lcom/onyx/android/sdk/neopdf/PdfHighlightInfo;",
        "highlights",
        "Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;",
        "shapes",
        "getPageAnnotations",
        "Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfShape;",
        "shape",
        "saveShape",
        "writeShape",
        "updateShape",
        "Lcom/onyx/android/sdk/neopdf/PdfShapeUpdateOptions;",
        "options",
        "Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfHighlight;",
        "highlight",
        "saveHighlight",
        "writeHighlight",
        "updateHighlight",
        "highlightId",
        "removeHighlight",
        "objId",
        "removeHighlightByObjId",
        "author",
        "setAuthor",
        "savePagesWithAnnotation",
        "saveAs",
        "Lcom/onyx/android/sdk/reader/api/ReaderDocumentWriter$SaveOptions;",
        "Lcom/onyx/android/sdk/neopdf/PdfCallback;",
        "pdfCallback",
        "setPdfCallback",
        "Lcom/onyx/android/sdk/reader/api/ReaderExportArgs;",
        "args",
        "exportPages",
        "shapeId",
        "removeShape",
        "removeShapeByObjId",
        "hasOnyxBookmark",
        "Lcom/onyx/android/sdk/neopdf/PdfBookmark;",
        "getOnyxBookmark",
        "bookmark",
        "addOnyxBookmark",
        "removeOnyxBookmark",
        "quality",
        "setDocumentSaveQuality",
        "supportNoteEmbeded",
        "insertPage",
        "removePage",
        "dstIndex",
        "movePage",
        "copyPage",
        "setPageId",
        "imageId",
        "resourceId",
        "Landroid/graphics/Bitmap;",
        "bitmap",
        "setBackground",
        "extraAttr",
        "removeBackground",
        "getShapeObjId",
        "highlightObjId",
        "getHighlightObjId",
        "getPageIdJsonByPageIndex",
        "Lcom/onyx/android/sdk/reader/api/ReaderPosition;",
        "positionByPageIndex",
        "pageIdJson",
        "positionByPositionString",
        "getPageIdJson",
        "getPageIdJsonHashCodeByPageIndex",
        "getPageIdObj",
        "Lcom/onyx/android/sdk/neopdf/NeoPdf;",
        "getNeoPdfNative",
        "Lcom/onyx/android/sdk/neopdf/NeoPdf;",
        "neoPdfNative",
        "Lcom/onyx/android/sdk/neopdf/NeoPdfOnyxTag;",
        "onyxTag",
        "Ljava/lang/String;",
        "certificate",
        "deviceId",
        "e",
        "random",
        "Lcom/onyx/android/sdk/neopdf/PdfOpenResult;",
        "Lcom/onyx/android/sdk/neopdf/PdfOpenResult;",
        "result",
        "Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfPageCache;",
        "Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfPageCache;",
        "neoPdfPageCache",
        "i",
        "()Z",
        "isJEB",
        "getFileIdFromFile",
        "()Ljava/lang/String;",
        "fileIdFromFile",
        "isDamagedFile",
        "<init>",
        "()V",
        "Companion",
        "sdk-readercore_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nNeoPdfJniWrapper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NeoPdfJniWrapper.kt\ncom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,844:1\n37#2,2:845\n37#2,2:847\n37#2,2:849\n1855#3,2:851\n1855#3,2:853\n1855#3,2:855\n1#4:857\n*S KotlinDebug\n*F\n+ 1 NeoPdfJniWrapper.kt\ncom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper\n*L\n169#1:845,2\n170#1:847,2\n171#1:849,2\n219#1:851,2\n310#1:853,2\n326#1:855,2\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final h:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static i:J

.field public static j:J

.field public static k:J

.field public static l:J

.field public static m:J

.field public static n:J

.field public static o:J

.field public static p:J

.field public static q:J

.field public static r:J

.field public static final s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static t:Z


# instance fields
.field public a:Lcom/onyx/android/sdk/neopdf/NeoPdf;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public b:Lcom/onyx/android/sdk/neopdf/NeoPdfOnyxTag;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public c:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public d:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public e:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public f:Lcom/onyx/android/sdk/neopdf/PdfOpenResult;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final g:Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfPageCache;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->Companion:Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper$Companion;

    const-class v0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;

    sput-object v0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->h:Ljava/lang/Class;

    const-wide/16 v0, 0x1

    sput-wide v0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->j:J

    const-wide/16 v0, 0x2

    sput-wide v0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->k:J

    const-wide/16 v0, 0x3

    sput-wide v0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->l:J

    const-wide/16 v0, 0x4

    sput-wide v0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->m:J

    const-wide/16 v0, 0x5

    sput-wide v0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->n:J

    const-wide/16 v0, 0x6

    sput-wide v0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->o:J

    const-wide/16 v0, 0x3e8

    sput-wide v0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->p:J

    const-wide/16 v0, 0x3e9

    sput-wide v0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->q:J

    const-wide/16 v0, 0x7d0

    sput-wide v0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->r:J

    const-string v0, "com.onyx.android.note"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->s:Ljava/util/List;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->t:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/onyx/android/sdk/neopdf/NeoPdf;

    invoke-direct {v0}, Lcom/onyx/android/sdk/neopdf/NeoPdf;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->a:Lcom/onyx/android/sdk/neopdf/NeoPdf;

    const-string v0, ""

    iput-object v0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->e:Ljava/lang/String;

    new-instance v0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfPageCache;

    invoke-direct {v0}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfPageCache;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->g:Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfPageCache;

    return-void
.end method

.method public static final synthetic access$getERROR_FILE_INVALID$cp()J
    .locals 2

    sget-wide v0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->l:J

    return-wide v0
.end method

.method public static final synthetic access$getERROR_FILE_NOT_FOUND$cp()J
    .locals 2

    sget-wide v0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->k:J

    return-wide v0
.end method

.method public static final synthetic access$getERROR_JD_DRM_INVALID$cp()J
    .locals 2

    sget-wide v0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->r:J

    return-wide v0
.end method

.method public static final synthetic access$getERROR_PAGE_NOT_FOUND$cp()J
    .locals 2

    sget-wide v0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->o:J

    return-wide v0
.end method

.method public static final synthetic access$getERROR_PASSWORD_INVALID$cp()J
    .locals 2

    sget-wide v0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->m:J

    return-wide v0
.end method

.method public static final synthetic access$getERROR_SECURITY$cp()J
    .locals 2

    sget-wide v0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->n:J

    return-wide v0
.end method

.method public static final synthetic access$getERROR_SECURITY_ADOBE_DRM$cp()J
    .locals 2

    sget-wide v0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->q:J

    return-wide v0
.end method

.method public static final synthetic access$getERROR_SECURITY_ONYX_DRM$cp()J
    .locals 2

    sget-wide v0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->p:J

    return-wide v0
.end method

.method public static final synthetic access$getERROR_UNKNOWN$cp()J
    .locals 2

    sget-wide v0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->j:J

    return-wide v0
.end method

.method public static final synthetic access$getEnableAutoReleaseMemory$cp()Z
    .locals 1

    sget-boolean v0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->t:Z

    return v0
.end method

.method public static final synthetic access$getNO_ERROR$cp()J
    .locals 2

    sget-wide v0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->i:J

    return-wide v0
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/Class;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->h:Ljava/lang/Class;

    return-object v0
.end method

.method public static final synthetic access$setERROR_FILE_INVALID$cp(J)V
    .locals 0

    sput-wide p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->l:J

    return-void
.end method

.method public static final synthetic access$setERROR_FILE_NOT_FOUND$cp(J)V
    .locals 0

    sput-wide p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->k:J

    return-void
.end method

.method public static final synthetic access$setERROR_JD_DRM_INVALID$cp(J)V
    .locals 0

    sput-wide p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->r:J

    return-void
.end method

.method public static final synthetic access$setERROR_PAGE_NOT_FOUND$cp(J)V
    .locals 0

    sput-wide p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->o:J

    return-void
.end method

.method public static final synthetic access$setERROR_PASSWORD_INVALID$cp(J)V
    .locals 0

    sput-wide p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->m:J

    return-void
.end method

.method public static final synthetic access$setERROR_SECURITY$cp(J)V
    .locals 0

    sput-wide p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->n:J

    return-void
.end method

.method public static final synthetic access$setERROR_SECURITY_ADOBE_DRM$cp(J)V
    .locals 0

    sput-wide p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->q:J

    return-void
.end method

.method public static final synthetic access$setERROR_SECURITY_ONYX_DRM$cp(J)V
    .locals 0

    sput-wide p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->p:J

    return-void
.end method

.method public static final synthetic access$setERROR_UNKNOWN$cp(J)V
    .locals 0

    sput-wide p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->j:J

    return-void
.end method

.method public static final synthetic access$setEnableAutoReleaseMemory$cp(Z)V
    .locals 0

    sput-boolean p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->t:Z

    return-void
.end method

.method public static final synthetic access$setNO_ERROR$cp(J)V
    .locals 0

    sput-wide p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->i:J

    return-void
.end method

.method public static synthetic e(Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;Lcom/onyx/android/sdk/reader/api/PageId;ZILjava/lang/Object;)I
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->d(Lcom/onyx/android/sdk/reader/api/PageId;Z)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->g:Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfPageCache;

    new-instance v1, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper$beforeGetPageText$1;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper$beforeGetPageText$1;-><init>(Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;)V

    invoke-virtual {v0, p1, v1}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfPageCache;->beforeGetPageText(ILkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final activateDeviceDRM(Lcom/onyx/android/sdk/reader/api/ReaderDrmCertificateFactory;)Z
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderDrmCertificateFactory;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "factory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/onyx/android/sdk/reader/api/ReaderDrmCertificateFactory;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/StringKt;->safelyGetStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->d:Ljava/lang/String;

    invoke-interface {p1}, Lcom/onyx/android/sdk/reader/api/ReaderDrmCertificateFactory;->getDrmCertificate()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/StringKt;->safelyGetStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->c:Ljava/lang/String;

    invoke-interface {p1}, Lcom/onyx/android/sdk/reader/api/ReaderDrmCertificateFactory;->getRandom()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/StringKt;->safelyGetStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->e:Ljava/lang/String;

    const/4 p0, 0x1

    return p0
.end method

.method public final addOnyxBookmark(ILcom/onyx/android/sdk/neopdf/PdfBookmark;)Z
    .locals 1
    .param p2    # Lcom/onyx/android/sdk/neopdf/PdfBookmark;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "bookmark"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->a:Lcom/onyx/android/sdk/neopdf/NeoPdf;

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->addOnyxBookmark(ILcom/onyx/android/sdk/neopdf/PdfBookmark;)Z

    move-result p0

    return p0
.end method

.method public final b(Lcom/onyx/android/sdk/neopdf/PdfTocEntry;Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;)V
    .locals 18

    const/4 v0, 0x1

    move-object/from16 v1, p2

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;->setSortByPageIndex(Z)V

    invoke-virtual/range {p1 .. p1}, Lcom/onyx/android/sdk/neopdf/PdfTocEntry;->getChildren()Ljava/util/List;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/util/Collection;

    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    return-void

    :cond_2
    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/neopdf/PdfTocEntry;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/neopdf/PdfTocEntry;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/onyx/android/sdk/base/extension/StringKt;->safelyGetStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/onyx/android/sdk/neopdf/PdfTocEntry;->getEntryPtr()J

    move-result-wide v12

    invoke-virtual {v2}, Lcom/onyx/android/sdk/neopdf/PdfTocEntry;->getPage()I

    move-result v6

    new-instance v3, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x37c

    const/16 v17, 0x0

    move-object v4, v3

    invoke-direct/range {v4 .. v17}, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;-><init>(Ljava/lang/String;ILcom/onyx/android/sdk/reader/api/ReaderPosition;Ljava/lang/String;ZZZJZLjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual/range {p2 .. p2}, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;->getChildren()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v4, p0

    invoke-virtual {v4, v2, v3}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->b(Lcom/onyx/android/sdk/neopdf/PdfTocEntry;Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method public final beginLookupPageData()V
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->a:Lcom/onyx/android/sdk/neopdf/NeoPdf;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->beginLookupPageData()V

    return-void
.end method

.method public final c(Ljava/lang/String;)I
    .locals 0

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    if-eqz p0, :cond_2

    const/4 p0, -0x1

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p0

    :goto_2
    return p0
.end method

.method public final closeDocument()Z
    .locals 5

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->a:Lcom/onyx/android/sdk/neopdf/NeoPdf;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->closeDocument()Z

    move-result v0

    sget-object v1, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v2, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "closeDocument result = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3, v4}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->f:Lcom/onyx/android/sdk/neopdf/PdfOpenResult;

    return v0
.end method

.method public final commitId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->b:Lcom/onyx/android/sdk/neopdf/NeoPdfOnyxTag;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/neopdf/NeoPdfOnyxTag;->getCommitId()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/StringKt;->safelyGetStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final convertToReaderSelectionImpl(ILcom/onyx/android/sdk/neopdf/PdfCharInfo;)Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;
    .locals 1
    .param p2    # Lcom/onyx/android/sdk/neopdf/PdfCharInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "pdfChar"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;

    invoke-direct {p0}, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;-><init>()V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->setPageIndex(I)V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/neopdf/PdfCharInfo;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->setText(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->getRectList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p2}, Lcom/onyx/android/sdk/neopdf/PdfCharInfo;->getRect()Landroid/graphics/RectF;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->getCharRectList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p2}, Lcom/onyx/android/sdk/neopdf/PdfCharInfo;->getRect()Landroid/graphics/RectF;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final copyPage(II)Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->a:Lcom/onyx/android/sdk/neopdf/NeoPdf;

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->copyPage(II)Z

    move-result p0

    return p0
.end method

.method public final d(Lcom/onyx/android/sdk/reader/api/PageId;Z)I
    .locals 5

    invoke-static {p1}, Lcom/onyx/android/sdk/reader/api/PageIdKt;->isValidId(Lcom/onyx/android/sdk/reader/api/PageId;)Z

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    const-class v3, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;

    if-nez v0, :cond_0

    sget-object p0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-string p1, "invalid pageId"

    new-array p2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v3, p1, p2}, Lcom/onyx/android/sdk/base/utils/Debug;->w(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_0
    if-eqz p2, :cond_1

    sget-object p2, Lcom/onyx/android/sdk/base/utils/PageInfoUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/PageInfoUtils;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/api/PageId;->getPageIndex()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/onyx/android/sdk/base/utils/PageInfoUtils;->isValidPage(I)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/api/PageId;->getPageIndex()I

    move-result p0

    return p0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->g(Lcom/onyx/android/sdk/reader/api/PageId;)I

    move-result p2

    sget-object v0, Lcom/onyx/android/sdk/base/utils/PageInfoUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/PageInfoUtils;

    invoke-virtual {v0, p2}, Lcom/onyx/android/sdk/base/utils/PageInfoUtils;->isValidPage(I)Z

    move-result v4

    if-eqz v4, :cond_2

    return p2

    :cond_2
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->f(Lcom/onyx/android/sdk/reader/api/PageId;)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/base/utils/PageInfoUtils;->isValidPage(I)Z

    move-result p2

    if-eqz p2, :cond_3

    return p0

    :cond_3
    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/api/PageId;->getPageIndex()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/base/utils/PageInfoUtils;->isValidPage(I)Z

    move-result p0

    if-eqz p0, :cond_4

    sget-object p0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "load page index by memory fail, use pageId.pageIndex, pageId = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v3, p2, v0}, Lcom/onyx/android/sdk/base/utils/Debug;->w(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/api/PageId;->getPageIndex()I

    move-result p0

    return p0

    :cond_4
    sget-object p0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "invalid page index, pageId = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v3, p1, p2}, Lcom/onyx/android/sdk/base/utils/Debug;->w(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1
.end method

.method public final drawPage(Lcom/onyx/android/sdk/reader/api/DrawArgs;)Z
    .locals 10
    .param p1    # Lcom/onyx/android/sdk/reader/api/DrawArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "drawArgs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/api/DrawArgs;->getPagePosition()Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object v0

    invoke-interface {v0}, Lcom/onyx/android/sdk/reader/api/ReaderPosition;->getPageIndex()I

    move-result v2

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->a:Lcom/onyx/android/sdk/neopdf/NeoPdf;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/api/DrawArgs;->getShapeIdArray()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/api/DrawArgs;->getHighlightIdArray()Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    new-array v5, v3, [Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/api/DrawArgs;->getObjIdArray()Ljava/util/List;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v5, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    invoke-virtual {v0, v2, v1, v4, v3}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->setAnnotRenderIgnoreList(I[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/api/DrawArgs;->getDisplayRect()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/api/DrawArgs;->getAntialias()Z

    move-result v1

    xor-int/lit8 v8, v1, 0x1

    iget-object v1, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->g:Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfPageCache;

    new-instance v3, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper$drawPage$1;

    invoke-direct {v3, p0}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper$drawPage$1;-><init>(Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;)V

    invoke-virtual {v1, v2, v3}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfPageCache;->beforeRenderPage(ILkotlin/jvm/functions/Function0;)V

    iget-object v1, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->a:Lcom/onyx/android/sdk/neopdf/NeoPdf;

    iget p0, v0, Landroid/graphics/RectF;->left:F

    float-to-int v3, p0

    iget p0, v0, Landroid/graphics/RectF;->top:F

    float-to-int v4, p0

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result p0

    float-to-int v5, p0

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result p0

    float-to-int v6, p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/api/DrawArgs;->getRotation()I

    move-result p0

    div-int/lit8 v7, p0, 0x5a

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/api/DrawArgs;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual/range {v1 .. v9}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->renderPage(IIIIIIILandroid/graphics/Bitmap;)Z

    move-result p0

    return p0
.end method

.method public final endLookupPageData()V
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->a:Lcom/onyx/android/sdk/neopdf/NeoPdf;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->endLookupPageData()V

    return-void
.end method

.method public final exportPages(Lcom/onyx/android/sdk/reader/api/ReaderExportArgs;)Z
    .locals 11
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderExportArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/android/sdk/reader/api/ReaderDocumentWriter$SaveOptions;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x7

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/onyx/android/sdk/reader/api/ReaderDocumentWriter$SaveOptions;-><init>(Ljava/lang/String;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/api/ReaderExportArgs;->getFileId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/reader/api/ReaderDocumentWriter$SaveOptions;->setFileId(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/reader/api/ReaderDocumentWriter$SaveOptions;->setExporting(Z)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/reader/api/ReaderDocumentWriter$SaveOptions;->setExportOnlyPagesWithAnnotations(Z)V

    new-instance v10, Lcom/onyx/android/sdk/neopdf/NeoPdfOnyxTag;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/reader/api/ReaderDocumentWriter$SaveOptions;->getFileId()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/reader/api/ReaderDocumentWriter$SaveOptions;->getExporting()Z

    move-result v6

    const/4 v7, 0x0

    const/16 v8, 0xa

    const/4 v9, 0x0

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lcom/onyx/android/sdk/neopdf/NeoPdfOnyxTag;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p0, v10}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->m(Lcom/onyx/android/sdk/neopdf/NeoPdfOnyxTag;)V

    sget-object v0, Lcom/onyx/android/sdk/neopdf/lib/JSONUtils;->INSTANCE:Lcom/onyx/android/sdk/neopdf/lib/JSONUtils;

    invoke-virtual {v0, v10}, Lcom/onyx/android/sdk/neopdf/lib/JSONUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/StringKt;->safelyGetStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->a:Lcom/onyx/android/sdk/neopdf/NeoPdf;

    const-string v4, "onyxtag"

    invoke-virtual {v3, v4, v0}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->setOnyxTagMetadata(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return v2

    :cond_0
    new-instance v0, Lcom/onyx/android/sdk/neopdf/NeoPdf;

    invoke-direct {v0}, Lcom/onyx/android/sdk/neopdf/NeoPdf;-><init>()V

    :try_start_0
    new-instance v4, Lcom/onyx/android/sdk/neopdf/PdfImportContext;

    new-array v3, v2, [I

    invoke-direct {v4, v3}, Lcom/onyx/android/sdk/neopdf/PdfImportContext;-><init>([I)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/api/ReaderExportArgs;->getOutputPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->createNewDocument(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->a:Lcom/onyx/android/sdk/neopdf/NeoPdf;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->getFilePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/api/ReaderExportArgs;->getPages()[I

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/api/ReaderExportArgs;->getSourceFilePassword()Ljava/lang/String;

    move-result-object v8

    move-object v3, v0

    invoke-virtual/range {v3 .. v8}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->importPages(Lcom/onyx/android/sdk/neopdf/PdfImportContext;Ljava/lang/String;[IILjava/lang/String;)Lcom/onyx/android/sdk/neopdf/PdfImportContext;

    move-result-object v3

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->save$default(Lcom/onyx/android/sdk/neopdf/NeoPdf;Lcom/onyx/android/sdk/neopdf/PdfSaveOptions;ILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    if-eqz v1, :cond_2

    sget-object v2, Lcom/onyx/android/sdk/neopdf/PdfUtils;->INSTANCE:Lcom/onyx/android/sdk/neopdf/PdfUtils;

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->a:Lcom/onyx/android/sdk/neopdf/NeoPdf;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/api/ReaderExportArgs;->getPages()[I

    move-result-object p1

    invoke-virtual {v2, p0, v0, v3, p1}, Lcom/onyx/android/sdk/neopdf/PdfUtils;->updateExportPdfLinks(Lcom/onyx/android/sdk/neopdf/NeoPdf;Lcom/onyx/android/sdk/neopdf/NeoPdf;Ljava/lang/String;[I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    invoke-virtual {v0}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->closeDocument()Z

    return v1

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->closeDocument()Z

    throw p0
.end method

.method public final f(Lcom/onyx/android/sdk/reader/api/PageId;)I
    .locals 1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/api/PageId;->getPageReferenceId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/StringKt;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->a:Lcom/onyx/android/sdk/neopdf/NeoPdf;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->isDummyPageObjId(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->a:Lcom/onyx/android/sdk/neopdf/NeoPdf;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->getPageIndexByDummyPageObjId(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->a:Lcom/onyx/android/sdk/neopdf/NeoPdf;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->getPageIndexByObjId([Ljava/lang/String;)[I

    move-result-object p0

    const/4 p1, 0x0

    aget p0, p0, p1

    return p0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public final fileId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->b:Lcom/onyx/android/sdk/neopdf/NeoPdfOnyxTag;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/neopdf/NeoPdfOnyxTag;->getId()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/StringKt;->safelyGetStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final g(Lcom/onyx/android/sdk/reader/api/PageId;)I
    .locals 1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/api/PageId;->getPageUUID()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/StringKt;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->a:Lcom/onyx/android/sdk/neopdf/NeoPdf;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->getPageIndexById([Ljava/lang/String;)[I

    move-result-object p0

    const/4 p1, 0x0

    aget p0, p0, p1

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public final getDestPageIndex(Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;)I
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "link"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->getPageIndex()I

    move-result v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->getRectList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->getLinkHitTestPoint(Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;)Landroid/graphics/PointF;

    move-result-object p1

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->a:Lcom/onyx/android/sdk/neopdf/NeoPdf;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->getLinkPageAtPoint(ILandroid/graphics/PointF;Z)I

    move-result p0

    return p0
.end method

.method public final getDestUri(Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;)Ljava/lang/String;
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "link"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->getPageIndex()I

    move-result v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->getRectList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->getLinkHitTestPoint(Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;)Landroid/graphics/PointF;

    move-result-object p1

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->a:Lcom/onyx/android/sdk/neopdf/NeoPdf;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->getLinkDestAtPoint(ILandroid/graphics/PointF;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getFileIdFromFile()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->j()Lcom/onyx/android/sdk/neopdf/NeoPdfOnyxTag;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/neopdf/NeoPdfOnyxTag;->getId()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final getHighlightObjId(ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "highlightObjId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->a:Lcom/onyx/android/sdk/neopdf/NeoPdf;

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->getHighlightObjId(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/StringKt;->safelyGetStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getLinkHitTestPoint(Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;)Landroid/graphics/PointF;
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "link"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Landroid/graphics/PointF;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->getRectList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->getRectList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result p1

    invoke-direct {p0, v0, p1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p0
.end method

.method public final getNeoPdfNative()Lcom/onyx/android/sdk/neopdf/NeoPdf;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->a:Lcom/onyx/android/sdk/neopdf/NeoPdf;

    return-object p0
.end method

.method public final getOnyxBookmark(I)Lcom/onyx/android/sdk/neopdf/PdfBookmark;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->a:Lcom/onyx/android/sdk/neopdf/NeoPdf;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->getOnyxBookmark(I)Lcom/onyx/android/sdk/neopdf/PdfBookmark;

    move-result-object p0

    return-object p0
.end method

.method public final getPageAnnotations(ILjava/util/List;Ljava/util/List;)Z
    .locals 1
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/neopdf/PdfHighlightInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "highlights"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "shapes"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->a:Lcom/onyx/android/sdk/neopdf/NeoPdf;

    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->getPageAnnotations(ILjava/util/List;Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method public final getPageId(I)Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->a:Lcom/onyx/android/sdk/neopdf/NeoPdf;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->getPageId(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/StringKt;->safelyGetStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getPageIdJson(Lcom/onyx/android/sdk/reader/api/PageId;)Ljava/lang/String;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/reader/api/PageId;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/neopdf/lib/JSONUtils;->INSTANCE:Lcom/onyx/android/sdk/neopdf/lib/JSONUtils;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/neopdf/lib/JSONUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/StringKt;->safelyGetStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getPageIdJsonByPageIndex(I)Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/base/utils/PageInfoUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/PageInfoUtils;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/base/utils/PageInfoUtils;->isValidPage(I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->getPageIdObj(I)Lcom/onyx/android/sdk/reader/api/PageId;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->getPageIdJson(Lcom/onyx/android/sdk/reader/api/PageId;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final getPageIdJsonHashCodeByPageIndex(I)I
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/base/utils/PageInfoUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/PageInfoUtils;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/base/utils/PageInfoUtils;->isValidPage(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->getPageIdJsonByPageIndex(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->c(Ljava/lang/String;)I

    move-result p0

    :goto_0
    return p0
.end method

.method public final getPageIdObj(I)Lcom/onyx/android/sdk/reader/api/PageId;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 4
    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->a:Lcom/onyx/android/sdk/neopdf/NeoPdf;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->getPageObjId(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/StringKt;->safelyGetStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 5
    new-instance v0, Lcom/onyx/android/sdk/reader/api/PageId;

    const-string v1, ""

    invoke-direct {v0, v1, p0, p1}, Lcom/onyx/android/sdk/reader/api/PageId;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0
.end method

.method public final getPageIdObj(Ljava/lang/String;)Lcom/onyx/android/sdk/reader/api/PageId;
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "pageIdJson"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object p0, Lcom/onyx/android/sdk/neopdf/lib/JSONUtils;->INSTANCE:Lcom/onyx/android/sdk/neopdf/lib/JSONUtils;

    const/4 v0, 0x0

    new-array v1, v0, [Lcom/alibaba/fastjson2/JSONReader$Feature;

    const-class v2, Lcom/onyx/android/sdk/reader/api/PageId;

    invoke-virtual {p0, p1, v2, v1}, Lcom/onyx/android/sdk/neopdf/lib/JSONUtils;->parseObjectQuietly(Ljava/lang/String;Ljava/lang/Class;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/reader/api/PageId;

    if-nez p0, :cond_0

    .line 2
    sget-object p0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v1, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid pageIdJson = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v1, p1, v0}, Lcom/onyx/android/sdk/base/utils/Debug;->w(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    new-instance p0, Lcom/onyx/android/sdk/reader/api/PageId;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x7

    const/4 v7, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/onyx/android/sdk/reader/api/PageId;-><init>(Ljava/lang/String;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :cond_0
    return-object p0
.end method

.method public final getPageImageRegions(ILjava/util/List;)Z
    .locals 1
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "+",
            "Landroid/graphics/RectF;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "list"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->a:Lcom/onyx/android/sdk/neopdf/NeoPdf;

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->getPageImageRegions(ILjava/util/List;)Z

    move-result p0

    return p0
.end method

.method public final getPageLinks(ILjava/util/List;)Z
    .locals 3
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "list"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->a:Lcom/onyx/android/sdk/neopdf/NeoPdf;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->getPageLinks(ILjava/util/List;Z)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/neopdf/PdfLink;

    iget-object p1, p1, Lcom/onyx/android/sdk/neopdf/PdfLink;->selection:Lcom/onyx/android/sdk/neopdf/PdfTextSelection;

    if-eqz p1, :cond_1

    sget-object v0, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->Companion:Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl$Companion;

    const-string v2, "selection"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/onyx/android/sdk/reader/extension/ReaderSelectionImplKt;->create(Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl$Companion;Lcom/onyx/android/sdk/neopdf/PdfTextSelection;)Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return v1
.end method

.method public final getPageObjId(I)Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->a:Lcom/onyx/android/sdk/neopdf/NeoPdf;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->getPageObjId(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/StringKt;->safelyGetStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getPageRichMedias(ILjava/util/List;[Ljava/lang/String;)Z
    .locals 2
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # [Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/reader/api/ReaderRichMedia;",
            ">;[",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    const-string v0, "list"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ignoreObjIdList"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->i()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->a:Lcom/onyx/android/sdk/neopdf/NeoPdf;

    invoke-virtual {p0, p1, v0, p3}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->getPageRichMedias(ILjava/util/List;[Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    return v1

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/neopdf/PdfRichMediaObject;

    sget-object p3, Lcom/onyx/android/sdk/reader/impl/ReaderRichMediaImpl;->Companion:Lcom/onyx/android/sdk/reader/impl/ReaderRichMediaImpl$Companion;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/neopdf/PdfRichMediaObject;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/neopdf/PdfRichMediaObject;->getRect()Landroid/graphics/RectF;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/neopdf/PdfRichMediaObject;->getData()[B

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p3, p2, v0, v1, p1}, Lcom/onyx/android/sdk/reader/impl/ReaderRichMediaImpl$Companion;->addToList(Ljava/util/List;Ljava/lang/String;Landroid/graphics/RectF;[B)V

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public final getPageText(I)Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->a(I)V

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->a:Lcom/onyx/android/sdk/neopdf/NeoPdf;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->getPageText(IZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getPageTextCharBoxes(I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->a:Lcom/onyx/android/sdk/neopdf/NeoPdf;

    invoke-virtual {v1, p1, v0}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->getPageTextCharBoxes(ILjava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->asSequence(Ljava/lang/Iterable;)Lkotlin/sequences/Sequence;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper$getPageTextCharBoxes$1;

    invoke-direct {v1, p0, p1}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper$getPageTextCharBoxes$1;-><init>(Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;I)V

    invoke-static {v0, v1}, Lkotlin/sequences/SequencesKt;->map(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object p0

    invoke-static {p0}, Lkotlin/sequences/SequencesKt;->toMutableList(Lkotlin/sequences/Sequence;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public final getPageTextCharInfoList(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/reader/common/ReaderCharInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->a:Lcom/onyx/android/sdk/neopdf/NeoPdf;

    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->getPageTextCharBoxes(ILjava/util/List;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->asSequence(Ljava/lang/Iterable;)Lkotlin/sequences/Sequence;

    move-result-object p0

    sget-object p1, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper$getPageTextCharInfoList$1;->INSTANCE:Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper$getPageTextCharInfoList$1;

    invoke-static {p0, p1}, Lkotlin/sequences/SequencesKt;->map(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object p0

    invoke-static {p0}, Lkotlin/sequences/SequencesKt;->toMutableList(Lkotlin/sequences/Sequence;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public final getSentence(II)Lcom/onyx/android/sdk/reader/api/ReaderSentence;
    .locals 7
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    new-instance p2, Lcom/onyx/android/sdk/reader/api/ReaderSentence;

    new-instance v1, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;

    invoke-direct {v1}, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;-><init>()V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->positionByPageIndex(I)Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    move-object v0, p2

    invoke-direct/range {v0 .. v6}, Lcom/onyx/android/sdk/reader/api/ReaderSentence;-><init>(Lcom/onyx/android/sdk/reader/api/ReaderSelection;Lcom/onyx/android/sdk/reader/api/ReaderPosition;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p2
.end method

.method public final getShapeObjId(ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "shapeId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->a:Lcom/onyx/android/sdk/neopdf/NeoPdf;

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->getShapeObjId(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/StringKt;->safelyGetStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getTableOfContent(Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;)Z
    .locals 9
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "root"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/android/sdk/neopdf/PdfTocEntry;

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xf

    const/4 v8, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/onyx/android/sdk/neopdf/PdfTocEntry;-><init>(JLjava/lang/String;ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object v1, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;->Companion:Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin$Companion;

    iget-object v2, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->a:Lcom/onyx/android/sdk/neopdf/NeoPdf;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin$Companion;->isCajExtension(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->h(Lcom/onyx/android/sdk/neopdf/PdfTocEntry;)Z

    move-result v1

    if-nez v1, :cond_0

    return v2

    :cond_0
    iget-object v1, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->a:Lcom/onyx/android/sdk/neopdf/NeoPdf;

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->getTableOfContent(Lcom/onyx/android/sdk/neopdf/PdfTocEntry;)Z

    move-result v1

    if-nez v1, :cond_1

    return v2

    :cond_1
    invoke-virtual {p0, v0, p1}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->b(Lcom/onyx/android/sdk/neopdf/PdfTocEntry;Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final h(Lcom/onyx/android/sdk/neopdf/PdfTocEntry;)Z
    .locals 5

    sget-object v0, Lcom/onyx/android/sdk/neocaj/NeoCajNative;->INSTANCE:Lcom/onyx/android/sdk/neocaj/NeoCajNative;

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->a:Lcom/onyx/android/sdk/neopdf/NeoPdf;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->getFilePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/neocaj/NeoCajNative;->openDocument(Ljava/lang/String;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p0, v1, v3

    const/4 v3, 0x0

    if-nez p0, :cond_0

    return v3

    :cond_0
    :try_start_0
    invoke-virtual {v0, v1, v2, p1}, Lcom/onyx/android/sdk/neocaj/NeoCajNative;->getTocTree(JLcom/onyx/android/sdk/neopdf/PdfTocEntry;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_1

    invoke-virtual {v0, v1, v2}, Lcom/onyx/android/sdk/neocaj/NeoCajNative;->closeDocument(J)Z

    return v3

    :cond_1
    invoke-virtual {v0, v1, v2}, Lcom/onyx/android/sdk/neocaj/NeoCajNative;->closeDocument(J)Z

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    sget-object p1, Lcom/onyx/android/sdk/neocaj/NeoCajNative;->INSTANCE:Lcom/onyx/android/sdk/neocaj/NeoCajNative;

    invoke-virtual {p1, v1, v2}, Lcom/onyx/android/sdk/neocaj/NeoCajNative;->closeDocument(J)Z

    throw p0
.end method

.method public final hasOnyxBookmark(I)Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->a:Lcom/onyx/android/sdk/neopdf/NeoPdf;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->hasOnyxBookmark(I)Z

    move-result p0

    return p0
.end method

.method public final hasPageAnnotData(I)Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->a:Lcom/onyx/android/sdk/neopdf/NeoPdf;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->lookUpPageAnnotData(I)Z

    move-result p0

    return p0
.end method

.method public final hasPageText(I)Z
    .locals 1

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->a:Lcom/onyx/android/sdk/neopdf/NeoPdf;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->getPageText(IZ)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/StringKt;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public final i()Z
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;->Companion:Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin$Companion;

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->a:Lcom/onyx/android/sdk/neopdf/NeoPdf;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->getFilePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin$Companion;->isJEB(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final init(Lcom/onyx/android/sdk/reader/api/ReaderPluginOptions;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPluginOptions;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "pluginOptions"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/neopdf/NeoPdfNative;->INSTANCE:Lcom/onyx/android/sdk/neopdf/NeoPdfNative;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/api/ReaderPluginOptions;->getFontDirectories()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/neopdf/NeoPdfNative;->ensureInitialized(Ljava/util/List;)V

    return-void
.end method

.method public final insertPage(ILjava/lang/String;FF)Z
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "pageId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->a:Lcom/onyx/android/sdk/neopdf/NeoPdf;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->insertPage(ILjava/lang/String;FF)Z

    move-result p0

    return p0
.end method

.method public final isBlankContent()Z
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->s:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->b:Lcom/onyx/android/sdk/neopdf/NeoPdfOnyxTag;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/neopdf/NeoPdfOnyxTag;->getApp()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {v0, p0}, Lkotlin/collections/CollectionsKt;->contains(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final isComplexPage(I)Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->a:Lcom/onyx/android/sdk/neopdf/NeoPdf;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->isComplexPage(I)Z

    move-result p0

    return p0
.end method

.method public final isDamagedFile()Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->f:Lcom/onyx/android/sdk/neopdf/PdfOpenResult;

    if-eqz p0, :cond_0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/neopdf/PdfOpenResult;->isXrefValid()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isExported()Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->b:Lcom/onyx/android/sdk/neopdf/NeoPdfOnyxTag;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/neopdf/NeoPdfOnyxTag;->getExported()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isNewDocument()Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->b:Lcom/onyx/android/sdk/neopdf/NeoPdfOnyxTag;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isOnyxPage(I)Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->a:Lcom/onyx/android/sdk/neopdf/NeoPdf;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->isOnyxPage(I)Z

    move-result p0

    return p0
.end method

.method public final isTextPage(I)Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->a:Lcom/onyx/android/sdk/neopdf/NeoPdf;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->isTextPage(I)Z

    move-result p0

    return p0
.end method

.method public final j()Lcom/onyx/android/sdk/neopdf/NeoPdfOnyxTag;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->a:Lcom/onyx/android/sdk/neopdf/NeoPdf;

    const-string v1, "onyxtag"

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->getOnyxTagMetadata(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    sget-object v1, Lcom/onyx/android/sdk/neopdf/lib/JSONUtils;->INSTANCE:Lcom/onyx/android/sdk/neopdf/lib/JSONUtils;

    const-class v2, Lcom/onyx/android/sdk/neopdf/NeoPdfOnyxTag;

    invoke-virtual {v1, p0, v2}, Lcom/onyx/android/sdk/neopdf/lib/JSONUtils;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/neopdf/NeoPdfOnyxTag;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p0

    :goto_2
    return-object v0

    :catch_0
    move-exception p0

    sget-object v1, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    invoke-virtual {v1, p0}, Lcom/onyx/android/sdk/base/utils/Debug;->e(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public final k()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->a:Lcom/onyx/android/sdk/neopdf/NeoPdf;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->setRenderOnyxAnnotations(Z)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->j()Lcom/onyx/android/sdk/neopdf/NeoPdfOnyxTag;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->b:Lcom/onyx/android/sdk/neopdf/NeoPdfOnyxTag;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/neopdf/NeoPdfOnyxTag;->getExported()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->a:Lcom/onyx/android/sdk/neopdf/NeoPdf;

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->setExported(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v1, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;

    invoke-virtual {v0, v1, p0}, Lcom/onyx/android/sdk/base/utils/Debug;->w(Ljava/lang/Class;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public final l(Lcom/onyx/android/sdk/neopdf/NeoPdfOnyxTag;)V
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->b:Lcom/onyx/android/sdk/neopdf/NeoPdfOnyxTag;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/neopdf/NeoPdfOnyxTag;->getApp()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/neopdf/NeoPdfOnyxTag;->setApp(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final m(Lcom/onyx/android/sdk/neopdf/NeoPdfOnyxTag;)V
    .locals 0

    sget-object p0, Lcom/onyx/android/sdk/neopdf/CommitIdUtils;->INSTANCE:Lcom/onyx/android/sdk/neopdf/CommitIdUtils;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/neopdf/CommitIdUtils;->generateCommitId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/neopdf/NeoPdfOnyxTag;->setCommitId(Ljava/lang/String;)V

    return-void
.end method

.method public final metadataString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->a:Lcom/onyx/android/sdk/neopdf/NeoPdf;

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/StringKt;->safelyGetStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->metadata(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final movePage(II)Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->a:Lcom/onyx/android/sdk/neopdf/NeoPdf;

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->movePage(II)Z

    move-result p0

    return p0
.end method

.method public final openDocument(Ljava/lang/String;Ljava/lang/String;)J
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "password"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/StringKt;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    new-instance v1, Lcom/onyx/android/sdk/neopdf/PdfOpenOptions;

    invoke-direct {v1}, Lcom/onyx/android/sdk/neopdf/PdfOpenOptions;-><init>()V

    sget-object v2, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;->Companion:Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin$Companion;

    invoke-virtual {v2, p1}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin$Companion;->isJEB(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez v0, :cond_0

    sget-wide p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->r:J

    return-wide p0

    :cond_0
    sget-object p2, Lcom/onyx/android/sdk/neopdf/PdfDrmOptions;->Companion:Lcom/onyx/android/sdk/neopdf/PdfDrmOptions$Companion;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/neopdf/PdfDrmOptions$Companion;->jebDrmBuilder()Lcom/onyx/android/sdk/neopdf/JebDrmBuilder;

    move-result-object p2

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/StringKt;->safelyGetStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/onyx/android/sdk/neopdf/JebDrmBuilder;->setBookKey(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/neopdf/JebDrmBuilder;->getBookKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/onyx/android/sdk/neopdf/JebDrmBuilder;->setBookKeyLen(I)V

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/StringKt;->safelyGetStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/onyx/android/sdk/neopdf/JebDrmBuilder;->setUuid(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/StringKt;->safelyGetStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/onyx/android/sdk/neopdf/JebDrmBuilder;->setRand(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/neopdf/JebDrmBuilder;->build()Lcom/onyx/android/sdk/neopdf/PdfDrmOptions;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/onyx/android/sdk/neopdf/PdfOpenOptions;->setDrmOptions(Lcom/onyx/android/sdk/neopdf/PdfDrmOptions;)V

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    sget-object p2, Lcom/onyx/android/sdk/neopdf/PdfDrmOptions;->Companion:Lcom/onyx/android/sdk/neopdf/PdfDrmOptions$Companion;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/neopdf/PdfDrmOptions$Companion;->onyxDrmBuilder()Lcom/onyx/android/sdk/neopdf/OnyxDrmBuilder;

    move-result-object p2

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/StringKt;->safelyGetStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/onyx/android/sdk/neopdf/OnyxDrmBuilder;->setCertificate(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/StringKt;->safelyGetStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/onyx/android/sdk/neopdf/OnyxDrmBuilder;->setDeviceId(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/neopdf/OnyxDrmBuilder;->build()Lcom/onyx/android/sdk/neopdf/PdfDrmOptions;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/onyx/android/sdk/neopdf/PdfOpenOptions;->setDrmOptions(Lcom/onyx/android/sdk/neopdf/PdfDrmOptions;)V

    goto :goto_0

    :cond_2
    invoke-static {p2}, Lcom/onyx/android/sdk/base/extension/StringKt;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/onyx/android/sdk/neopdf/PdfDrmOptions;->Companion:Lcom/onyx/android/sdk/neopdf/PdfDrmOptions$Companion;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/neopdf/PdfDrmOptions$Companion;->passwordBuilder()Lcom/onyx/android/sdk/neopdf/PdfPasswordBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/onyx/android/sdk/neopdf/PdfPasswordBuilder;->setPassword(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/neopdf/PdfPasswordBuilder;->build()Lcom/onyx/android/sdk/neopdf/PdfDrmOptions;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/onyx/android/sdk/neopdf/PdfOpenOptions;->setDrmOptions(Lcom/onyx/android/sdk/neopdf/PdfDrmOptions;)V

    :cond_3
    :goto_0
    new-instance p2, Lcom/onyx/android/sdk/neopdf/PdfOpenResult;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x7

    const/4 v7, 0x0

    move-object v2, p2

    invoke-direct/range {v2 .. v7}, Lcom/onyx/android/sdk/neopdf/PdfOpenResult;-><init>(IZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->a:Lcom/onyx/android/sdk/neopdf/NeoPdf;

    invoke-virtual {v0, p1, v1, p2}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->openDocument(Ljava/lang/String;Lcom/onyx/android/sdk/neopdf/PdfOpenOptions;Lcom/onyx/android/sdk/neopdf/PdfOpenResult;)Z

    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v1, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "open path = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, p1, v2}, Lcom/onyx/android/sdk/base/utils/Debug;->i(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/neopdf/PdfOpenResult;->getOpenCode()I

    move-result p1

    int-to-long v0, p1

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_4

    return-wide v0

    :cond_4
    iput-object p2, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->f:Lcom/onyx/android/sdk/neopdf/PdfOpenResult;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->k()V

    return-wide v2
.end method

.method public final pageContentMatrix(I)Landroid/graphics/Matrix;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->a:Lcom/onyx/android/sdk/neopdf/NeoPdf;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->getPageContentMatrix(I)Landroid/graphics/Matrix;

    move-result-object p0

    return-object p0
.end method

.method public final pageCount()I
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->a:Lcom/onyx/android/sdk/neopdf/NeoPdf;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->pageCount()I

    move-result p0

    return p0
.end method

.method public final pageLabels()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->a:Lcom/onyx/android/sdk/neopdf/NeoPdf;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->pageLabels()[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/ArraysKt;->toList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final pageSize(I[F)Z
    .locals 1
    .param p2    # [F
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "size"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->a:Lcom/onyx/android/sdk/neopdf/NeoPdf;

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->pageSize(I[F)Z

    move-result p0

    return p0
.end method

.method public final positionByPageIndex(I)Lcom/onyx/android/sdk/reader/api/ReaderPosition;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/base/utils/PageInfoUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/PageInfoUtils;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/base/utils/PageInfoUtils;->isValidPage(I)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Lcom/onyx/android/sdk/reader/impl/ReaderPositionImpl;->Companion:Lcom/onyx/android/sdk/reader/impl/ReaderPositionImpl$Companion;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/impl/ReaderPositionImpl$Companion;->getDummy()Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->getPageIdJsonByPageIndex(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->c(Ljava/lang/String;)I

    move-result p0

    new-instance v1, Lcom/onyx/android/sdk/reader/impl/ReaderPositionImpl;

    invoke-direct {v1}, Lcom/onyx/android/sdk/reader/impl/ReaderPositionImpl;-><init>()V

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/reader/impl/ReaderPositionImpl;->fromString(Ljava/lang/String;)Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/onyx/android/sdk/reader/api/ReaderPosition;->fromPageIndex(I)Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/onyx/android/sdk/reader/api/ReaderPosition;->fromInteger(I)Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object p0

    return-object p0
.end method

.method public final positionByPositionString(Ljava/lang/String;Z)Lcom/onyx/android/sdk/reader/api/ReaderPosition;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "pageIdJson"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->getPageIdObj(Ljava/lang/String;)Lcom/onyx/android/sdk/reader/api/PageId;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->d(Lcom/onyx/android/sdk/reader/api/PageId;Z)I

    move-result p2

    sget-object v0, Lcom/onyx/android/sdk/base/utils/PageInfoUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/PageInfoUtils;

    invoke-virtual {v0, p2}, Lcom/onyx/android/sdk/base/utils/PageInfoUtils;->isValidPage(I)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Lcom/onyx/android/sdk/reader/impl/ReaderPositionImpl;->Companion:Lcom/onyx/android/sdk/reader/impl/ReaderPositionImpl$Companion;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/impl/ReaderPositionImpl$Companion;->getDummy()Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->c(Ljava/lang/String;)I

    move-result p0

    new-instance v0, Lcom/onyx/android/sdk/reader/impl/ReaderPositionImpl;

    invoke-direct {v0}, Lcom/onyx/android/sdk/reader/impl/ReaderPositionImpl;-><init>()V

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/reader/impl/ReaderPositionImpl;->fromString(Ljava/lang/String;)Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/onyx/android/sdk/reader/api/ReaderPosition;->fromPageIndex(I)Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/onyx/android/sdk/reader/api/ReaderPosition;->fromInteger(I)Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object p0

    return-object p0
.end method

.method public final removeBackground(I)Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->a:Lcom/onyx/android/sdk/neopdf/NeoPdf;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->removeBackground(I)Z

    move-result p0

    return p0
.end method

.method public final removeHighlight(ILjava/lang/String;)Z
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "highlightId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->a:Lcom/onyx/android/sdk/neopdf/NeoPdf;

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->removeHighlight(ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final removeHighlightByObjId(ILjava/lang/String;)Z
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "objId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->a:Lcom/onyx/android/sdk/neopdf/NeoPdf;

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->removeHighlightByObjId(ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final removeOnyxBookmark(I)Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->a:Lcom/onyx/android/sdk/neopdf/NeoPdf;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->removeOnyxBookmark(I)Z

    move-result p0

    return p0
.end method

.method public final removePage(I)Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->a:Lcom/onyx/android/sdk/neopdf/NeoPdf;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->removePage(I)Z

    move-result p0

    return p0
.end method

.method public final removeShape(ILjava/lang/String;)Z
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "shapeId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->a:Lcom/onyx/android/sdk/neopdf/NeoPdf;

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->removeShape(ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final removeShapeByObjId(ILjava/lang/String;)Z
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "objId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->a:Lcom/onyx/android/sdk/neopdf/NeoPdf;

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->removeShapeByObjId(ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final reopenDocument()Z
    .locals 4

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->a:Lcom/onyx/android/sdk/neopdf/NeoPdf;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->getFilePath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->a:Lcom/onyx/android/sdk/neopdf/NeoPdf;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->getOpenOptions()Lcom/onyx/android/sdk/neopdf/PdfOpenOptions;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->a:Lcom/onyx/android/sdk/neopdf/NeoPdf;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->closeDocument()Z

    iget-object v2, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->a:Lcom/onyx/android/sdk/neopdf/NeoPdf;

    invoke-virtual {v2, v0, v1}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->openDocument(Ljava/lang/String;Lcom/onyx/android/sdk/neopdf/PdfOpenOptions;)J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->k()V

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final saveAs(Ljava/lang/String;Lcom/onyx/android/sdk/reader/api/ReaderDocumentWriter$SaveOptions;)Z
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/reader/api/ReaderDocumentWriter$SaveOptions;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "options"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    new-instance v0, Lcom/onyx/android/sdk/neopdf/NeoPdfOnyxTag;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/reader/api/ReaderDocumentWriter$SaveOptions;->getFileId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p2}, Lcom/onyx/android/sdk/reader/api/ReaderDocumentWriter$SaveOptions;->getExporting()Z

    move-result v4

    const/4 v5, 0x0

    const/16 v6, 0xa

    const/4 v7, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/onyx/android/sdk/neopdf/NeoPdfOnyxTag;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 11
    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->l(Lcom/onyx/android/sdk/neopdf/NeoPdfOnyxTag;)V

    .line 12
    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->m(Lcom/onyx/android/sdk/neopdf/NeoPdfOnyxTag;)V

    .line 13
    sget-object p2, Lcom/onyx/android/sdk/neopdf/lib/JSONUtils;->INSTANCE:Lcom/onyx/android/sdk/neopdf/lib/JSONUtils;

    invoke-virtual {p2, v0}, Lcom/onyx/android/sdk/neopdf/lib/JSONUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/onyx/android/sdk/base/extension/StringKt;->safelyGetStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 14
    iget-object v1, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->a:Lcom/onyx/android/sdk/neopdf/NeoPdf;

    const-string v2, "onyxtag"

    invoke-virtual {v1, v2, p2}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->setOnyxTagMetadata(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return p0

    .line 15
    :cond_0
    iget-object p2, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->a:Lcom/onyx/android/sdk/neopdf/NeoPdf;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->getFilePath()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/onyx/android/sdk/base/extension/StringKt;->safelyEqualsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    const/4 v1, 0x1

    xor-int/2addr p2, v1

    const/4 v2, 0x0

    if-eqz p2, :cond_1

    .line 16
    iget-object v1, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->a:Lcom/onyx/android/sdk/neopdf/NeoPdf;

    const/4 v3, 0x2

    invoke-static {v1, p1, v2, v3, v2}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->saveAs$default(Lcom/onyx/android/sdk/neopdf/NeoPdf;Ljava/lang/String;Lcom/onyx/android/sdk/neopdf/PdfSaveOptions;ILjava/lang/Object;)Z

    move-result p1

    goto :goto_0

    .line 17
    :cond_1
    iget-object p1, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->a:Lcom/onyx/android/sdk/neopdf/NeoPdf;

    invoke-static {p1, v2, v1, v2}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->save$default(Lcom/onyx/android/sdk/neopdf/NeoPdf;Lcom/onyx/android/sdk/neopdf/PdfSaveOptions;ILjava/lang/Object;)Z

    move-result p1

    :goto_0
    if-eqz p1, :cond_2

    if-nez p2, :cond_2

    .line 18
    iput-object v0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->b:Lcom/onyx/android/sdk/neopdf/NeoPdfOnyxTag;

    :cond_2
    return p1
.end method

.method public final saveAs(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fileId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    new-instance v0, Lcom/onyx/android/sdk/reader/api/ReaderDocumentWriter$SaveOptions;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x7

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/onyx/android/sdk/reader/api/ReaderDocumentWriter$SaveOptions;-><init>(Ljava/lang/String;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 6
    invoke-virtual {v0, p2}, Lcom/onyx/android/sdk/reader/api/ReaderDocumentWriter$SaveOptions;->setFileId(Ljava/lang/String;)V

    .line 7
    iget-object p2, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->a:Lcom/onyx/android/sdk/neopdf/NeoPdf;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->isExported()Z

    move-result p2

    const/4 v1, 0x0

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->a:Lcom/onyx/android/sdk/neopdf/NeoPdf;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->getFilePath()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    move p2, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p2, 0x1

    :goto_1
    invoke-virtual {v0, p2}, Lcom/onyx/android/sdk/reader/api/ReaderDocumentWriter$SaveOptions;->setExporting(Z)V

    .line 8
    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/reader/api/ReaderDocumentWriter$SaveOptions;->setExportOnlyPagesWithAnnotations(Z)V

    .line 9
    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->saveAs(Ljava/lang/String;Lcom/onyx/android/sdk/reader/api/ReaderDocumentWriter$SaveOptions;)Z

    move-result p0

    return p0
.end method

.method public final saveAs(Ljava/lang/String;Z)Z
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/onyx/android/sdk/reader/api/ReaderDocumentWriter$SaveOptions;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x7

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/onyx/android/sdk/reader/api/ReaderDocumentWriter$SaveOptions;-><init>(Ljava/lang/String;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 2
    iget-object v1, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->a:Lcom/onyx/android/sdk/neopdf/NeoPdf;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/reader/api/ReaderDocumentWriter$SaveOptions;->setExporting(Z)V

    .line 3
    invoke-virtual {v0, p2}, Lcom/onyx/android/sdk/reader/api/ReaderDocumentWriter$SaveOptions;->setExportOnlyPagesWithAnnotations(Z)V

    .line 4
    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->saveAs(Ljava/lang/String;Lcom/onyx/android/sdk/reader/api/ReaderDocumentWriter$SaveOptions;)Z

    move-result p0

    return p0
.end method

.method public final saveHighlight(ILcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfHighlight;)Z
    .locals 1
    .param p2    # Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfHighlight;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "highlight"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfHighlight;->getHighlight()Lcom/onyx/android/sdk/neopdf/PdfHighlightInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/neopdf/PdfHighlightInfo;->getObjId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->writeHighlight(ILcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfHighlight;)Z

    move-result p0

    goto :goto_2

    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->updateHighlight(ILcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfHighlight;)Z

    move-result p0

    :goto_2
    return p0
.end method

.method public final saveShape(ILcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfShape;)Z
    .locals 1
    .param p2    # Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfShape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "shape"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfShape;->getPdfShape()Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->getObjId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->writeShape(ILcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfShape;)Z

    move-result p0

    goto :goto_2

    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->updateShape(ILcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfShape;)Z

    move-result p0

    :goto_2
    return p0
.end method

.method public final searchInPage(IIIIIILjava/lang/String;ZZILjava/util/List;)V
    .locals 15
    .param p7    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p11    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIIII",
            "Ljava/lang/String;",
            "ZZI",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v7, p7

    move-object/from16 v12, p11

    const-string v0, "text"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "list"

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    sget-object v1, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->h:Ljava/lang/Class;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "searching in page: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v13, 0x0

    new-array v4, v13, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v4}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p1}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->a(I)V

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    move-object v0, p0

    iget-object v0, v0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->a:Lcom/onyx/android/sdk/neopdf/NeoPdf;

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move-object v11, v14

    invoke-virtual/range {v0 .. v11}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->searchInPage(IIIIIILjava/lang/String;ZZILjava/util/List;)I

    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/neopdf/PdfTextSelection;

    sget-object v2, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->Companion:Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl$Companion;

    invoke-static {v2, v1}, Lcom/onyx/android/sdk/reader/extension/ReaderSelectionImplKt;->create(Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl$Companion;Lcom/onyx/android/sdk/neopdf/PdfTextSelection;)Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;

    move-result-object v1

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    sget-object v1, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->h:Ljava/lang/Class;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "searched results: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p11 .. p11}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v13, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final selection(IIIIIIIILcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;)I
    .locals 12
    .param p9    # Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    move-object/from16 v0, p9

    const-string v1, "selection"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/onyx/android/sdk/neopdf/PdfTextSelection;

    invoke-direct {v1}, Lcom/onyx/android/sdk/neopdf/PdfTextSelection;-><init>()V

    move-object v2, p0

    iget-object v2, v2, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->a:Lcom/onyx/android/sdk/neopdf/NeoPdf;

    move v3, p1

    move v4, p2

    move v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move-object v11, v1

    invoke-virtual/range {v2 .. v11}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->selection(IIIIIIIILcom/onyx/android/sdk/neopdf/PdfTextSelection;)I

    move-result v2

    iget-object v3, v1, Lcom/onyx/android/sdk/neopdf/PdfTextSelection;->rectangles:Ljava/util/List;

    const-string v4, "rectangles"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->setRectList(Ljava/util/List;)V

    iget-object v3, v1, Lcom/onyx/android/sdk/neopdf/PdfTextSelection;->text:Ljava/lang/String;

    if-nez v3, :cond_0

    const-string v3, ""

    :cond_0
    invoke-virtual {v0, v3}, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->setText(Ljava/lang/String;)V

    sget-object v3, Lcom/onyx/android/sdk/reader/api/PageRange;->Companion:Lcom/onyx/android/sdk/reader/api/PageRange$Companion;

    iget v4, v1, Lcom/onyx/android/sdk/neopdf/PdfTextSelection;->startIndex:I

    iget v1, v1, Lcom/onyx/android/sdk/neopdf/PdfTextSelection;->endIndex:I

    invoke-virtual {v3, v4, v1}, Lcom/onyx/android/sdk/reader/api/PageRange$Companion;->createSelectionRange(II)Lcom/onyx/android/sdk/reader/api/PageRange;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->setSelectionRange(Lcom/onyx/android/sdk/reader/api/PageRange;)V

    return v2
.end method

.method public final setAuthor(Ljava/lang/String;)Z
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->a:Lcom/onyx/android/sdk/neopdf/NeoPdf;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->getSaveOptions()Lcom/onyx/android/sdk/neopdf/PdfSaveOptions;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/neopdf/PdfSaveOptions;->setAuthor(Ljava/lang/String;)Lcom/onyx/android/sdk/neopdf/PdfSaveOptions;

    const/4 p0, 0x1

    return p0
.end method

.method public final setBackground(ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)Z
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "imageId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bitmap"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->a:Lcom/onyx/android/sdk/neopdf/NeoPdf;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->setBackground(ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    move-result p0

    return p0
.end method

.method public final setBackground(ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)Z
    .locals 7
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "imageId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bitmap"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extraAttr"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->a:Lcom/onyx/android/sdk/neopdf/NeoPdf;

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->setBackground(ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final setDocumentSaveQuality(I)V
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->a:Lcom/onyx/android/sdk/neopdf/NeoPdf;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->getSaveOptions()Lcom/onyx/android/sdk/neopdf/PdfSaveOptions;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/neopdf/PdfSaveOptions;->setSaveQuality(I)Lcom/onyx/android/sdk/neopdf/PdfSaveOptions;

    return-void
.end method

.method public final setPageId(ILjava/lang/String;)Z
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "pageId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->a:Lcom/onyx/android/sdk/neopdf/NeoPdf;

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->setPageId(ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final setPdfCallback(Lcom/onyx/android/sdk/neopdf/PdfCallback;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/neopdf/PdfCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "pdfCallback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->a:Lcom/onyx/android/sdk/neopdf/NeoPdf;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->setCallback(Lcom/onyx/android/sdk/neopdf/PdfCallback;)V

    return-void
.end method

.method public final setRenderFormFields(Z)V
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->a:Lcom/onyx/android/sdk/neopdf/NeoPdf;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->setRenderFormFields(Z)Z

    return-void
.end method

.method public final setTextGamma(F)V
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->a:Lcom/onyx/android/sdk/neopdf/NeoPdf;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->setTextGamma(F)V

    return-void
.end method

.method public final setTextGammaTable([I)V
    .locals 1
    .param p1    # [I
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "table"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->a:Lcom/onyx/android/sdk/neopdf/NeoPdf;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->setTextGammaTable([I)V

    return-void
.end method

.method public final supportCover()Z
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->s:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->b:Lcom/onyx/android/sdk/neopdf/NeoPdfOnyxTag;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/neopdf/NeoPdfOnyxTag;->getApp()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {v0, p0}, Lkotlin/collections/CollectionsKt;->contains(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final supportNoteEmbeded()Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->f:Lcom/onyx/android/sdk/neopdf/PdfOpenResult;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/neopdf/PdfOpenResult;->isXrefValid()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final updateHighlight(ILcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfHighlight;)Z
    .locals 1
    .param p2    # Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfHighlight;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "highlight"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->a:Lcom/onyx/android/sdk/neopdf/NeoPdf;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfHighlight;->getHighlight()Lcom/onyx/android/sdk/neopdf/PdfHighlightInfo;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->updateHighlight(ILcom/onyx/android/sdk/neopdf/PdfHighlightInfo;)Z

    move-result p0

    return p0
.end method

.method public final updateShape(ILcom/onyx/android/sdk/neopdf/PdfShapeInfo;Lcom/onyx/android/sdk/neopdf/PdfShapeUpdateOptions;)Z
    .locals 1
    .param p2    # Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/neopdf/PdfShapeUpdateOptions;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "shape"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "options"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->a:Lcom/onyx/android/sdk/neopdf/NeoPdf;

    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->updateShape(ILcom/onyx/android/sdk/neopdf/PdfShapeInfo;Lcom/onyx/android/sdk/neopdf/PdfShapeUpdateOptions;)Z

    move-result p0

    return p0
.end method

.method public final updateShape(ILcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfShape;)Z
    .locals 7
    .param p2    # Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfShape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "shape"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->a:Lcom/onyx/android/sdk/neopdf/NeoPdf;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfShape;->getPdfShape()Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move v2, p1

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->updateShape$default(Lcom/onyx/android/sdk/neopdf/NeoPdf;ILcom/onyx/android/sdk/neopdf/PdfShapeInfo;Lcom/onyx/android/sdk/neopdf/PdfShapeUpdateOptions;ILjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final updateTocPageIndex(Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;)V
    .locals 9
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "entry"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/android/sdk/neopdf/PdfTocEntry;

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xf

    const/4 v8, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/onyx/android/sdk/neopdf/PdfTocEntry;-><init>(JLjava/lang/String;ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;->getTocEntryPtr()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/onyx/android/sdk/neopdf/PdfTocEntry;->setEntryPtr(J)V

    sget-object v1, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;->Companion:Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin$Companion;

    iget-object v2, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->a:Lcom/onyx/android/sdk/neopdf/NeoPdf;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin$Companion;->isCajExtension(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;->getPageIndex()I

    move-result v0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/onyx/android/sdk/neopdf/PdfTocEntry;->Companion:Lcom/onyx/android/sdk/neopdf/PdfTocEntry$Companion;

    iget-object v2, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->a:Lcom/onyx/android/sdk/neopdf/NeoPdf;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lcom/onyx/android/sdk/neopdf/PdfTocEntry$Companion;->updateTocEntryDestPage(Lcom/onyx/android/sdk/neopdf/NeoPdf;Lcom/onyx/android/sdk/neopdf/PdfTocEntry;Z)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/neopdf/PdfTocEntry;->getPage()I

    move-result v0

    :goto_0
    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;->setPageIndex(I)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->positionByPageIndex(I)Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;->setPosition(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)V

    return-void
.end method

.method public final writeHighlight(ILcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfHighlight;)Z
    .locals 1
    .param p2    # Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfHighlight;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "highlight"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->a:Lcom/onyx/android/sdk/neopdf/NeoPdf;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfHighlight;->getHighlight()Lcom/onyx/android/sdk/neopdf/PdfHighlightInfo;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->writeHighlight(ILcom/onyx/android/sdk/neopdf/PdfHighlightInfo;)Z

    move-result p0

    return p0
.end method

.method public final writeShape(ILcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfShape;)Z
    .locals 1
    .param p2    # Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfShape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "shape"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->a:Lcom/onyx/android/sdk/neopdf/NeoPdf;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfShape;->getPdfShape()Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->writeShape(ILcom/onyx/android/sdk/neopdf/PdfShapeInfo;)Z

    move-result p0

    return p0
.end method
