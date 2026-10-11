.class public final Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/reader/cbox/CBoxDocument$Companion;,
        Lcom/onyx/android/sdk/reader/cbox/CBoxDocument$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCBoxDocument.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CBoxDocument.kt\ncom/onyx/android/sdk/reader/cbox/CBoxDocument\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 4 Any.kt\ncom/onyx/android/sdk/base/extension/AnyKt\n*L\n1#1,2035:1\n731#2,9:2036\n731#2,9:2047\n1855#2,2:2063\n37#3,2:2045\n37#3,2:2056\n32#4,5:2058\n*S KotlinDebug\n*F\n+ 1 CBoxDocument.kt\ncom/onyx/android/sdk/reader/cbox/CBoxDocument\n*L\n422#1:2036,9\n433#1:2047,9\n1370#1:2063,2\n422#1:2045,2\n433#1:2056,2\n763#1:2058,5\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u009c\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0012\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0015\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u001f\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0010\n\u0002\u0018\u0002\n\u0002\u0008\u0012\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0012\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u000e\u0018\u0000 \u00c7\u00022\u00020\u0001:\u0002\u00c7\u0002B\u0015\u0008\u0016\u0012\u0008\u0010\u00a5\u0002\u001a\u00030\u0091\u0001\u00a2\u0006\u0006\u0008\u00c4\u0002\u0010\u00c5\u0002B\u001f\u0008\u0016\u0012\u0008\u0010\u00a5\u0002\u001a\u00030\u0091\u0001\u0012\u0008\u0010\u009a\u0001\u001a\u00030\u0099\u0001\u00a2\u0006\u0006\u0008\u00c4\u0002\u0010\u00c6\u0002J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u0008\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\n\u0010\n\u001a\u0004\u0018\u00010\tH\u0002J\u0010\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000c\u001a\u00020\u000bH\u0002J\u0010\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u000fH\u0002J\u0010\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u000fH\u0002J\u0010\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u000fH\u0002J\u0010\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u000fH\u0002J\u0010\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u000fH\u0002J\u0010\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u000fH\u0002J\u0008\u0010\u0017\u001a\u00020\u0004H\u0002J\u0008\u0010\u0018\u001a\u00020\u0004H\u0002J\u0008\u0010\u0019\u001a\u00020\tH\u0002J\u0014\u0010\u001d\u001a\u00020\u00042\n\u0010\u001c\u001a\u00060\u001aj\u0002`\u001bH\u0002J\u0014\u0010\u001e\u001a\u00020\u00042\n\u0010\u001c\u001a\u00060\u001aj\u0002`\u001bH\u0002J\u0008\u0010 \u001a\u00020\u001fH\u0002J\u0008\u0010!\u001a\u00020\u001fH\u0002J\u0008\u0010\"\u001a\u00020\u000bH\u0002J\u0010\u0010#\u001a\u00020\u00042\u0006\u0010\u000c\u001a\u00020\u000bH\u0002J\u0008\u0010$\u001a\u00020\u0006H\u0002J\u0008\u0010%\u001a\u00020\u0006H\u0002J\u001c\u0010*\u001a\u0008\u0012\u0004\u0012\u00020)0&2\u000c\u0010(\u001a\u0008\u0012\u0004\u0012\u00020\'0&H\u0002J\u001e\u0010/\u001a\u0008\u0012\u0004\u0012\u00020.0&2\u0006\u0010,\u001a\u00020+2\u0006\u0010-\u001a\u00020\u0002H\u0002J,\u00102\u001a\u0008\u0012\u0004\u0012\u00020.0&2\u000c\u00101\u001a\u0008\u0012\u0004\u0012\u0002000&2\u0006\u0010,\u001a\u00020+2\u0006\u0010-\u001a\u00020\u0002H\u0002J\u001e\u00103\u001a\u0008\u0012\u0004\u0012\u00020\'0&2\u0006\u0010,\u001a\u00020+2\u0006\u0010-\u001a\u00020\u0002H\u0002J\u0016\u00104\u001a\u0008\u0012\u0004\u0012\u00020)0&2\u0006\u0010,\u001a\u00020+H\u0002J,\u00109\u001a\u0008\u0012\u0004\u0012\u00020)0&2\u000c\u00106\u001a\u0008\u0012\u0004\u0012\u0002050&2\u0006\u0010,\u001a\u00020+2\u0006\u00108\u001a\u000207H\u0002J\u0008\u0010:\u001a\u00020\u0004H\u0002J\u0008\u0010;\u001a\u00020\tH\u0002J\u0010\u0010>\u001a\u00020\u00062\u0006\u0010=\u001a\u00020<H\u0002J\u0008\u0010?\u001a\u00020\u0006H\u0002J \u0010C\u001a\u00020\u00022\u0006\u0010@\u001a\u00020\u00022\u0006\u0010A\u001a\u00020\u00022\u0006\u0010B\u001a\u00020\u0006H\u0002J\u0010\u0010F\u001a\u00020D2\u0006\u0010E\u001a\u00020DH\u0002J\u0008\u0010G\u001a\u00020\u0006H\u0002J\u0018\u0010J\u001a\u00020\u00062\u0006\u0010H\u001a\u00020\u001f2\u0006\u0010I\u001a\u00020.H\u0002J\u0010\u0010L\u001a\u00020\u00022\u0006\u0010K\u001a\u00020DH\u0002J\u0010\u0010N\u001a\u00020\u00022\u0006\u0010M\u001a\u00020DH\u0002J\u0010\u0010O\u001a\u00020\u00022\u0006\u0010E\u001a\u00020DH\u0002J\u0010\u0010P\u001a\u00020\u00022\u0006\u0010E\u001a\u00020DH\u0002J\u001e\u0010T\u001a\u0004\u0018\u00010S2\u0008\u0010Q\u001a\u0004\u0018\u00010.2\u0008\u0010R\u001a\u0004\u0018\u00010.H\u0002J(\u0010X\u001a\u00020\u00042\u0006\u0010I\u001a\u00020.2\u0006\u0010\u001c\u001a\u00020\u001a2\u0006\u0010U\u001a\u00020\u001a2\u0006\u0010W\u001a\u00020VH\u0002J\u0010\u0010Z\u001a\u00020Y2\u0006\u0010M\u001a\u00020DH\u0002J\u0018\u0010[\u001a\u00020Y2\u0006\u0010M\u001a\u00020<2\u0006\u0010K\u001a\u00020<H\u0002J\u0018\u0010\\\u001a\u00020Y2\u0006\u0010M\u001a\u00020D2\u0006\u0010K\u001a\u00020DH\u0002J$\u0010a\u001a\u00020\u00042\u000c\u0010_\u001a\u0008\u0012\u0004\u0012\u00020^0]2\u000c\u0010`\u001a\u0008\u0012\u0004\u0012\u00020)0&H\u0002J\u0018\u0010b\u001a\u00020\u00062\u0006\u0010H\u001a\u00020\u001f2\u0006\u0010-\u001a\u00020\u0002H\u0002J\u0018\u0010c\u001a\u00020\u00062\u0006\u0010H\u001a\u00020\u001f2\u0006\u0010-\u001a\u00020\u0002H\u0002J\u0010\u0010e\u001a\u00020\u00022\u0006\u0010d\u001a\u00020\u0002H\u0002J\u0012\u0010h\u001a\u0004\u0018\u00010\u000f2\u0006\u0010g\u001a\u00020fH\u0002J\u0012\u0010k\u001a\u0004\u0018\u00010\'2\u0006\u0010j\u001a\u00020iH\u0002J\u0008\u0010l\u001a\u00020\u000bH\u0002J\u0012\u0010m\u001a\u00020\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000bH\u0002J\u0008\u0010n\u001a\u00020\u000bH\u0002J\n\u0010o\u001a\u0004\u0018\u00010\u000bH\u0002J\n\u0010p\u001a\u0004\u0018\u00010\u000bH\u0002J\u0012\u0010q\u001a\u00020D2\u0008\u0010E\u001a\u0004\u0018\u00010<H\u0002J\u0008\u0010r\u001a\u00020\u0004H\u0002J\u0008\u0010s\u001a\u00020\u0006H\u0002J\u0018\u0010x\u001a\u00020\u00042\u0006\u0010u\u001a\u00020t2\u0006\u0010w\u001a\u00020vH\u0002J\u0010\u0010{\u001a\u00020S2\u0006\u0010z\u001a\u00020yH\u0002J\u0012\u0010}\u001a\u00020\t2\u0008\u0010|\u001a\u0004\u0018\u00010\tH\u0002J\u0018\u0010~\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020+2\u0006\u0010\u0015\u001a\u00020+H\u0002J\u001a\u0010\u007f\u001a\u0004\u0018\u00010.2\u0006\u0010E\u001a\u00020D2\u0006\u0010R\u001a\u00020\u0006H\u0002J\u001b\u0010\u0080\u0001\u001a\u0004\u0018\u00010.2\u0006\u0010\u0014\u001a\u00020\u00022\u0006\u0010\u0015\u001a\u00020\u0002H\u0002J3\u0010\u0083\u0001\u001a\u0004\u0018\u00010.2\r\u0010\u0081\u0001\u001a\u0008\u0012\u0004\u0012\u00020.0&2\u0006\u0010\u0014\u001a\u00020\u00022\u0006\u0010\u0015\u001a\u00020\u00022\u0007\u0010\u0082\u0001\u001a\u00020+H\u0002J\u001a\u0010\u0085\u0001\u001a\u00020.2\u0006\u0010I\u001a\u00020.2\u0007\u0010\u0084\u0001\u001a\u00020\u0002H\u0002J\u001a\u0010\u0086\u0001\u001a\u00020.2\u0006\u0010I\u001a\u00020.2\u0007\u0010\u0084\u0001\u001a\u00020\u0002H\u0002J\u001a\u0010\u0087\u0001\u001a\u00020\t2\u0006\u0010I\u001a\u00020.2\u0007\u0010\u0084\u0001\u001a\u00020\u0002H\u0002J\u001a\u0010\u0088\u0001\u001a\u00020\t2\u0006\u0010I\u001a\u00020.2\u0007\u0010\u0084\u0001\u001a\u00020\u0002H\u0002J\u000f\u0010\u0089\u0001\u001a\u0008\u0012\u0004\u0012\u00020V0&H\u0002J\u0013\u0010\u008a\u0001\u001a\u0004\u0018\u00010.2\u0006\u0010M\u001a\u00020DH\u0002J\u0011\u0010\u008b\u0001\u001a\u00020^2\u0006\u0010I\u001a\u00020.H\u0002J\u0012\u0010\u008f\u0001\u001a\u00030\u008e\u00012\u0008\u0010\u008d\u0001\u001a\u00030\u008c\u0001J\u001b\u0010\u008f\u0001\u001a\u00030\u008e\u00012\u0008\u0010\u008d\u0001\u001a\u00030\u008c\u00012\u0007\u0010\u0090\u0001\u001a\u00020\tJ\u0008\u0010\u0092\u0001\u001a\u00030\u0091\u0001J\u0007\u0010\u0093\u0001\u001a\u00020\tJ\u0008\u0010\u0095\u0001\u001a\u00030\u0094\u0001J\u0019\u0010\u0098\u0001\u001a\u00020\u00042\u0007\u0010\u0096\u0001\u001a\u00020\u00022\u0007\u0010\u0097\u0001\u001a\u00020\u0002J\u0011\u0010\u009b\u0001\u001a\u00020\u00042\u0008\u0010\u009a\u0001\u001a\u00030\u0099\u0001J\u0008\u0010\u009d\u0001\u001a\u00030\u009c\u0001J\u0007\u0010\u009e\u0001\u001a\u00020\u0004J\u0011\u0010\u00a1\u0001\u001a\u00020\u00042\u0008\u0010\u00a0\u0001\u001a\u00030\u009f\u0001J\u0010\u0010\u00a3\u0001\u001a\u00020\t2\u0007\u0010\u00a2\u0001\u001a\u00020\tJ\t\u0010\u00a4\u0001\u001a\u0004\u0018\u00010\tJ\u0011\u0010\u00a7\u0001\u001a\u00020\u00042\u0008\u0010\u00a6\u0001\u001a\u00030\u00a5\u0001J\u0010\u0010\u00a9\u0001\u001a\u00020\u00042\u0007\u0010\u00a8\u0001\u001a\u00020+J\u001c\u0010\u00ad\u0001\u001a\u00020\u00042\u0007\u0010\u00aa\u0001\u001a\u00020\u00022\n\u0010\u00ac\u0001\u001a\u0005\u0018\u00010\u00ab\u0001J\u0008\u0010\u00ae\u0001\u001a\u00030\u009f\u0001J\u0008\u0010\u00b0\u0001\u001a\u00030\u00af\u0001J\u0008\u0010\u00b1\u0001\u001a\u00030\u009f\u0001J\u0007\u0010\u00b2\u0001\u001a\u00020\u0006J\u0011\u0010\u00b3\u0001\u001a\u00020\u00042\u0008\u0010\u00a0\u0001\u001a\u00030\u009f\u0001J\u000f\u0010\u00b4\u0001\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u000fJ\u0010\u0010\u00b6\u0001\u001a\u000b\u0012\u0005\u0012\u00030\u00b5\u0001\u0018\u00010&J\u0007\u0010\u00b7\u0001\u001a\u00020\tJ\u0017\u0010\u00b8\u0001\u001a\u00020\t2\u0006\u0010M\u001a\u00020D2\u0006\u0010K\u001a\u00020DJ\r\u0010\u00b9\u0001\u001a\u0008\u0012\u0004\u0012\u00020\t0&J\u0012\u0010\u00bb\u0001\u001a\u0005\u0018\u00010\u00ba\u00012\u0006\u0010M\u001a\u00020DJ\n\u0010\u00bc\u0001\u001a\u0005\u0018\u00010\u00ba\u0001J\r\u0010\u00bd\u0001\u001a\u0008\u0012\u0004\u0012\u00020^0&J\u0012\u0010\u00bf\u0001\u001a\u0004\u0018\u00010^2\u0007\u0010\u00be\u0001\u001a\u00020^J\r\u0010\u00c0\u0001\u001a\u0008\u0012\u0004\u0012\u00020i0&J\u0017\u0010\u00c1\u0001\u001a\u00020\u00062\u0006\u0010E\u001a\u00020D2\u0006\u0010d\u001a\u00020\u0002J\u0019\u0010\u00c2\u0001\u001a\u0004\u0018\u00010i2\u0006\u0010E\u001a\u00020D2\u0006\u0010d\u001a\u00020\u0002J\t\u0010\u00c3\u0001\u001a\u0004\u0018\u00010\u000fJ\u0011\u0010\u00c4\u0001\u001a\u0004\u0018\u00010\u000f2\u0006\u0010j\u001a\u00020iJ\u0007\u0010\u00c5\u0001\u001a\u00020\u0002J\u0007\u0010\u00c6\u0001\u001a\u00020\u0002J\u0007\u0010\u00c7\u0001\u001a\u00020\u0002J\u0007\u0010\u00c8\u0001\u001a\u00020DJ\u0007\u0010\u00c9\u0001\u001a\u00020DJ\u0007\u0010\u00ca\u0001\u001a\u00020DJ\u0011\u0010\u00cb\u0001\u001a\u00020<2\u0008\u0010E\u001a\u0004\u0018\u00010DJ\u0007\u0010\u00cc\u0001\u001a\u00020<J\u0007\u0010\u00cd\u0001\u001a\u00020<J\u0007\u0010\u00ce\u0001\u001a\u00020\u0002J\u0007\u0010\u00cf\u0001\u001a\u00020\u0006J\u0007\u0010\u00d0\u0001\u001a\u00020\u0006J\u0007\u0010\u00d1\u0001\u001a\u00020\u0006J\u0007\u0010\u00d2\u0001\u001a\u00020\u0006J\u000f\u0010\u00d3\u0001\u001a\u00020\u00062\u0006\u0010=\u001a\u00020DJ\u000f\u0010\u00d3\u0001\u001a\u00020\u00062\u0006\u0010=\u001a\u00020<J\u000f\u0010\u00d4\u0001\u001a\u00020\u00062\u0006\u0010E\u001a\u00020DJ\u0010\u0010\u00d6\u0001\u001a\u00020\u00062\u0007\u0010\u00d5\u0001\u001a\u00020\u0002J\u0010\u0010\u00d7\u0001\u001a\u00020D2\u0007\u0010\u00d5\u0001\u001a\u00020\u0002J\u000f\u0010\u00d8\u0001\u001a\u00020\u00022\u0006\u0010E\u001a\u00020DJ\u000f\u0010\u00d8\u0001\u001a\u00020\u00022\u0006\u0010E\u001a\u00020<J\u0011\u0010\u00d9\u0001\u001a\u00020\u00062\u0008\u0010E\u001a\u0004\u0018\u00010DJ\u0011\u0010\u00dc\u0001\u001a\u00020\u00042\u0008\u0010\u00db\u0001\u001a\u00030\u00da\u0001J\u0011\u0010\u00dd\u0001\u001a\u00020\u00062\u0008\u0010\u00db\u0001\u001a\u00030\u00da\u0001J \u0010\u00df\u0001\u001a\u00020\u00062\u0008\u0010\u008d\u0001\u001a\u00030\u00de\u00012\r\u0010\u0081\u0001\u001a\u0008\u0012\u0004\u0012\u00020^0]J\u001d\u0010\u00e3\u0001\u001a\u0004\u0018\u00010^2\u0008\u0010\u00e1\u0001\u001a\u00030\u00e0\u00012\u0008\u0010\u00e2\u0001\u001a\u00030\u00e0\u0001J&\u0010\u00e3\u0001\u001a\u0004\u0018\u00010^2\u0008\u0010\u00e1\u0001\u001a\u00030\u00e0\u00012\u0008\u0010\u00e2\u0001\u001a\u00030\u00e0\u00012\u0007\u0010\u00e4\u0001\u001a\u00020\u0006J%\u0010\u00e7\u0001\u001a\u0004\u0018\u00010^2\u0007\u0010Q\u001a\u00030\u00e0\u00012\u0007\u0010R\u001a\u00030\u00e0\u00012\u0008\u0010\u00e6\u0001\u001a\u00030\u00e5\u0001J\u001c\u0010\u00ea\u0001\u001a\u0004\u0018\u00010^2\u0007\u0010Q\u001a\u00030\u00e0\u00012\u0008\u0010\u00e9\u0001\u001a\u00030\u00e8\u0001J\u001b\u0010\u00e3\u0001\u001a\u0004\u0018\u00010^2\u0007\u0010\u00eb\u0001\u001a\u00020D2\u0007\u0010\u00ec\u0001\u001a\u00020DJ\u0013\u0010\u00e3\u0001\u001a\u0004\u0018\u00010^2\u0008\u0010\u00ee\u0001\u001a\u00030\u00ed\u0001J\u001b\u0010\u00f0\u0001\u001a\u0004\u0018\u00010^2\u0007\u0010\u00eb\u0001\u001a\u00020D2\u0007\u0010\u00ef\u0001\u001a\u00020\u0002J\t\u0010\u00f1\u0001\u001a\u0004\u0018\u00010^J\t\u0010\u00f2\u0001\u001a\u0004\u0018\u00010^J\t\u0010\u00f3\u0001\u001a\u0004\u0018\u00010.J\u0011\u0010\u00f4\u0001\u001a\u0004\u0018\u00010^2\u0006\u0010M\u001a\u00020DJ\u0011\u0010\u00f5\u0001\u001a\u0004\u0018\u00010^2\u0006\u0010M\u001a\u00020DJ\u0007\u0010\u00f6\u0001\u001a\u00020\u0006J\u0011\u0010\u00f7\u0001\u001a\u0004\u0018\u00010\t2\u0006\u0010E\u001a\u00020DJ\r\u0010\u00f8\u0001\u001a\u0008\u0012\u0004\u0012\u00020\t0&J\u0011\u0010\u00f9\u0001\u001a\u0004\u0018\u00010\t2\u0006\u0010E\u001a\u00020DJ\u0011\u0010\u00fa\u0001\u001a\u0004\u0018\u00010\t2\u0006\u0010E\u001a\u00020DJ\u000f\u0010\u00fb\u0001\u001a\u00020D2\u0006\u0010E\u001a\u00020DJ\u0010\u0010\u00fd\u0001\u001a\u00020D2\u0007\u0010\u00fc\u0001\u001a\u00020\tJ\u0013\u0010\u0080\u0002\u001a\u00020\u00062\n\u0010\u00ff\u0001\u001a\u0005\u0018\u00010\u00fe\u0001J\u0014\u0010\u0081\u0002\u001a\u0005\u0018\u00010\u00fe\u00012\u0008\u0010\u00ff\u0001\u001a\u00030\u00fe\u0001J\u0007\u0010\u0082\u0002\u001a\u00020\u0006J\u0007\u0010\u0083\u0002\u001a\u00020\u0006J\u0007\u0010\u0084\u0002\u001a\u00020+J\u0007\u0010\u0085\u0002\u001a\u00020\u0006J\u0007\u0010\u0086\u0002\u001a\u00020\u0004J\u0010\u0010\u0088\u0002\u001a\u00020\u00042\u0007\u0010\u0087\u0002\u001a\u00020\u0006J\u0007\u0010\u0089\u0002\u001a\u00020\u0006J\u0010\u0010\u008a\u0002\u001a\u00020\u00042\u0007\u0010\u0087\u0002\u001a\u00020\u0006J\u0016\u0010\u008c\u0002\u001a\u0008\u0012\u0004\u0012\u00020\t0]2\u0007\u0010\u008b\u0002\u001a\u00020\tJ\u0007\u0010\u008d\u0002\u001a\u00020\u0006J\u0007\u0010\u008e\u0002\u001a\u00020\u0004J\u0010\u0010\u0090\u0002\u001a\u00020\u00042\u0007\u0010\u008f\u0002\u001a\u00020\tJ\u0008\u0010\u0092\u0002\u001a\u00030\u0091\u0002J\u0007\u0010\u0093\u0002\u001a\u00020\u0006J\u0007\u0010\u0094\u0002\u001a\u00020+J\u0007\u0010\u0095\u0002\u001a\u00020\u0002J\u0007\u0010\u0096\u0002\u001a\u00020\u0002J\r\u0010\u0097\u0002\u001a\u0008\u0012\u0004\u0012\u00020^0&J\u0007\u0010\u0098\u0002\u001a\u00020\u0004J\u0008\u0010\u009a\u0002\u001a\u00030\u0099\u0002J\u0008\u0010\u009b\u0002\u001a\u00030\u0099\u0002J\u0010\u0010\u009c\u0002\u001a\u00030\u0099\u00022\u0006\u0010=\u001a\u00020\u0002J\u0013\u0010\u009d\u0002\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020.0&0&J\u0012\u0010\u009f\u0002\u001a\u00020D2\t\u0010\u009e\u0002\u001a\u0004\u0018\u00010\tJ\u000f\u0010\u00a0\u0002\u001a\u00020\u00022\u0006\u0010E\u001a\u00020DJ\u0007\u0010\u00a1\u0002\u001a\u00020\u0004J\u0007\u0010\u00a2\u0002\u001a\u00020\u0004R\u0018\u0010\u00a5\u0002\u001a\u00030\u0091\u00018\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00a3\u0002\u0010\u00a4\u0002R\u0018\u0010\u009a\u0001\u001a\u00030\u0099\u00018\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00a6\u0002\u0010\u00a7\u0002R\u0019\u0010\u00aa\u0002\u001a\u00020\t8\u0002@\u0002X\u0082.\u00a2\u0006\u0008\n\u0006\u0008\u00a8\u0002\u0010\u00a9\u0002R\u0019\u0010\u0090\u0001\u001a\u00020\t8\u0002@\u0002X\u0082.\u00a2\u0006\u0008\n\u0006\u0008\u00ab\u0002\u0010\u00a9\u0002R\u0018\u0010\u00af\u0002\u001a\u00030\u00ac\u00028\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00ad\u0002\u0010\u00ae\u0002R$\u0010\u00b3\u0002\u001a\u000f\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u000b0\u00b0\u00028\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00b1\u0002\u0010\u00b2\u0002R\u0018\u0010\u00b7\u0002\u001a\u00030\u00b4\u00028\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00b5\u0002\u0010\u00b6\u0002R\u001a\u0010H\u001a\u0004\u0018\u00010\u001f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00b8\u0002\u0010\u00b9\u0002R\u0019\u0010\u0087\u0002\u001a\u00030\u00ba\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008a\u0010\u00bb\u0002R\u0017\u0010\u00bd\u0002\u001a\u00030\u009c\u00018\u0002X\u0082\u0004\u00a2\u0006\u0007\n\u0005\u0008X\u0010\u00bc\u0002R\u0018\u0010\u00bf\u0002\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u001d\u0010\u00be\u0002R\u0017\u0010\u00c0\u0002\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010eR\u0017\u0010\u00c1\u0002\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008x\u0010eR\u0017\u0010\u00c2\u0002\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008~\u0010eR\u0017\u0010\u00c3\u0002\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008{\u0010e\u00a8\u0006\u00c8\u0002"
    }
    d2 = {
        "Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;",
        "",
        "",
        "pagingMode",
        "",
        "J0",
        "",
        "styleChanged",
        "H0",
        "",
        "y0",
        "Lcom/onyx/engine/sdk/PageInfo;",
        "pageInfo",
        "Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$PageMargin;",
        "t",
        "Landroid/graphics/Bitmap;",
        "bitmap",
        "B",
        "A",
        "C",
        "x",
        "y",
        "z",
        "B0",
        "A0",
        "P",
        "Ljava/lang/StringBuilder;",
        "Lkotlin/text/StringBuilder;",
        "sb",
        "k",
        "l",
        "Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen;",
        "O",
        "r0",
        "E",
        "C0",
        "w0",
        "z0",
        "",
        "Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfImage;",
        "imageList",
        "Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfLink;",
        "R",
        "",
        "dx",
        "pageNumber",
        "Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfText;",
        "b0",
        "Lcom/onyx/engine/sdk/CellOfScreen;",
        "screenCharRectList",
        "d0",
        "V",
        "W",
        "Lcom/onyx/engine/sdk/LinkInfo;",
        "resultList",
        "Lcom/onyx/engine/sdk/LinkType;",
        "linkType",
        "s",
        "F0",
        "g0",
        "Lcom/onyx/engine/sdk/PinPosition;",
        "pos",
        "i0",
        "n0",
        "pageWidth",
        "index",
        "rtl",
        "a0",
        "Lcom/onyx/android/sdk/reader/api/ReaderPosition;",
        "position",
        "x0",
        "k0",
        "dataOnScreen",
        "pieceOfText",
        "q0",
        "endPosition",
        "G",
        "startPosition",
        "L",
        "K",
        "H",
        "start",
        "end",
        "Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;",
        "q",
        "originTextSb",
        "Landroid/graphics/RectF;",
        "lineRect",
        "j",
        "Lcom/onyx/android/sdk/reader/api/PageRange;",
        "u",
        "w",
        "v",
        "",
        "Lcom/onyx/android/sdk/reader/api/ReaderSelection;",
        "result",
        "linkInfoList",
        "i",
        "o0",
        "j0",
        "column",
        "Z",
        "Lcom/onyx/engine/sdk/Resource;",
        "resource",
        "D0",
        "Lcom/onyx/android/sdk/reader/api/ReaderImage;",
        "readerImage",
        "c0",
        "D",
        "F",
        "h0",
        "Q",
        "S",
        "I0",
        "E0",
        "p0",
        "Lcom/onyx/engine/sdk/TableOfContentEntry;",
        "nativeTocEntry",
        "Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;",
        "tocEntry",
        "m",
        "Lcom/onyx/engine/sdk/SearchResult;",
        "searchResult",
        "o",
        "text",
        "r",
        "n",
        "M",
        "l0",
        "list",
        "padding",
        "m0",
        "length",
        "T",
        "e0",
        "U",
        "f0",
        "N",
        "J",
        "p",
        "Lcom/onyx/engine/sdk/OpenOptions;",
        "options",
        "Lcom/onyx/engine/sdk/BookOpenResult;",
        "open",
        "bookKeyCode",
        "Lcom/onyx/engine/sdk/NeoBaseNative;",
        "getNeoBaseNative",
        "getBookPath",
        "Lcom/onyx/engine/sdk/Metadata;",
        "getMetadata",
        "width",
        "height",
        "setViewSize",
        "Lcom/onyx/engine/sdk/DisplayMetrics;",
        "displayMetrics",
        "setupDisplayMetrics",
        "Lcom/onyx/android/sdk/base/data/Size;",
        "getViewSize",
        "updateDocumentOptions",
        "Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;",
        "style",
        "setStyle",
        "tag",
        "metadataString",
        "readLanguage",
        "Lcom/onyx/android/sdk/reader/api/ReaderChineseConvertType;",
        "convertType",
        "setChineseConvertType",
        "gamma",
        "setTextGamma",
        "threshold",
        "",
        "colorTable",
        "setFontEnhancement",
        "getReaderTextStyle",
        "Lcom/onyx/engine/sdk/ReaderTextStyle;",
        "getEngineTextStyle",
        "getOriginCssStyle",
        "canBuy",
        "updateImgStyle",
        "draw",
        "Lcom/onyx/engine/sdk/FontSpec;",
        "getFontFamilyList",
        "getScreenText",
        "getText",
        "getPageParagraphList",
        "Lcom/onyx/android/sdk/reader/api/ReaderSentence;",
        "getSentence",
        "getLastSentence",
        "getPageLinks",
        "link",
        "getLinkTargetSelection",
        "getPageImages",
        "isImagePage",
        "getImagePage",
        "readCover",
        "getBitmap",
        "getTotalPage",
        "getScreenStartPage",
        "getScreenEndPage",
        "getInitPosition",
        "getScreenStartPosition",
        "getScreenEndPosition",
        "toEnginePosition",
        "getStartPosition",
        "getEndPosition",
        "getBookSize",
        "isFirstPage",
        "isLastPage",
        "nextScreen",
        "preScreen",
        "gotoPosition",
        "hitPageCache",
        "page",
        "gotoPage",
        "getPositionByPageNumber",
        "getPageNumberOfPosition",
        "isValidPosition",
        "Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;",
        "toc",
        "updateTocPageNumber",
        "readTableOfContent",
        "Lcom/onyx/android/sdk/reader/api/ReaderSearchOptions;",
        "search",
        "Lcom/onyx/android/sdk/reader/api/ReaderHitTestArgs;",
        "startArgs",
        "endArgs",
        "selectTextOnScreen",
        "findWord",
        "Lcom/onyx/android/sdk/reader/api/ReaderHitTestOptions;",
        "hitTestOptions",
        "selectOnScreen",
        "Lcom/onyx/android/sdk/reader/api/ReaderTextSplitter;",
        "splitter",
        "selectWordOnScreen",
        "startPos",
        "endPos",
        "Lcom/onyx/android/sdk/reader/api/ReaderSelectTextArgs;",
        "args",
        "textNum",
        "selectSelection",
        "firstText",
        "lastText",
        "lastPieceOfText",
        "lastSelectionEndOfLine",
        "lastTextEndOfLine",
        "hasText",
        "getXPathByPosition",
        "chapterList",
        "getChapterId",
        "getChapterName",
        "getChapterStartPosition",
        "chapterID",
        "getInitPaginationPosition",
        "Lcom/onyx/android/sdk/reader/api/PaginationChapterInfo;",
        "info",
        "hasPaginationNext",
        "paginationNext",
        "isAllPaginationComplete",
        "isCurrentChapterPaginationComplete",
        "getPaginationProgress",
        "onPaginationStart",
        "onPaginationFinally",
        "abort",
        "setAbortPagination",
        "isAbortPagination",
        "setAborted",
        "dirPath",
        "saveLogFiles",
        "isNeedClearPaginationCache",
        "clearPaginationCache",
        "chapterId",
        "updateReaderPageInfo",
        "Lcom/onyx/android/sdk/reader/api/ReaderPageProgressionDirection;",
        "getReaderPageProgressDirection",
        "supportCssOriginStyle",
        "getTotalReadingProgress",
        "getPageNumberInCurrentChapter",
        "getTotalPageCountInCurrentChapter",
        "allText",
        "layoutPageForSimpleDocument",
        "Lcom/onyx/engine/sdk/Chapter;",
        "getNextScreenChapter",
        "getPrevScreenChapter",
        "getChapter",
        "getAllPieceOfText",
        "positionStr",
        "getPositionFromString",
        "getPositionInt",
        "destroy",
        "close",
        "a",
        "Lcom/onyx/engine/sdk/NeoBaseNative;",
        "neoNative",
        "b",
        "Lcom/onyx/engine/sdk/DisplayMetrics;",
        "c",
        "Ljava/lang/String;",
        "path",
        "d",
        "Lcom/onyx/android/sdk/reader/cbox/page/BookManager;",
        "e",
        "Lcom/onyx/android/sdk/reader/cbox/page/BookManager;",
        "bookManager",
        "Ljava/util/TreeMap;",
        "f",
        "Ljava/util/TreeMap;",
        "screenPageInfoMap",
        "Lcom/onyx/android/sdk/reader/cbox/page/ScreenDataLruCache;",
        "g",
        "Lcom/onyx/android/sdk/reader/cbox/page/ScreenDataLruCache;",
        "screenDataLruCache",
        "h",
        "Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen;",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "Lcom/onyx/android/sdk/base/data/Size;",
        "viewSize",
        "I",
        "columnCount",
        "lazyLoadLink",
        "debugImageRegion",
        "debugLinkRegion",
        "debugTextRegion",
        "<init>",
        "(Lcom/onyx/engine/sdk/NeoBaseNative;)V",
        "(Lcom/onyx/engine/sdk/NeoBaseNative;Lcom/onyx/engine/sdk/DisplayMetrics;)V",
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
        "SMAP\nCBoxDocument.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CBoxDocument.kt\ncom/onyx/android/sdk/reader/cbox/CBoxDocument\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 4 Any.kt\ncom/onyx/android/sdk/base/extension/AnyKt\n*L\n1#1,2035:1\n731#2,9:2036\n731#2,9:2047\n1855#2,2:2063\n37#3,2:2045\n37#3,2:2056\n32#4,5:2058\n*S KotlinDebug\n*F\n+ 1 CBoxDocument.kt\ncom/onyx/android/sdk/reader/cbox/CBoxDocument\n*L\n422#1:2036,9\n433#1:2047,9\n1370#1:2063,2\n422#1:2045,2\n433#1:2056,2\n763#1:2058,5\n*E\n"
    }
.end annotation


# static fields
.field public static final A:I = 0x2

.field public static final B:Ljava/lang/String; = "[($(*+.\\[?\\^\\{\\\\)]"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final C:Ljava/lang/String; = "\\\\$0"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final Companion:Lcom/onyx/android/sdk/reader/cbox/CBoxDocument$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final D:I = 0x1f4

.field public static final E:I = 0x64

.field public static p:J = 0x0L

.field public static q:J = 0x0L

.field public static r:J = 0x0L

.field public static s:J = 0x0L

.field public static t:J = 0x0L

.field public static u:J = 0x0L

.field public static v:J = 0x0L

.field public static w:J = 0x0L

.field public static x:J = 0x0L

.field public static final y:I = 0x32

.field public static final z:I = 0xc8


# instance fields
.field public final a:Lcom/onyx/engine/sdk/NeoBaseNative;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Lcom/onyx/engine/sdk/DisplayMetrics;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public final e:Lcom/onyx/android/sdk/reader/cbox/page/BookManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final f:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/Integer;",
            "Lcom/onyx/engine/sdk/PageInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final g:Lcom/onyx/android/sdk/reader/cbox/page/ScreenDataLruCache;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public h:Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public i:Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final j:Lcom/onyx/android/sdk/base/data/Size;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public k:I

.field public l:Z

.field public m:Z

.field public n:Z

.field public o:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->Companion:Lcom/onyx/android/sdk/reader/cbox/CBoxDocument$Companion;

    const-wide/16 v0, 0x1

    sput-wide v0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->q:J

    const-wide/16 v0, 0x2

    sput-wide v0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->r:J

    const-wide/16 v0, 0x3

    sput-wide v0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->s:J

    const-wide/16 v0, 0x4

    sput-wide v0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->t:J

    const-wide/16 v0, 0x5

    sput-wide v0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->u:J

    const-wide/16 v0, 0x6

    sput-wide v0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->v:J

    const-wide/16 v0, 0x7

    sput-wide v0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->w:J

    const-wide/16 v0, 0x8

    sput-wide v0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->x:J

    sget-object v0, Lcom/onyx/android/sdk/reader/cbox/utils/CBoxUtils;->INSTANCE:Lcom/onyx/android/sdk/reader/cbox/utils/CBoxUtils;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/reader/cbox/utils/CBoxUtils;->init()V

    return-void
.end method

.method public constructor <init>(Lcom/onyx/engine/sdk/NeoBaseNative;)V
    .locals 4
    .param p1    # Lcom/onyx/engine/sdk/NeoBaseNative;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "neoNative"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->f:Ljava/util/TreeMap;

    .line 3
    new-instance v0, Lcom/onyx/android/sdk/reader/cbox/page/ScreenDataLruCache;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/reader/cbox/page/ScreenDataLruCache;-><init>(I)V

    iput-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->g:Lcom/onyx/android/sdk/reader/cbox/page/ScreenDataLruCache;

    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    new-instance v0, Lcom/onyx/android/sdk/base/data/Size;

    const/4 v3, 0x0

    invoke-direct {v0, v2, v2, v1, v3}, Lcom/onyx/android/sdk/base/data/Size;-><init>(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->j:Lcom/onyx/android/sdk/base/data/Size;

    const/4 v1, 0x1

    .line 6
    iput v1, p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->k:I

    .line 7
    iput-boolean v1, p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->l:Z

    .line 8
    iput-object p1, p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->a:Lcom/onyx/engine/sdk/NeoBaseNative;

    .line 9
    sget-object v1, Lcom/onyx/android/sdk/reader/cbox/utils/CBoxUtils;->INSTANCE:Lcom/onyx/android/sdk/reader/cbox/utils/CBoxUtils;

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/reader/cbox/utils/CBoxUtils;->getDisplayMetrics(Lcom/onyx/android/sdk/base/data/Size;)Lcom/onyx/engine/sdk/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->b:Lcom/onyx/engine/sdk/DisplayMetrics;

    .line 10
    new-instance v1, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;

    invoke-direct {v1, p1, v0}, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;-><init>(Lcom/onyx/engine/sdk/NeoBaseNative;Lcom/onyx/engine/sdk/DisplayMetrics;)V

    iput-object v1, p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->e:Lcom/onyx/android/sdk/reader/cbox/page/BookManager;

    return-void
.end method

.method public constructor <init>(Lcom/onyx/engine/sdk/NeoBaseNative;Lcom/onyx/engine/sdk/DisplayMetrics;)V
    .locals 4
    .param p1    # Lcom/onyx/engine/sdk/NeoBaseNative;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/engine/sdk/DisplayMetrics;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "neoNative"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "displayMetrics"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->f:Ljava/util/TreeMap;

    .line 13
    new-instance v0, Lcom/onyx/android/sdk/reader/cbox/page/ScreenDataLruCache;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/reader/cbox/page/ScreenDataLruCache;-><init>(I)V

    iput-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->g:Lcom/onyx/android/sdk/reader/cbox/page/ScreenDataLruCache;

    .line 14
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 15
    new-instance v0, Lcom/onyx/android/sdk/base/data/Size;

    const/4 v3, 0x0

    invoke-direct {v0, v2, v2, v1, v3}, Lcom/onyx/android/sdk/base/data/Size;-><init>(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->j:Lcom/onyx/android/sdk/base/data/Size;

    const/4 v0, 0x1

    .line 16
    iput v0, p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->k:I

    .line 17
    iput-boolean v0, p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->l:Z

    .line 18
    iput-object p1, p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->a:Lcom/onyx/engine/sdk/NeoBaseNative;

    .line 19
    iput-object p2, p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->b:Lcom/onyx/engine/sdk/DisplayMetrics;

    .line 20
    new-instance v0, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;

    invoke-direct {v0, p1, p2}, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;-><init>(Lcom/onyx/engine/sdk/NeoBaseNative;Lcom/onyx/engine/sdk/DisplayMetrics;)V

    iput-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->e:Lcom/onyx/android/sdk/reader/cbox/page/BookManager;

    return-void
.end method

.method public static final G0(Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$isAbort"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "NativeDocument abort search"

    invoke-virtual {v0, v1, v3, v2}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->a:Lcom/onyx/engine/sdk/NeoBaseNative;

    invoke-interface {p0}, Lcom/onyx/engine/sdk/NeoBaseNative;->abortSearch()V

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public static final I(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public static final X(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/util/List;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public static final Y(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/util/List;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public static synthetic a(Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->G0(Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    return-void
.end method

.method public static final synthetic access$getERROR_ADOBE_DRM_INVALID$cp()J
    .locals 2

    sget-wide v0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->x:J

    return-wide v0
.end method

.method public static final synthetic access$getERROR_DRM_INVALID$cp()J
    .locals 2

    sget-wide v0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->w:J

    return-wide v0
.end method

.method public static final synthetic access$getERROR_FILE_INVALID$cp()J
    .locals 2

    sget-wide v0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->s:J

    return-wide v0
.end method

.method public static final synthetic access$getERROR_FILE_NOT_FOUND$cp()J
    .locals 2

    sget-wide v0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->r:J

    return-wide v0
.end method

.method public static final synthetic access$getERROR_PAGE_NOT_FOUND$cp()J
    .locals 2

    sget-wide v0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->v:J

    return-wide v0
.end method

.method public static final synthetic access$getERROR_PASSWORD_INVALID$cp()J
    .locals 2

    sget-wide v0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->t:J

    return-wide v0
.end method

.method public static final synthetic access$getERROR_SECURITY$cp()J
    .locals 2

    sget-wide v0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->u:J

    return-wide v0
.end method

.method public static final synthetic access$getERROR_UNKNOWN$cp()J
    .locals 2

    sget-wide v0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->q:J

    return-wide v0
.end method

.method public static final synthetic access$getNO_ERROR$cp()J
    .locals 2

    sget-wide v0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->p:J

    return-wide v0
.end method

.method public static final synthetic access$setERROR_ADOBE_DRM_INVALID$cp(J)V
    .locals 0

    sput-wide p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->x:J

    return-void
.end method

.method public static final synthetic access$setERROR_DRM_INVALID$cp(J)V
    .locals 0

    sput-wide p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->w:J

    return-void
.end method

.method public static final synthetic access$setERROR_FILE_INVALID$cp(J)V
    .locals 0

    sput-wide p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->s:J

    return-void
.end method

.method public static final synthetic access$setERROR_FILE_NOT_FOUND$cp(J)V
    .locals 0

    sput-wide p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->r:J

    return-void
.end method

.method public static final synthetic access$setERROR_PAGE_NOT_FOUND$cp(J)V
    .locals 0

    sput-wide p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->v:J

    return-void
.end method

.method public static final synthetic access$setERROR_PASSWORD_INVALID$cp(J)V
    .locals 0

    sput-wide p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->t:J

    return-void
.end method

.method public static final synthetic access$setERROR_SECURITY$cp(J)V
    .locals 0

    sput-wide p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->u:J

    return-void
.end method

.method public static final synthetic access$setERROR_UNKNOWN$cp(J)V
    .locals 0

    sput-wide p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->q:J

    return-void
.end method

.method public static final synthetic access$setNO_ERROR$cp(J)V
    .locals 0

    sput-wide p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->p:J

    return-void
.end method

.method public static synthetic b(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->t0(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->v0(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->u0(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->Y(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->I(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static synthetic g(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->X(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->s0(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final s0(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/util/List;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public static final t0(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/util/List;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public static final u0(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/util/List;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public static final v0(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/util/List;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public final A(Landroid/graphics/Bitmap;)V
    .locals 8

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->F0()V

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->f:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->clear()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->n0()Z

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->k:I

    div-int/2addr v1, v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    const-string v3, "createBitmap(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lcom/onyx/android/sdk/base/utils/BitmapUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/BitmapUtils;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/base/utils/BitmapUtils;->createBitmapPaint()Landroid/graphics/Paint;

    move-result-object v3

    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget p1, p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->k:I

    const/4 v5, 0x0

    :goto_0
    if-ge v5, p1, :cond_2

    invoke-virtual {p0, v1, v5, v0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->a0(IIZ)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p0, v2}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->C(Landroid/graphics/Bitmap;)V

    const/4 v7, 0x0

    invoke-virtual {v4, v2, v6, v7, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget v6, p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->k:I

    add-int/lit8 v6, v6, -0x1

    if-lt v5, v6, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->w0()Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    sget-object p1, Lcom/onyx/android/sdk/base/utils/BitmapUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/BitmapUtils;

    invoke-virtual {p1, v2}, Lcom/onyx/android/sdk/base/utils/BitmapUtils;->recycle(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->F0()V

    return-void
.end method

.method public final A0()V
    .locals 5

    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/utils/Debug;->getDebug()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->P()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "\n"

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lkotlin/text/Regex;->split(Ljava/lang/CharSequence;I)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p0, v0}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_2

    move v2, v3

    goto :goto_0

    :cond_2
    move v2, v1

    :goto_0
    if-nez v2, :cond_1

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/util/ListIterator;->nextIndex()I

    move-result v0

    add-int/2addr v0, v3

    invoke-static {p0, v0}, Lkotlin/collections/CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object p0

    goto :goto_1

    :cond_3
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p0

    :goto_1
    check-cast p0, Ljava/util/Collection;

    new-array v0, v1, [Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    array-length v0, p0

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v2, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v3, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v0, v4}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    return-void
.end method

.method public final B(Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->f:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->clear()V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->C(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public final B0()V
    .locals 7

    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/utils/Debug;->getDebug()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->l(Ljava/lang/StringBuilder;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "toString(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "\n"

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lkotlin/text/Regex;->split(Ljava/lang/CharSequence;I)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p0, v0}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_2

    move v2, v3

    goto :goto_0

    :cond_2
    move v2, v1

    :goto_0
    if-nez v2, :cond_1

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/util/ListIterator;->nextIndex()I

    move-result v0

    add-int/2addr v0, v3

    invoke-static {p0, v0}, Lkotlin/collections/CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object p0

    goto :goto_1

    :cond_3
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p0

    :goto_1
    check-cast p0, Ljava/util/Collection;

    new-array v0, v1, [Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    array-length v0, p0

    move v2, v1

    :goto_2
    if-ge v2, v0, :cond_4

    aget-object v3, p0, v2

    sget-object v4, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v5, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;

    new-array v6, v1, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v3, v6}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method public final C(Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->e:Lcom/onyx/android/sdk/reader/cbox/page/BookManager;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->drawPage(Landroid/graphics/Bitmap;)Lcom/onyx/engine/sdk/PageInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->C0(Lcom/onyx/engine/sdk/PageInfo;)V

    return-void
.end method

.method public final C0(Lcom/onyx/engine/sdk/PageInfo;)V
    .locals 1

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->f:Ljava/util/TreeMap;

    invoke-virtual {p1}, Lcom/onyx/engine/sdk/PageInfo;->getPageNumber()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final D()Lcom/onyx/engine/sdk/PageInfo;
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->Q()Lcom/onyx/engine/sdk/PageInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->F(Lcom/onyx/engine/sdk/PageInfo;)Lcom/onyx/engine/sdk/PageInfo;

    move-result-object p0

    return-object p0
.end method

.method public final D0(Lcom/onyx/engine/sdk/Resource;)Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->a:Lcom/onyx/engine/sdk/NeoBaseNative;

    invoke-interface {p0, p1}, Lcom/onyx/engine/sdk/NeoBaseNative;->readBitmap(Lcom/onyx/engine/sdk/Resource;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public final E()Lcom/onyx/engine/sdk/PageInfo;
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->e:Lcom/onyx/android/sdk/reader/cbox/page/BookManager;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->layoutCurrentPage()Lcom/onyx/engine/sdk/PageInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->C0(Lcom/onyx/engine/sdk/PageInfo;)V

    return-object v0
.end method

.method public final E0()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->h:Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen;

    return-void
.end method

.method public final F(Lcom/onyx/engine/sdk/PageInfo;)Lcom/onyx/engine/sdk/PageInfo;
    .locals 0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->h0()Lcom/onyx/engine/sdk/PageInfo;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public final F0()V
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->D()Lcom/onyx/engine/sdk/PageInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/engine/sdk/PageInfo;->getPageRange()Lcom/onyx/engine/sdk/PageRange;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/engine/sdk/PageRange;->getStart()Lcom/onyx/engine/sdk/PinPosition;

    move-result-object v0

    const-string v1, "getStart(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->i0(Lcom/onyx/engine/sdk/PinPosition;)Z

    return-void
.end method

.method public final G(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)I
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->H(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)I

    move-result p1

    if-gez p1, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->O()Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen;->getTextList()Ljava/util/List;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-static {p1, p0}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result p1

    :cond_0
    return p1
.end method

.method public final H(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)I
    .locals 4

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->toEnginePosition(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Lcom/onyx/engine/sdk/PinPosition;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->O()Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen;->getPositionTextMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0}, Lcom/onyx/engine/sdk/PinPosition;->getPositionInt()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfText;

    if-nez v1, :cond_0

    new-instance v1, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfText;

    new-instance v2, Lcom/onyx/engine/sdk/CellOfScreen;

    invoke-direct {v2}, Lcom/onyx/engine/sdk/CellOfScreen;-><init>()V

    new-instance v3, Lcom/onyx/android/sdk/reader/impl/ReaderPositionImpl;

    invoke-direct {v3}, Lcom/onyx/android/sdk/reader/impl/ReaderPositionImpl;-><init>()V

    invoke-virtual {v0}, Lcom/onyx/engine/sdk/PinPosition;->getPositionInt()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/onyx/android/sdk/reader/impl/ReaderPositionImpl;->fromInteger(I)Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfText;-><init>(Lcom/onyx/engine/sdk/CellOfScreen;Lcom/onyx/android/sdk/reader/api/ReaderPosition;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen;->getTextList()Ljava/util/List;

    move-result-object p0

    sget-object v0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument$findIndexByPositionOnScreen$index$1;->INSTANCE:Lcom/onyx/android/sdk/reader/cbox/CBoxDocument$findIndexByPositionOnScreen$index$1;

    new-instance v2, Lcom/sunia/HTREnginev2/x00;

    invoke-direct {v2, v0}, Lcom/sunia/HTREnginev2/x00;-><init>(Lkotlin/jvm/functions/Function2;)V

    invoke-static {p0, v1, v2}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen;->getTextList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    :goto_0
    if-gez p0, :cond_1

    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v1, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "findIndexByPositionOnScreen fail, position = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, p1, v2}, Lcom/onyx/android/sdk/base/utils/Debug;->e(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return p0
.end method

.method public final H0(Z)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->f:Ljava/util/TreeMap;

    invoke-virtual {p1}, Ljava/util/TreeMap;->clear()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->E0()V

    sget-object p1, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "style hash changed"

    invoke-virtual {p1, v0, v2, v1}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->B0()V

    :cond_0
    return-void
.end method

.method public final I0(Lcom/onyx/engine/sdk/PinPosition;)Lcom/onyx/android/sdk/reader/api/ReaderPosition;
    .locals 0

    sget-object p0, Lcom/onyx/android/sdk/reader/cbox/utils/CBoxUtils;->INSTANCE:Lcom/onyx/android/sdk/reader/cbox/utils/CBoxUtils;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/cbox/utils/CBoxUtils;->convert(Lcom/onyx/engine/sdk/PinPosition;)Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object p0

    return-object p0
.end method

.method public final J(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfText;
    .locals 6

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->O()Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen;->getTextList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->L(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)I

    move-result p0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    const/4 v1, 0x0

    move-object v2, v1

    :goto_0
    if-ge p0, p1, :cond_2

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfText;

    if-nez v2, :cond_0

    move-object v2, v3

    goto :goto_1

    :cond_0
    invoke-virtual {v3}, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfText;->getCellOfScreen()Lcom/onyx/engine/sdk/CellOfScreen;

    move-result-object v4

    invoke-virtual {v4}, Lcom/onyx/engine/sdk/CellOfScreen;->getParaNumber()I

    move-result v4

    invoke-virtual {v2}, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfText;->getCellOfScreen()Lcom/onyx/engine/sdk/CellOfScreen;

    move-result-object v5

    invoke-virtual {v5}, Lcom/onyx/engine/sdk/CellOfScreen;->getParaNumber()I

    move-result v5

    if-ne v4, v5, :cond_2

    invoke-virtual {v3}, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfText;->getCellOfScreen()Lcom/onyx/engine/sdk/CellOfScreen;

    move-result-object v4

    invoke-virtual {v4}, Lcom/onyx/engine/sdk/CellOfScreen;->getLineNumber()I

    move-result v4

    invoke-virtual {v2}, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfText;->getCellOfScreen()Lcom/onyx/engine/sdk/CellOfScreen;

    move-result-object v5

    invoke-virtual {v5}, Lcom/onyx/engine/sdk/CellOfScreen;->getLineNumber()I

    move-result v5

    if-eq v4, v5, :cond_1

    goto :goto_2

    :cond_1
    :goto_1
    add-int/lit8 p0, p0, 0x1

    move-object v1, v3

    goto :goto_0

    :cond_2
    :goto_2
    return-object v1
.end method

.method public final J0(I)V
    .locals 3

    sget-object v0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->Companion:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Companion;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Companion;->getPAGING_MODE_SINGLE_COLUMN()I

    move-result v1

    const/4 v2, 0x1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Companion;->getPAGING_MODE_TWO_COLUMN()I

    move-result v0

    if-ne p1, v0, :cond_1

    const/4 v2, 0x2

    :cond_1
    :goto_0
    iget p1, p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->k:I

    if-eq p1, v2, :cond_2

    iput v2, p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->k:I

    iget-object p1, p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->e:Lcom/onyx/android/sdk/reader/cbox/page/BookManager;

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->j:Lcom/onyx/android/sdk/base/data/Size;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/Size;->getWidth()I

    move-result v0

    div-int/2addr v0, v2

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->j:Lcom/onyx/android/sdk/base/data/Size;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/Size;->getHeight()I

    move-result p0

    invoke-virtual {p1, v0, p0}, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->setViewSize(II)Z

    :cond_2
    return-void
.end method

.method public final K(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)I
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->H(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)I

    move-result p1

    if-gez p1, :cond_0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->O()Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen;->getTextList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-static {p1, p0}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    invoke-static {p1, p0}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result p0

    return p0
.end method

.method public final L(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)I
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->K(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)I

    move-result p0

    return p0
.end method

.method public final M(Lcom/onyx/android/sdk/reader/api/ReaderPosition;Z)Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfText;
    .locals 4

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->O()Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen;->getPositionTextMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1}, Lcom/onyx/android/sdk/reader/api/ReaderPosition;->asInteger()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfText;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen;->getHalfWordTextList()Ljava/util/List;

    move-result-object p0

    invoke-static {p0, p1}, Lkotlin/collections/CollectionsKt;->indexOf(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_0

    return-object p1

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfText;->getCellOfScreen()Lcom/onyx/engine/sdk/CellOfScreen;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/engine/sdk/CellOfScreen;->isHalfWord()Z

    move-result p1

    if-eqz p1, :cond_2

    add-int/lit8 p1, v0, 0x1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    :goto_0
    if-ge p1, v2, :cond_2

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfText;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfText;->getCellOfScreen()Lcom/onyx/engine/sdk/CellOfScreen;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onyx/engine/sdk/CellOfScreen;->isHalfWord()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, -0x1

    :goto_2
    const/4 p1, 0x0

    const/4 v2, -0x1

    if-ge v2, v0, :cond_3

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfText;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfText;->getCellOfScreen()Lcom/onyx/engine/sdk/CellOfScreen;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/engine/sdk/CellOfScreen;->isHalfWord()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_3
    if-eqz p2, :cond_4

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfText;

    goto :goto_3

    :cond_4
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfText;

    :goto_3
    return-object p0
.end method

.method public final N()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->k0()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->O()Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen;->getTextList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfText;

    new-instance v2, Landroid/graphics/RectF;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfText;->getCellOfScreen()Lcom/onyx/engine/sdk/CellOfScreen;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/engine/sdk/CellOfScreen;->getRect()Landroid/graphics/RectF;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    sget-object v1, Lcom/onyx/android/sdk/base/utils/RectUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/RectUtils;

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/utils/RectUtils;->isNullOrEmpty(Landroid/graphics/RectF;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public final O()Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen;
    .locals 4

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->h:Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->g0()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->g:Lcom/onyx/android/sdk/reader/cbox/page/ScreenDataLruCache;

    invoke-virtual {v1, v0}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen;

    if-eqz v1, :cond_0

    iput-object v1, p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->h:Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen;

    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v1, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "getDataOnScreen hit cache"

    invoke-virtual {v0, v1, v3, v2}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->r0()Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen;

    move-result-object v1

    iput-object v1, p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->h:Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen;

    iget-object v2, p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->g:Lcom/onyx/android/sdk/reader/cbox/page/ScreenDataLruCache;

    invoke-virtual {v2, v0, v1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->h:Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0
.end method

.method public final P()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "--- start debug info ---"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->l(Ljava/lang/StringBuilder;)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->k(Ljava/lang/StringBuilder;)V

    const-string p0, "--- end debug info ---"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "toString(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final Q()Lcom/onyx/engine/sdk/PageInfo;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->f:Ljava/util/TreeMap;

    invoke-virtual {p0}, Ljava/util/TreeMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/engine/sdk/PageInfo;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final R(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfImage;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfLink;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/reader/cbox/utils/LinkInfoUtils;->INSTANCE:Lcom/onyx/android/sdk/reader/cbox/utils/LinkInfoUtils;

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->a:Lcom/onyx/engine/sdk/NeoBaseNative;

    invoke-virtual {v0, p0, p1}, Lcom/onyx/android/sdk/reader/cbox/utils/LinkInfoUtils;->getImageFootnoteLinks(Lcom/onyx/engine/sdk/NeoBaseNative;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final S()Lcom/onyx/engine/sdk/PageInfo;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->f:Ljava/util/TreeMap;

    invoke-virtual {p0}, Ljava/util/TreeMap;->lastEntry()Ljava/util/Map$Entry;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/engine/sdk/PageInfo;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final T(Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfText;I)Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfText;
    .locals 3

    if-nez p2, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->O()Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen;->getTextList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_1

    return-object p1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    const/4 p1, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, -0x1

    if-ge v2, v0, :cond_3

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfText;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfText;->getCellOfScreen()Lcom/onyx/engine/sdk/CellOfScreen;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/engine/sdk/CellOfScreen;->getWord()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    if-lt v1, p2, :cond_2

    return-object p1

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p1
.end method

.method public final U(Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfText;I)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->k0()Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    if-gtz p2, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->O()Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen;->getTextList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-gtz p1, :cond_2

    return-object v1

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 p1, p1, -0x1

    :goto_0
    const/4 v1, -0x1

    if-ge v1, p1, :cond_4

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfText;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfText;->getCellOfScreen()Lcom/onyx/engine/sdk/CellOfScreen;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/engine/sdk/CellOfScreen;->getWord()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lt v1, p2, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_4
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "toString(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final V(FI)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FI)",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfImage;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->a:Lcom/onyx/engine/sdk/NeoBaseNative;

    invoke-interface {p0}, Lcom/onyx/engine/sdk/NeoBaseNative;->getPageImages()Ljava/util/List;

    move-result-object p0

    const-string v0, "getPageImages(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/engine/sdk/ImageInfo;

    new-instance v2, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfImage;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-direct {v2, v1, v4, v3, v4}, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfImage;-><init>(Lcom/onyx/engine/sdk/ImageInfo;Lcom/onyx/android/sdk/reader/api/ReaderPosition;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v1}, Lcom/onyx/engine/sdk/ImageInfo;->getRect()Landroid/graphics/RectF;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3}, Landroid/graphics/RectF;->offset(FF)V

    invoke-virtual {v2, p2}, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfImage;->setPageNumber(I)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    return-object v0

    :catchall_0
    move-exception p0

    sget-object p1, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/base/utils/Debug;->w(Ljava/lang/Throwable;)V

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final W(F)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfLink;",
            ">;"
        }
    .end annotation

    const-string v0, "computeIfAbsent(...)"

    :try_start_0
    sget-object v1, Lcom/onyx/android/sdk/reader/cbox/utils/LinkInfoUtils;->INSTANCE:Lcom/onyx/android/sdk/reader/cbox/utils/LinkInfoUtils;

    iget-object v2, p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->a:Lcom/onyx/engine/sdk/NeoBaseNative;

    invoke-interface {v2}, Lcom/onyx/engine/sdk/NeoBaseNative;->getPageLinks()Ljava/util/List;

    move-result-object v2

    const-string v3, "getPageLinks(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/reader/cbox/utils/LinkInfoUtils;->filterInvalidLink(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/util/Collection;

    invoke-static {v3}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/reader/cbox/utils/LinkInfoUtils;->splitLinkInfoByType(Ljava/util/List;)Ljava/util/Map;

    move-result-object v2

    sget-object v3, Lcom/onyx/engine/sdk/LinkType;->NOT_LOADED:Lcom/onyx/engine/sdk/LinkType;

    sget-object v4, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument$getPageLinksImpl$internalNormalLinkList$1;->INSTANCE:Lcom/onyx/android/sdk/reader/cbox/CBoxDocument$getPageLinksImpl$internalNormalLinkList$1;

    new-instance v5, Lcom/sunia/HTREnginev2/q00;

    invoke-direct {v5, v4}, Lcom/sunia/HTREnginev2/q00;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-interface {v2, v3, v5}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Ljava/util/List;

    sget-object v5, Lcom/onyx/engine/sdk/LinkType;->WEBSITE:Lcom/onyx/engine/sdk/LinkType;

    sget-object v6, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument$getPageLinksImpl$websiteLinkList$1;->INSTANCE:Lcom/onyx/android/sdk/reader/cbox/CBoxDocument$getPageLinksImpl$websiteLinkList$1;

    new-instance v7, Lcom/sunia/HTREnginev2/r00;

    invoke-direct {v7, v6}, Lcom/sunia/HTREnginev2/r00;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-interface {v2, v5, v7}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v4, p1, v3}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->s(Ljava/util/List;FLcom/onyx/engine/sdk/LinkType;)Ljava/util/List;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0, v2, p1, v5}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->s(Ljava/util/List;FLcom/onyx/engine/sdk/LinkType;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-boolean p1, p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->l:Z

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->a:Lcom/onyx/engine/sdk/NeoBaseNative;

    invoke-virtual {v1, p0, v3}, Lcom/onyx/android/sdk/reader/cbox/utils/LinkInfoUtils;->updateInternalNormalLinkInfo(Lcom/onyx/engine/sdk/NeoBaseNative;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-object v0

    :catchall_0
    move-exception p0

    sget-object p1, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/base/utils/Debug;->w(Ljava/lang/Throwable;)V

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final Z(I)I
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->f:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->n0()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->asReversedMutable(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    :cond_0
    invoke-static {v0, p1}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->getElement(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/engine/sdk/PageInfo;

    if-nez p0, :cond_1

    const/4 p0, -0x1

    return p0

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/engine/sdk/PageInfo;->getPageNumber()I

    move-result p0

    return p0
.end method

.method public final a0(IIZ)I
    .locals 0

    if-eqz p3, :cond_0

    iget p0, p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->k:I

    add-int/lit8 p0, p0, -0x1

    sub-int/2addr p0, p2

    mul-int/2addr p0, p1

    goto :goto_0

    :cond_0
    mul-int p0, p2, p1

    :goto_0
    return p0
.end method

.method public final allText()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/reader/api/ReaderSelection;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->k0()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->O()Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen;->getTextList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfText;

    invoke-virtual {p0, v2}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->p(Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfText;)Lcom/onyx/android/sdk/reader/api/ReaderSelection;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final b0(FI)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FI)",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfText;",
            ">;"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->E()Lcom/onyx/engine/sdk/PageInfo;

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->a:Lcom/onyx/engine/sdk/NeoBaseNative;

    invoke-interface {v0}, Lcom/onyx/engine/sdk/NeoBaseNative;->getCellOfScreenList()Ljava/util/List;

    move-result-object v0

    const-string v1, "getCellOfScreenList(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p1, p2}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->d0(Ljava/util/List;FI)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    sget-object p1, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/base/utils/Debug;->w(Ljava/lang/Throwable;)V

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final c0(Lcom/onyx/android/sdk/reader/api/ReaderImage;)Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfImage;
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->O()Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen;->getPositionImageMap()Ljava/util/Map;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->isNullOrEmpty(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lcom/onyx/android/sdk/reader/api/ReaderImage;->position()Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object p1

    invoke-interface {p1}, Lcom/onyx/android/sdk/reader/api/ReaderPosition;->asInteger()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfImage;

    :goto_0
    return-object p0
.end method

.method public final canBuy()Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->e:Lcom/onyx/android/sdk/reader/cbox/page/BookManager;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->getCanBuy()Z

    move-result p0

    return p0
.end method

.method public final chapterList()Ljava/util/List;
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

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->e:Lcom/onyx/android/sdk/reader/cbox/page/BookManager;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->getChapterIdList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final clearPaginationCache()V
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->f:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->clear()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->E0()V

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->e:Lcom/onyx/android/sdk/reader/cbox/page/BookManager;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->clearPaginationCache()V

    return-void
.end method

.method public final close()V
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->h:Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen;

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->g:Lcom/onyx/android/sdk/reader/cbox/page/ScreenDataLruCache;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/reader/cbox/page/ScreenDataLruCache;->clear()V

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->f:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->clear()V

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->e:Lcom/onyx/android/sdk/reader/cbox/page/BookManager;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->close()V

    return-void
.end method

.method public final d0(Ljava/util/List;FI)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/engine/sdk/CellOfScreen;",
            ">;FI)",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfText;",
            ">;"
        }
    .end annotation

    move-object p0, p1

    check-cast p0, Ljava/util/Collection;

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/engine/sdk/CellOfScreen;

    invoke-virtual {v0}, Lcom/onyx/engine/sdk/CellOfScreen;->isRt()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfText;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-direct {v1, v0, v3, v2, v3}, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfText;-><init>(Lcom/onyx/engine/sdk/CellOfScreen;Lcom/onyx/android/sdk/reader/api/ReaderPosition;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0}, Lcom/onyx/engine/sdk/CellOfScreen;->getRect()Landroid/graphics/RectF;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2}, Landroid/graphics/RectF;->offset(FF)V

    invoke-virtual {v1, p3}, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfText;->setPageNumber(I)V

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object p0
.end method

.method public final destroy()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->h:Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen;

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->g:Lcom/onyx/android/sdk/reader/cbox/page/ScreenDataLruCache;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/reader/cbox/page/ScreenDataLruCache;->clear()V

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->f:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->clear()V

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->e:Lcom/onyx/android/sdk/reader/cbox/page/BookManager;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->destroy()V

    return-void
.end method

.method public final draw(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "bitmap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->E0()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->p0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->B(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->A(Landroid/graphics/Bitmap;)V

    :goto_0
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->x(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->y(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->A0()V

    return-void
.end method

.method public final e0(Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfText;I)Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfText;
    .locals 4

    if-nez p2, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->O()Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen;->getTextList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_1

    return-object p1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v0, p1, :cond_3

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfText;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfText;->getCellOfScreen()Lcom/onyx/engine/sdk/CellOfScreen;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onyx/engine/sdk/CellOfScreen;->getWord()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    if-lt v2, p2, :cond_2

    return-object v1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v1
.end method

.method public final f0(Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfText;I)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->k0()Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    if-gtz p2, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->O()Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen;->getTextList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-lt p1, v0, :cond_2

    return-object v1

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 p1, p1, 0x1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-ge p1, v1, :cond_4

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfText;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfText;->getCellOfScreen()Lcom/onyx/engine/sdk/CellOfScreen;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/engine/sdk/CellOfScreen;->getWord()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lt v2, p2, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "toString(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final firstText()Lcom/onyx/android/sdk/reader/api/ReaderSelection;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->k0()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->O()Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen;->getTextList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfText;

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->p(Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfText;)Lcom/onyx/android/sdk/reader/api/ReaderSelection;

    move-result-object p0

    return-object p0
.end method

.method public final g0()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->e:Lcom/onyx/android/sdk/reader/cbox/page/BookManager;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->getScreenDataHashKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->D()Lcom/onyx/engine/sdk/PageInfo;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x2d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/onyx/engine/sdk/PageInfo;->getStartPositionInt()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/onyx/engine/sdk/PageInfo;->getEndPositionInt()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getAllPieceOfText()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfText;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->E()Lcom/onyx/engine/sdk/PageInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->a:Lcom/onyx/engine/sdk/NeoBaseNative;

    invoke-interface {v2}, Lcom/onyx/engine/sdk/NeoBaseNative;->getTextRunList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/engine/sdk/TextRun;

    invoke-virtual {v3}, Lcom/onyx/engine/sdk/TextRun;->getCellOfScreenList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Lcom/onyx/engine/sdk/TextRun;->getCellOfScreenList()Ljava/util/List;

    move-result-object v3

    const-string v4, "getCellOfScreenList(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-virtual {v1}, Lcom/onyx/engine/sdk/PageInfo;->getPageNumber()I

    move-result v5

    invoke-virtual {p0, v3, v4, v5}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->d0(Ljava/util/List;FI)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final getBitmap(Lcom/onyx/android/sdk/reader/api/ReaderImage;)Landroid/graphics/Bitmap;
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderImage;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "readerImage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->c0(Lcom/onyx/android/sdk/reader/api/ReaderImage;)Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfImage;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lcom/onyx/engine/sdk/Resource;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfImage;->getImageInfo()Lcom/onyx/engine/sdk/ImageInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/engine/sdk/ImageInfo;->getBaseUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfImage;->getImageInfo()Lcom/onyx/engine/sdk/ImageInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/engine/sdk/ImageInfo;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/onyx/engine/sdk/Resource;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfImage;->getImageInfo()Lcom/onyx/engine/sdk/ImageInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/engine/sdk/ImageInfo;->getFormat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/engine/sdk/Resource;->setFormat(Ljava/lang/String;)Lcom/onyx/engine/sdk/Resource;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfImage;->getImageInfo()Lcom/onyx/engine/sdk/ImageInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/engine/sdk/ImageInfo;->getRect()Landroid/graphics/RectF;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfImage;->getImageInfo()Lcom/onyx/engine/sdk/ImageInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/engine/sdk/ImageInfo;->getRect()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/onyx/engine/sdk/Resource;->setWidth(F)Lcom/onyx/engine/sdk/Resource;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfImage;->getImageInfo()Lcom/onyx/engine/sdk/ImageInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/engine/sdk/ImageInfo;->getRect()Landroid/graphics/RectF;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/onyx/engine/sdk/Resource;->setHeight(F)Lcom/onyx/engine/sdk/Resource;

    :cond_1
    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->D0(Lcom/onyx/engine/sdk/Resource;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public final getBookPath()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->c:Ljava/lang/String;

    if-nez p0, :cond_0

    const-string p0, "path"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    return-object p0
.end method

.method public final getBookSize()I
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->a:Lcom/onyx/engine/sdk/NeoBaseNative;

    invoke-interface {p0}, Lcom/onyx/engine/sdk/NeoBaseNative;->getBookSize()I

    move-result p0

    return p0
.end method

.method public final getChapter(I)Lcom/onyx/engine/sdk/Chapter;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/onyx/android/sdk/reader/api/ReaderException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    :try_start_0
    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->e:Lcom/onyx/android/sdk/reader/cbox/page/BookManager;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->getChapter(I)Lcom/onyx/engine/sdk/Chapter;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/onyx/android/sdk/reader/api/ReaderException;

    invoke-direct {p1, p0}, Lcom/onyx/android/sdk/reader/api/ReaderException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final getChapterId(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Ljava/lang/String;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "position"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->toEnginePosition(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Lcom/onyx/engine/sdk/PinPosition;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/engine/sdk/PinPosition;->isInvalid()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/engine/sdk/PinPosition;->getChapterID()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final getChapterName(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Ljava/lang/String;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "position"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->e:Lcom/onyx/android/sdk/reader/cbox/page/BookManager;

    invoke-interface {p1}, Lcom/onyx/android/sdk/reader/api/ReaderPosition;->asInteger()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->getChapterName(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;

    invoke-virtual {p1, v0, p0}, Lcom/onyx/android/sdk/base/utils/Debug;->e(Ljava/lang/Class;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getChapterStartPosition(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Lcom/onyx/android/sdk/reader/api/ReaderPosition;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "position"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->e:Lcom/onyx/android/sdk/reader/cbox/page/BookManager;

    invoke-interface {p1}, Lcom/onyx/android/sdk/reader/api/ReaderPosition;->asInteger()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->getChapter(I)Lcom/onyx/engine/sdk/Chapter;

    move-result-object p1

    new-instance v0, Lcom/onyx/engine/sdk/PinPosition;

    invoke-direct {v0, p1}, Lcom/onyx/engine/sdk/PinPosition;-><init>(Lcom/onyx/engine/sdk/Chapter;)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->I0(Lcom/onyx/engine/sdk/PinPosition;)Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;

    invoke-virtual {p1, v0, p0}, Lcom/onyx/android/sdk/base/utils/Debug;->e(Ljava/lang/Class;Ljava/lang/Throwable;)V

    sget-object p0, Lcom/onyx/android/sdk/reader/plugins/internal/PluginPositionUtils;->INSTANCE:Lcom/onyx/android/sdk/reader/plugins/internal/PluginPositionUtils;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/plugins/internal/PluginPositionUtils;->getINVALID_POSITION()Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object p0

    return-object p0
.end method

.method public final getEndPosition()Lcom/onyx/engine/sdk/PinPosition;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->S()Lcom/onyx/engine/sdk/PageInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->F(Lcom/onyx/engine/sdk/PageInfo;)Lcom/onyx/engine/sdk/PageInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/engine/sdk/PageInfo;->getPageRange()Lcom/onyx/engine/sdk/PageRange;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/engine/sdk/PageRange;->getEnd()Lcom/onyx/engine/sdk/PinPosition;

    move-result-object p0

    const-string v0, "getEnd(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getEngineTextStyle()Lcom/onyx/engine/sdk/ReaderTextStyle;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->e:Lcom/onyx/android/sdk/reader/cbox/page/BookManager;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->getEngineStyle()Lcom/onyx/engine/sdk/ReaderTextStyle;

    move-result-object p0

    return-object p0
.end method

.method public final getFontFamilyList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/engine/sdk/FontSpec;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->a:Lcom/onyx/engine/sdk/NeoBaseNative;

    invoke-interface {p0}, Lcom/onyx/engine/sdk/NeoBaseNative;->getFontFamilyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getImagePage(Lcom/onyx/android/sdk/reader/api/ReaderPosition;I)Lcom/onyx/android/sdk/reader/api/ReaderImage;
    .locals 7
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "position"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->O()Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen;

    move-result-object v0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->isImagePage(Lcom/onyx/android/sdk/reader/api/ReaderPosition;I)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->Z(I)I

    move-result p0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen;->getPageImageMap()Ljava/util/Map;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p0, Ljava/util/List;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfImage;

    new-instance p1, Lcom/onyx/android/sdk/reader/impl/ReaderImageImpl;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfImage;->getImageInfo()Lcom/onyx/engine/sdk/ImageInfo;

    move-result-object p2

    invoke-virtual {p2}, Lcom/onyx/engine/sdk/ImageInfo;->getRect()Landroid/graphics/RectF;

    move-result-object p2

    invoke-static {p2}, Lcom/onyx/android/sdk/base/extension/RectKt;->orEmpty(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfImage;->getPosition()Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object p0

    invoke-interface {p0}, Lcom/onyx/android/sdk/reader/api/ReaderPosition;->copy()Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object v3

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Lcom/onyx/android/sdk/reader/impl/ReaderImageImpl;-><init>(Landroid/graphics/RectF;Landroid/graphics/Bitmap;Lcom/onyx/android/sdk/reader/api/ReaderPosition;FILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p1
.end method

.method public final getInitPaginationPosition(Ljava/lang/String;)Lcom/onyx/android/sdk/reader/api/ReaderPosition;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "chapterID"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->e:Lcom/onyx/android/sdk/reader/cbox/page/BookManager;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->getInitPosition(Ljava/lang/String;)Lcom/onyx/engine/sdk/PinPosition;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->I0(Lcom/onyx/engine/sdk/PinPosition;)Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object p0

    return-object p0
.end method

.method public final getInitPosition()Lcom/onyx/android/sdk/reader/api/ReaderPosition;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->e:Lcom/onyx/android/sdk/reader/cbox/page/BookManager;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->getInitPosition()Lcom/onyx/engine/sdk/PinPosition;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->I0(Lcom/onyx/engine/sdk/PinPosition;)Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object p0

    return-object p0
.end method

.method public final getLastSentence()Lcom/onyx/android/sdk/reader/api/ReaderSentence;
    .locals 11
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->k0()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->O()Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen;->getTextList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfText;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, -0x1

    add-int/2addr v3, v4

    const/4 v5, 0x1

    if-ltz v3, :cond_6

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    add-int/lit8 v8, v3, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfText;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfText;->getCellOfScreen()Lcom/onyx/engine/sdk/CellOfScreen;

    move-result-object v9

    invoke-virtual {v9}, Lcom/onyx/engine/sdk/CellOfScreen;->getTextLength()I

    move-result v9

    sub-int/2addr v9, v5

    :goto_1
    if-ge v4, v9, :cond_3

    add-int/lit8 v6, v6, 0x1

    const/16 v1, 0xc8

    if-lt v6, v1, :cond_1

    :goto_2
    move-object v1, v3

    move v7, v5

    goto :goto_3

    :cond_1
    invoke-virtual {v3}, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfText;->getCellOfScreen()Lcom/onyx/engine/sdk/CellOfScreen;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/engine/sdk/CellOfScreen;->getWord()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sget-object v10, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl;->Companion:Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$Companion;

    invoke-virtual {v10}, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$Companion;->sharedInstance()Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl;

    move-result-object v10

    invoke-virtual {v10, v1}, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl;->isSentenceBreakSplitter(C)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    if-lt v6, v1, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v9, v9, -0x1

    move-object v1, v3

    goto :goto_1

    :cond_3
    :goto_3
    if-eqz v7, :cond_4

    goto :goto_4

    :cond_4
    if-gez v8, :cond_5

    goto :goto_4

    :cond_5
    move v3, v8

    goto :goto_0

    :cond_6
    :goto_4
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v1, v2}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->q(Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfText;Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfText;)Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->isLastPage()Z

    move-result p0

    new-instance v1, Lcom/onyx/android/sdk/reader/api/ReaderSentence;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object v2, Lcom/onyx/android/sdk/reader/plugins/internal/PluginPositionUtils;->INSTANCE:Lcom/onyx/android/sdk/reader/plugins/internal/PluginPositionUtils;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/reader/plugins/internal/PluginPositionUtils;->getINVALID_POSITION()Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object v2

    invoke-direct {v1, v0, v2, v5, p0}, Lcom/onyx/android/sdk/reader/api/ReaderSentence;-><init>(Lcom/onyx/android/sdk/reader/api/ReaderSelection;Lcom/onyx/android/sdk/reader/api/ReaderPosition;ZZ)V

    return-object v1
.end method

.method public final getLinkTargetSelection(Lcom/onyx/android/sdk/reader/api/ReaderSelection;)Lcom/onyx/android/sdk/reader/api/ReaderSelection;
    .locals 5
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderSelection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "link"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->O()Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen;

    move-result-object v0

    invoke-interface {p1}, Lcom/onyx/android/sdk/reader/api/ReaderSelection;->rectangles()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-static {v1}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v1

    const/4 v2, 0x0

    const-class v3, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    sget-object p0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-string p1, "no rect, no link."

    new-array v0, v4, [Ljava/lang/Object;

    invoke-virtual {p0, v3, p1, v0}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v2

    :cond_0
    invoke-virtual {v0}, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen;->getRectHashLinkMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1}, Lcom/onyx/android/sdk/reader/api/ReaderSelection;->rectangles()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfLink;

    if-nez p1, :cond_1

    sget-object p0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-string p1, "hit cache fail, no link."

    new-array v0, v4, [Ljava/lang/Object;

    invoke-virtual {p0, v3, p1, v0}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v2

    :cond_1
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :try_start_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfLink;->getLinkType()Lcom/onyx/engine/sdk/LinkType;

    move-result-object p1

    sget-object v1, Lcom/onyx/engine/sdk/LinkType;->NOT_LOADED:Lcom/onyx/engine/sdk/LinkType;

    if-ne p1, v1, :cond_2

    sget-object p1, Lcom/onyx/android/sdk/reader/cbox/utils/LinkInfoUtils;->INSTANCE:Lcom/onyx/android/sdk/reader/cbox/utils/LinkInfoUtils;

    iget-object v1, p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->a:Lcom/onyx/engine/sdk/NeoBaseNative;

    invoke-virtual {p1, v1, v0}, Lcom/onyx/android/sdk/reader/cbox/utils/LinkInfoUtils;->updateInternalNormalLinkInfo(Lcom/onyx/engine/sdk/NeoBaseNative;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->i(Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/reader/api/ReaderSelection;

    return-object p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    invoke-virtual {p1, v3, p0}, Lcom/onyx/android/sdk/base/utils/Debug;->w(Ljava/lang/Class;Ljava/lang/Throwable;)V

    return-object v2
.end method

.method public final getMetadata()Lcom/onyx/engine/sdk/Metadata;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->e:Lcom/onyx/android/sdk/reader/cbox/page/BookManager;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->getMetadata()Lcom/onyx/engine/sdk/Metadata;

    move-result-object p0

    return-object p0
.end method

.method public final getNeoBaseNative()Lcom/onyx/engine/sdk/NeoBaseNative;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->a:Lcom/onyx/engine/sdk/NeoBaseNative;

    return-object p0
.end method

.method public final getNextScreenChapter()Lcom/onyx/engine/sdk/Chapter;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/onyx/android/sdk/reader/api/ReaderException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->e:Lcom/onyx/android/sdk/reader/cbox/page/BookManager;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->getNextScreenChapter()Lcom/onyx/engine/sdk/Chapter;

    move-result-object p0

    return-object p0
.end method

.method public final getOriginCssStyle()Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->D()Lcom/onyx/engine/sdk/PageInfo;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;

    invoke-direct {v1}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;-><init>()V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->t(Lcom/onyx/engine/sdk/PageInfo;)Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$PageMargin;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->setPageMargin(Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$PageMargin;)V

    sget-object v2, Lcom/onyx/android/sdk/reader/cbox/utils/CBoxTextStyleUtils;->INSTANCE:Lcom/onyx/android/sdk/reader/cbox/utils/CBoxTextStyleUtils;

    invoke-virtual {v2, v0}, Lcom/onyx/android/sdk/reader/cbox/utils/CBoxTextStyleUtils;->createParagraphSpacing(Lcom/onyx/engine/sdk/PageInfo;)Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->setParagraphSpacing(Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;)V

    invoke-virtual {v2, v0}, Lcom/onyx/android/sdk/reader/cbox/utils/CBoxTextStyleUtils;->createLineHeight(Lcom/onyx/engine/sdk/PageInfo;)Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->setLineSpacing(Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;)V

    invoke-virtual {v2, v0}, Lcom/onyx/android/sdk/reader/cbox/utils/CBoxTextStyleUtils;->createLetterSpacing(Lcom/onyx/engine/sdk/PageInfo;)F

    move-result v0

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->setLetterSpacing(F)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->getEngineTextStyle()Lcom/onyx/engine/sdk/ReaderTextStyle;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/onyx/android/sdk/reader/cbox/utils/CBoxTextStyleUtils;->createWordSpacing(Lcom/onyx/engine/sdk/ReaderTextStyle;)F

    move-result p0

    invoke-virtual {v1, p0}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->setWordSpacing(F)V

    return-object v1
.end method

.method public final getPageImages()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/reader/api/ReaderImage;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->O()Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen;->getImageList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfImage;

    new-instance v9, Lcom/onyx/android/sdk/reader/impl/ReaderImageImpl;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfImage;->getImageInfo()Lcom/onyx/engine/sdk/ImageInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/engine/sdk/ImageInfo;->getRect()Landroid/graphics/RectF;

    move-result-object v2

    invoke-static {v2}, Lcom/onyx/android/sdk/base/extension/RectKt;->orEmpty(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1}, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfImage;->getPosition()Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object v1

    invoke-interface {v1}, Lcom/onyx/android/sdk/reader/api/ReaderPosition;->copy()Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object v5

    const/4 v6, 0x0

    const/16 v7, 0x8

    const/4 v8, 0x0

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcom/onyx/android/sdk/reader/impl/ReaderImageImpl;-><init>(Landroid/graphics/RectF;Landroid/graphics/Bitmap;Lcom/onyx/android/sdk/reader/api/ReaderPosition;FILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final getPageLinks()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/reader/api/ReaderSelection;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->O()Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen;->getLinkList()Ljava/util/List;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/util/Collection;

    invoke-static {v2}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->i(Ljava/util/List;Ljava/util/List;)V

    return-object v1
.end method

.method public final getPageNumberInCurrentChapter()I
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->e:Lcom/onyx/android/sdk/reader/cbox/page/BookManager;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->getCurrentChapter()Lcom/onyx/android/sdk/reader/cbox/page/LayoutChapter;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/reader/cbox/page/PositionHandler;->INSTANCE:Lcom/onyx/android/sdk/reader/cbox/page/PositionHandler;

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->e:Lcom/onyx/android/sdk/reader/cbox/page/BookManager;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->getBookPositionInt()I

    move-result p0

    invoke-virtual {v1, p0, v0}, Lcom/onyx/android/sdk/reader/cbox/page/PositionHandler;->getPageNumberInChapter(ILcom/onyx/android/sdk/reader/cbox/page/LayoutChapter;)I

    move-result p0

    return p0
.end method

.method public final getPageNumberOfPosition(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)I
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "position"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->e:Lcom/onyx/android/sdk/reader/cbox/page/BookManager;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->toEnginePosition(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Lcom/onyx/engine/sdk/PinPosition;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->getPageNumberOfPosition(Lcom/onyx/engine/sdk/PinPosition;)I

    move-result p0

    return p0
.end method

.method public final getPageNumberOfPosition(Lcom/onyx/engine/sdk/PinPosition;)I
    .locals 1
    .param p1    # Lcom/onyx/engine/sdk/PinPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "position"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->e:Lcom/onyx/android/sdk/reader/cbox/page/BookManager;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->getPageNumberOfPosition(Lcom/onyx/engine/sdk/PinPosition;)I

    move-result p0

    return p0
.end method

.method public final getPageParagraphList()Ljava/util/List;
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

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->O()Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen;->getParagraphList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getPaginationProgress()F
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->e:Lcom/onyx/android/sdk/reader/cbox/page/BookManager;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->getPaginationProgress()F

    move-result p0

    return p0
.end method

.method public final getPositionByPageNumber(I)Lcom/onyx/android/sdk/reader/api/ReaderPosition;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->e:Lcom/onyx/android/sdk/reader/cbox/page/BookManager;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->getPositionOfPageNumber(I)Lcom/onyx/engine/sdk/PinPosition;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->I0(Lcom/onyx/engine/sdk/PinPosition;)Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object p0

    return-object p0
.end method

.method public final getPositionFromString(Ljava/lang/String;)Lcom/onyx/android/sdk/reader/api/ReaderPosition;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p1}, Lcom/onyx/engine/sdk/PinPosition;->fromJson(Ljava/lang/String;)Lcom/onyx/engine/sdk/PinPosition;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/engine/sdk/PinPosition;->isInvalid()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

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
    if-nez v1, :cond_2

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/StringKt;->isNumberStr(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object p0, Lcom/onyx/android/sdk/reader/plugins/internal/PluginPositionUtils;->INSTANCE:Lcom/onyx/android/sdk/reader/plugins/internal/PluginPositionUtils;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/plugins/internal/PluginPositionUtils;->getPosition(I)Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->I0(Lcom/onyx/engine/sdk/PinPosition;)Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object p0

    return-object p0
.end method

.method public final getPositionInt(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)I
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "position"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/onyx/android/sdk/reader/api/ReaderPosition;->asInteger()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-interface {p1}, Lcom/onyx/android/sdk/reader/api/ReaderPosition;->asInteger()I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->toEnginePosition(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Lcom/onyx/engine/sdk/PinPosition;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/engine/sdk/PinPosition;->getPositionInt()I

    move-result p0

    :goto_0
    return p0
.end method

.method public final getPrevScreenChapter()Lcom/onyx/engine/sdk/Chapter;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/onyx/android/sdk/reader/api/ReaderException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->e:Lcom/onyx/android/sdk/reader/cbox/page/BookManager;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->getPrevScreenChapter()Lcom/onyx/engine/sdk/Chapter;

    move-result-object p0

    return-object p0
.end method

.method public final getReaderPageProgressDirection()Lcom/onyx/android/sdk/reader/api/ReaderPageProgressionDirection;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->e:Lcom/onyx/android/sdk/reader/cbox/page/BookManager;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->getDirection()Lcom/onyx/android/sdk/reader/api/ReaderPageProgressionDirection;

    move-result-object p0

    return-object p0
.end method

.method public final getReaderTextStyle()Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->e:Lcom/onyx/android/sdk/reader/cbox/page/BookManager;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->getStyle()Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;

    move-result-object p0

    return-object p0
.end method

.method public final getScreenEndPage()I
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->S()Lcom/onyx/engine/sdk/PageInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->F(Lcom/onyx/engine/sdk/PageInfo;)Lcom/onyx/engine/sdk/PageInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/engine/sdk/PageInfo;->getPageNumber()I

    move-result p0

    return p0
.end method

.method public final getScreenEndPosition()Lcom/onyx/android/sdk/reader/api/ReaderPosition;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->S()Lcom/onyx/engine/sdk/PageInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->F(Lcom/onyx/engine/sdk/PageInfo;)Lcom/onyx/engine/sdk/PageInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/engine/sdk/PageInfo;->getPageRange()Lcom/onyx/engine/sdk/PageRange;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/engine/sdk/PageRange;->getEnd()Lcom/onyx/engine/sdk/PinPosition;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->I0(Lcom/onyx/engine/sdk/PinPosition;)Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object p0

    return-object p0
.end method

.method public final getScreenStartPage()I
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->D()Lcom/onyx/engine/sdk/PageInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/engine/sdk/PageInfo;->getPageNumber()I

    move-result p0

    return p0
.end method

.method public final getScreenStartPosition()Lcom/onyx/android/sdk/reader/api/ReaderPosition;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->D()Lcom/onyx/engine/sdk/PageInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/engine/sdk/PageInfo;->getPageRange()Lcom/onyx/engine/sdk/PageRange;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/engine/sdk/PageRange;->getStart()Lcom/onyx/engine/sdk/PinPosition;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->I0(Lcom/onyx/engine/sdk/PinPosition;)Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object p0

    return-object p0
.end method

.method public final getScreenText()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->O()Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen;->getTextList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfText;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfText;->getCellOfScreen()Lcom/onyx/engine/sdk/CellOfScreen;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/engine/sdk/CellOfScreen;->getWord()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "toString(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getSentence(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Lcom/onyx/android/sdk/reader/api/ReaderSentence;
    .locals 16
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "startPosition"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->getScreenStartPosition()Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/onyx/android/sdk/reader/api/ReaderPosition;->compare(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)I

    move-result v2

    const/4 v3, 0x0

    if-ltz v2, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->getScreenEndPosition()Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/onyx/android/sdk/reader/api/ReaderPosition;->compare(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)I

    move-result v2

    if-lez v2, :cond_0

    goto/16 :goto_7

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->k0()Z

    move-result v2

    if-nez v2, :cond_1

    return-object v3

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->O()Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen;

    move-result-object v2

    invoke-virtual/range {p0 .. p1}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->K(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)I

    move-result v1

    invoke-virtual {v2}, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen;->getTextList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfText;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    if-le v1, v6, :cond_2

    return-object v3

    :cond_2
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfText;

    invoke-virtual {v9}, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfText;->getCellOfScreen()Lcom/onyx/engine/sdk/CellOfScreen;

    move-result-object v9

    invoke-virtual {v9}, Lcom/onyx/engine/sdk/CellOfScreen;->getParaNumber()I

    move-result v9

    move-object v11, v3

    if-gt v1, v6, :cond_8

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_0
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfText;

    invoke-virtual {v14}, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfText;->getCellOfScreen()Lcom/onyx/engine/sdk/CellOfScreen;

    move-result-object v15

    invoke-virtual {v15}, Lcom/onyx/engine/sdk/CellOfScreen;->getParaNumber()I

    move-result v15

    if-le v15, v9, :cond_3

    goto :goto_4

    :cond_3
    invoke-virtual {v14}, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfText;->getCellOfScreen()Lcom/onyx/engine/sdk/CellOfScreen;

    move-result-object v15

    invoke-virtual {v15}, Lcom/onyx/engine/sdk/CellOfScreen;->getWord()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v15, :cond_6

    add-int/lit8 v12, v12, 0x1

    const/16 v11, 0xc8

    if-lt v12, v11, :cond_4

    sget-object v11, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl;->Companion:Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$Companion;

    invoke-virtual {v11}, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$Companion;->sharedInstance()Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl;

    move-result-object v11

    invoke-virtual {v11}, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl;->isUseTtsParagraphSplitters()Z

    move-result v11

    if-nez v11, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v14}, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfText;->getCellOfScreen()Lcom/onyx/engine/sdk/CellOfScreen;

    move-result-object v11

    invoke-virtual {v11}, Lcom/onyx/engine/sdk/CellOfScreen;->getWord()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/String;->charAt(I)C

    move-result v11

    sget-object v10, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl;->Companion:Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$Companion;

    invoke-virtual {v10, v11, v8}, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$Companion;->isSentenceBreakSplitter(CLjava/util/List;)Z

    move-result v10

    if-eqz v10, :cond_5

    :goto_2
    move-object v11, v14

    const/4 v13, 0x1

    goto :goto_3

    :cond_5
    add-int/lit8 v7, v7, 0x1

    move-object v11, v14

    goto :goto_1

    :cond_6
    :goto_3
    if-eqz v13, :cond_7

    goto :goto_4

    :cond_7
    if-eq v1, v6, :cond_8

    add-int/lit8 v1, v1, 0x1

    const/4 v7, 0x1

    goto :goto_0

    :cond_8
    :goto_4
    if-nez v11, :cond_9

    const/4 v1, 0x1

    goto :goto_5

    :cond_9
    const/4 v1, 0x0

    :goto_5
    if-eqz v1, :cond_a

    move-object v11, v5

    :cond_a
    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v5, v11}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->q(Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfText;Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfText;)Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;

    move-result-object v1

    if-nez v1, :cond_b

    return-object v3

    :cond_b
    invoke-virtual {v2}, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen;->getTextList()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v11, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->isLastPage()Z

    move-result v3

    if-eqz v3, :cond_c

    if-eqz v2, :cond_c

    const/4 v7, 0x1

    goto :goto_6

    :cond_c
    const/4 v7, 0x0

    :goto_6
    invoke-virtual {v11}, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfText;->getPosition()Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->x0(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object v0

    new-instance v3, Lcom/onyx/android/sdk/reader/api/ReaderSentence;

    invoke-direct {v3, v1, v0, v2, v7}, Lcom/onyx/android/sdk/reader/api/ReaderSentence;-><init>(Lcom/onyx/android/sdk/reader/api/ReaderSelection;Lcom/onyx/android/sdk/reader/api/ReaderPosition;ZZ)V

    :cond_d
    :goto_7
    return-object v3
.end method

.method public final getStartPosition()Lcom/onyx/engine/sdk/PinPosition;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->D()Lcom/onyx/engine/sdk/PageInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/engine/sdk/PageInfo;->getPageRange()Lcom/onyx/engine/sdk/PageRange;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/engine/sdk/PageRange;->getStart()Lcom/onyx/engine/sdk/PinPosition;

    move-result-object p0

    const-string v0, "getStart(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getText(Lcom/onyx/android/sdk/reader/api/ReaderPosition;Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Ljava/lang/String;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "startPosition"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "endPosition"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->a:Lcom/onyx/engine/sdk/NeoBaseNative;

    invoke-interface {p1}, Lcom/onyx/android/sdk/reader/api/ReaderPosition;->asInteger()I

    move-result p1

    invoke-interface {p2}, Lcom/onyx/android/sdk/reader/api/ReaderPosition;->asInteger()I

    move-result p2

    invoke-interface {p0, p1, p2}, Lcom/onyx/engine/sdk/NeoBaseNative;->getText(II)Ljava/lang/String;

    move-result-object p0

    const-string p1, "getText(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getTotalPage()I
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->e:Lcom/onyx/android/sdk/reader/cbox/page/BookManager;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->getTotalPage()I

    move-result p0

    return p0
.end method

.method public final getTotalPageCountInCurrentChapter()I
    .locals 1

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->e:Lcom/onyx/android/sdk/reader/cbox/page/BookManager;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->getCurrentChapter()Lcom/onyx/android/sdk/reader/cbox/page/LayoutChapter;

    move-result-object p0

    sget-object v0, Lcom/onyx/android/sdk/reader/cbox/page/PositionHandler;->INSTANCE:Lcom/onyx/android/sdk/reader/cbox/page/PositionHandler;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/reader/cbox/page/PositionHandler;->getChapterTotalPageCount(Lcom/onyx/android/sdk/reader/cbox/page/LayoutChapter;)I

    move-result p0

    return p0
.end method

.method public final getTotalReadingProgress()F
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->isLastPage()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lorg/apache/commons/lang3/math/NumberUtils;->FLOAT_ONE:Ljava/lang/Float;

    const-string v0, "FLOAT_ONE"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->e:Lcom/onyx/android/sdk/reader/cbox/page/BookManager;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->getBookPositionInt()I

    move-result v0

    int-to-float v0, v0

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->a:Lcom/onyx/engine/sdk/NeoBaseNative;

    invoke-interface {p0}, Lcom/onyx/engine/sdk/NeoBaseNative;->getBookSize()I

    move-result p0

    const/4 v1, 0x1

    invoke-static {p0, v1}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result p0

    int-to-float p0, p0

    div-float p0, v0, p0

    :goto_0
    return p0
.end method

.method public final getViewSize()Lcom/onyx/android/sdk/base/data/Size;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->j:Lcom/onyx/android/sdk/base/data/Size;

    return-object p0
.end method

.method public final getXPathByPosition(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Ljava/lang/String;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "position"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->toEnginePosition(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Lcom/onyx/engine/sdk/PinPosition;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/engine/sdk/PinPosition;->getXpathString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final gotoPage(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/onyx/android/sdk/reader/api/ReaderException;
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->e:Lcom/onyx/android/sdk/reader/cbox/page/BookManager;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->getPositionOfPageNumber(I)Lcom/onyx/engine/sdk/PinPosition;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->gotoPosition(Lcom/onyx/engine/sdk/PinPosition;)Z

    move-result p0

    return p0
.end method

.method public final gotoPosition(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Z
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "pos"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->toEnginePosition(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Lcom/onyx/engine/sdk/PinPosition;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->gotoPosition(Lcom/onyx/engine/sdk/PinPosition;)Z

    move-result p0

    return p0
.end method

.method public final gotoPosition(Lcom/onyx/engine/sdk/PinPosition;)Z
    .locals 3
    .param p1    # Lcom/onyx/engine/sdk/PinPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "pos"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->E0()V

    .line 3
    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->f:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->clear()V

    .line 4
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->i0(Lcom/onyx/engine/sdk/PinPosition;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->p0()Z

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    return v1

    .line 6
    :cond_1
    iget p1, p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->k:I

    sub-int/2addr p1, v1

    :goto_0
    if-ge v0, p1, :cond_3

    .line 7
    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->w0()Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 8
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->F0()V

    return v1
.end method

.method public final h0()Lcom/onyx/engine/sdk/PageInfo;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->e:Lcom/onyx/android/sdk/reader/cbox/page/BookManager;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->getCurrentPage()Lcom/onyx/engine/sdk/PageInfo;

    move-result-object p0

    return-object p0
.end method

.method public final hasPaginationNext(Lcom/onyx/android/sdk/reader/api/PaginationChapterInfo;)Z
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/reader/api/PaginationChapterInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    sget-object p0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class p1, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;

    const-string v0, "maybe abort, no next."

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0, v2}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_0
    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->e:Lcom/onyx/android/sdk/reader/cbox/page/BookManager;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->hasPaginationNext(Lcom/onyx/android/sdk/reader/api/PaginationChapterInfo;)Z

    move-result p0

    return p0
.end method

.method public final hasText()Z
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->k0()Z

    move-result p0

    return p0
.end method

.method public final hitPageCache(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Z
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "position"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->e:Lcom/onyx/android/sdk/reader/cbox/page/BookManager;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->toEnginePosition(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Lcom/onyx/engine/sdk/PinPosition;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->hitPageCache(Lcom/onyx/engine/sdk/PinPosition;)Z

    move-result p0

    return p0
.end method

.method public final i(Ljava/util/List;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/reader/api/ReaderSelection;",
            ">;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfLink;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfLink;

    new-instance v1, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;

    invoke-direct {v1}, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;-><init>()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->getScreenStartPage()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->setPageIndex(I)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->getScreenStartPosition()Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object v2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->getScreenEndPosition()Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->v(Lcom/onyx/android/sdk/reader/api/ReaderPosition;Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Lcom/onyx/android/sdk/reader/api/PageRange;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->setPageRange(Lcom/onyx/android/sdk/reader/api/PageRange;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfLink;->getLinkType()Lcom/onyx/engine/sdk/LinkType;

    move-result-object v2

    sget-object v3, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v3, v2

    const/4 v3, 0x1

    const/4 v4, 0x2

    const-string v5, ""

    packed-switch v2, :pswitch_data_0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfLink;->getTargetText()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    goto :goto_5

    :pswitch_0
    invoke-virtual {v0}, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfLink;->getTargetText()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    move-object v5, v2

    :goto_1
    invoke-virtual {v1, v5}, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->setText(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->setLinkType(I)V

    goto :goto_6

    :pswitch_1
    invoke-virtual {v1, v5}, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->setText(Ljava/lang/String;)V

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->setLinkType(I)V

    goto :goto_6

    :pswitch_2
    invoke-virtual {v0}, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfLink;->getTargetText()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_2

    :cond_1
    move-object v5, v2

    :goto_2
    invoke-virtual {v1, v5}, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->setText(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->setLinkType(I)V

    goto :goto_6

    :pswitch_3
    invoke-virtual {v0}, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfLink;->getTargetText()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_3

    :cond_2
    move-object v5, v2

    :goto_3
    invoke-virtual {v1, v5}, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->setText(Ljava/lang/String;)V

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->setLinkType(I)V

    goto :goto_6

    :pswitch_4
    invoke-virtual {v0}, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfLink;->getLinkInfo()Lcom/onyx/engine/sdk/LinkInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/engine/sdk/LinkInfo;->getHref()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    goto :goto_4

    :cond_3
    move-object v5, v2

    :goto_4
    invoke-virtual {v1, v5}, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->setText(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->setLinkType(I)V

    goto :goto_6

    :cond_4
    move-object v5, v2

    :goto_5
    invoke-virtual {v1, v5}, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->setText(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->setLinkType(I)V

    :goto_6
    invoke-virtual {v0}, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfLink;->getLinkType()Lcom/onyx/engine/sdk/LinkType;

    move-result-object v2

    sget-object v4, Lcom/onyx/engine/sdk/LinkType;->FOOTNOTE_HINT:Lcom/onyx/engine/sdk/LinkType;

    if-eq v2, v4, :cond_6

    invoke-virtual {v0}, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfLink;->getLinkInfo()Lcom/onyx/engine/sdk/LinkInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/engine/sdk/LinkInfo;->isInvalidTarget()Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_7

    :cond_5
    invoke-virtual {v0}, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfLink;->getLinkInfo()Lcom/onyx/engine/sdk/LinkInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/engine/sdk/LinkInfo;->getTarget()Lcom/onyx/engine/sdk/LinkTarget;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/engine/sdk/LinkTarget;->getPosition()Lcom/onyx/engine/sdk/PinPosition;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->I0(Lcom/onyx/engine/sdk/PinPosition;)Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object v2

    goto :goto_8

    :cond_6
    :goto_7
    sget-object v2, Lcom/onyx/android/sdk/reader/plugins/internal/PluginPositionUtils;->INSTANCE:Lcom/onyx/android/sdk/reader/plugins/internal/PluginPositionUtils;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/reader/plugins/internal/PluginPositionUtils;->getINVALID_POSITION()Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object v2

    :goto_8
    invoke-interface {v2}, Lcom/onyx/android/sdk/reader/api/ReaderPosition;->copy()Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object v4

    invoke-virtual {p0, v2, v4}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->v(Lcom/onyx/android/sdk/reader/api/ReaderPosition;Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Lcom/onyx/android/sdk/reader/api/PageRange;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->setSelectionRange(Lcom/onyx/android/sdk/reader/api/PageRange;)V

    new-array v2, v3, [Landroid/graphics/RectF;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfLink;->getLinkInfo()Lcom/onyx/engine/sdk/LinkInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onyx/engine/sdk/LinkInfo;->getRect()Landroid/graphics/RectF;

    move-result-object v3

    invoke-static {v3}, Lcom/onyx/android/sdk/base/extension/RectKt;->orEmpty(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->setCharRectList(Ljava/util/List;)V

    sget-object v2, Lcom/onyx/android/sdk/reader/cbox/utils/CBoxUtils;->INSTANCE:Lcom/onyx/android/sdk/reader/cbox/utils/CBoxUtils;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfLink;->getLinkInfo()Lcom/onyx/engine/sdk/LinkInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/engine/sdk/LinkInfo;->getWritingMode()Lcom/onyx/engine/sdk/WritingMode;

    move-result-object v0

    const-string v3, "getWritingMode(...)"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lcom/onyx/android/sdk/reader/cbox/utils/CBoxUtils;->convert(Lcom/onyx/engine/sdk/WritingMode;)Lcom/onyx/android/sdk/reader/api/ReaderWritingMode;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->setWritingMode(Lcom/onyx/android/sdk/reader/api/ReaderWritingMode;)V

    sget-object v0, Lcom/onyx/android/sdk/reader/utils/ReaderSelectionUtils;->INSTANCE:Lcom/onyx/android/sdk/reader/utils/ReaderSelectionUtils;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/reader/utils/ReaderSelectionUtils;->ensureParseLinkType(Lcom/onyx/android/sdk/reader/api/ReaderSelection;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->setLinkType(I)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_7
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final i0(Lcom/onyx/engine/sdk/PinPosition;)Z
    .locals 3

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->e:Lcom/onyx/android/sdk/reader/cbox/page/BookManager;

    new-instance v1, Lcom/onyx/engine/sdk/PageInfo;

    new-instance v2, Lcom/onyx/engine/sdk/PageRange;

    invoke-direct {v2, p1}, Lcom/onyx/engine/sdk/PageRange;-><init>(Lcom/onyx/engine/sdk/PinPosition;)V

    invoke-direct {v1, v2}, Lcom/onyx/engine/sdk/PageInfo;-><init>(Lcom/onyx/engine/sdk/PageRange;)V

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->gotoPage(Lcom/onyx/engine/sdk/PageInfo;)Lcom/onyx/engine/sdk/PageInfo;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->C0(Lcom/onyx/engine/sdk/PageInfo;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final isAbortPagination()Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->e:Lcom/onyx/android/sdk/reader/cbox/page/BookManager;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->isAbortPagination()Z

    move-result p0

    return p0
.end method

.method public final isAllPaginationComplete()Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->e:Lcom/onyx/android/sdk/reader/cbox/page/BookManager;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->isAllPaginationComplete()Z

    move-result p0

    return p0
.end method

.method public final isCurrentChapterPaginationComplete()Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->e:Lcom/onyx/android/sdk/reader/cbox/page/BookManager;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->isCurrentChapterPaginationComplete()Z

    move-result p0

    return p0
.end method

.method public final isFirstPage()Z
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->D()Lcom/onyx/engine/sdk/PageInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/engine/sdk/PageInfo;->getStartPositionInt()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isImagePage(Lcom/onyx/android/sdk/reader/api/ReaderPosition;I)Z
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "position"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->O()Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen;

    move-result-object p1

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->Z(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->j0(Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen;I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->o0(Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen;I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isLastPage()Z
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->S()Lcom/onyx/engine/sdk/PageInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->F(Lcom/onyx/engine/sdk/PageInfo;)Lcom/onyx/engine/sdk/PageInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/engine/sdk/PageInfo;->getEndPositionInt()I

    move-result v0

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->a:Lcom/onyx/engine/sdk/NeoBaseNative;

    invoke-interface {p0}, Lcom/onyx/engine/sdk/NeoBaseNative;->getBookSize()I

    move-result p0

    if-lt v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isNeedClearPaginationCache()Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->e:Lcom/onyx/android/sdk/reader/cbox/page/BookManager;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->isNeedClearPaginationCache()Z

    move-result p0

    return p0
.end method

.method public final isValidPosition(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Z
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->toEnginePosition(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Lcom/onyx/engine/sdk/PinPosition;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/engine/sdk/PinPosition;->isInvalid()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->getBookSize()I

    move-result p0

    invoke-virtual {p1}, Lcom/onyx/engine/sdk/PinPosition;->getPositionInt()I

    move-result p1

    const/4 v0, 0x1

    if-ltz p1, :cond_0

    if-ge p1, p0, :cond_0

    move p0, v0

    goto :goto_0

    :cond_0
    move p0, v1

    :goto_0
    if-eqz p0, :cond_1

    move v1, v0

    :cond_1
    return v1
.end method

.method public final j(Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfText;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Landroid/graphics/RectF;)V
    .locals 1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfText;->getCellOfScreen()Lcom/onyx/engine/sdk/CellOfScreen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/engine/sdk/CellOfScreen;->getWord()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfText;->getCellOfScreen()Lcom/onyx/engine/sdk/CellOfScreen;

    move-result-object p2

    invoke-virtual {p2}, Lcom/onyx/engine/sdk/CellOfScreen;->getOriginWord()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->h:Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p2, p1}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->q0(Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen;Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfText;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfText;->getCellOfScreen()Lcom/onyx/engine/sdk/CellOfScreen;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/engine/sdk/CellOfScreen;->getRect()Landroid/graphics/RectF;

    move-result-object p0

    invoke-virtual {p4, p0}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    :cond_0
    return-void
.end method

.method public final j0(Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen;I)Z
    .locals 0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen;->getPageTextMap()Ljava/util/Map;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->isNonBlank(Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method public final k(Ljava/lang/StringBuilder;)V
    .locals 7

    const-string v0, ")"

    const-string v1, ", "

    const-string v2, "["

    const-string v3, "--- start screenPage debug info ---"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "pagination progress: "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->e:Lcom/onyx/android/sdk/reader/cbox/page/BookManager;

    invoke-virtual {v4}, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->getPaginationProgress()F

    move-result v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "screenPageInfoMap:"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->f:Ljava/util/TreeMap;

    invoke-virtual {v4}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    const-string v6, "<get-value>(...)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Lcom/onyx/engine/sdk/PageInfo;

    :try_start_0
    const-string v6, "viewInfo: page start: "

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/onyx/engine/sdk/PageInfo;->getPageRange()Lcom/onyx/engine/sdk/PageRange;

    move-result-object v6

    invoke-virtual {v6}, Lcom/onyx/engine/sdk/PageRange;->getStart()Lcom/onyx/engine/sdk/PinPosition;

    move-result-object v6

    invoke-virtual {v6}, Lcom/onyx/engine/sdk/PinPosition;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "page end: "

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/onyx/engine/sdk/PageInfo;->getPageRange()Lcom/onyx/engine/sdk/PageRange;

    move-result-object v6

    invoke-virtual {v6}, Lcom/onyx/engine/sdk/PageRange;->getEnd()Lcom/onyx/engine/sdk/PinPosition;

    move-result-object v6

    invoke-virtual {v6}, Lcom/onyx/engine/sdk/PinPosition;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "isTablePage: "

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/onyx/engine/sdk/PageInfo;->getPageRange()Lcom/onyx/engine/sdk/PageRange;

    move-result-object v6

    invoke-virtual {v6}, Lcom/onyx/engine/sdk/PageRange;->hasTable()Z

    move-result v6

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "chapterId: "

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/onyx/engine/sdk/PageInfo;->getStartChapterID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "chapterPath: "

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->e:Lcom/onyx/android/sdk/reader/cbox/page/BookManager;

    invoke-virtual {v6}, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->getCurrentChapter()Lcom/onyx/android/sdk/reader/cbox/page/LayoutChapter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/onyx/android/sdk/reader/cbox/page/LayoutChapter;->getChapter()Lcom/onyx/engine/sdk/Chapter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/onyx/engine/sdk/Chapter;->getBasePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "chapter range: "

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->e:Lcom/onyx/android/sdk/reader/cbox/page/BookManager;

    invoke-virtual {v6}, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->getCurrentChapter()Lcom/onyx/android/sdk/reader/cbox/page/LayoutChapter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/onyx/android/sdk/reader/cbox/page/LayoutChapter;->getChapter()Lcom/onyx/engine/sdk/Chapter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/onyx/engine/sdk/Chapter;->getStartPos()I

    move-result v6

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->e:Lcom/onyx/android/sdk/reader/cbox/page/BookManager;

    invoke-virtual {v6}, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->getCurrentChapter()Lcom/onyx/android/sdk/reader/cbox/page/LayoutChapter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/onyx/android/sdk/reader/cbox/page/LayoutChapter;->getChapter()Lcom/onyx/engine/sdk/Chapter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/onyx/engine/sdk/Chapter;->getEndPos()I

    move-result v6

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "page progress: "

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/onyx/engine/sdk/PageInfo;->getPageNumber()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/onyx/engine/sdk/PageInfo;->getTotalPage()I

    move-result v6

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "page range: "

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/onyx/engine/sdk/PageInfo;->getStartPositionInt()I

    move-result v6

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/onyx/engine/sdk/PageInfo;->getEndPositionInt()I

    move-result v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v5

    sget-object v6, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    invoke-virtual {v6, v5}, Lcom/onyx/android/sdk/base/utils/Debug;->w(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "hasTextOnScreen: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->k0()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->O()Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen;

    move-result-object p0

    const-string v0, "paragraph total = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen;->getParagraphList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "line total = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen;->getScreenLineNumberTextMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "text total = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen;->getTextList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "positionTextMap.size = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen;->getPositionTextMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "image total = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen;->getImageList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "link total = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen;->getLinkList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "--- end screenPage debug info ---"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public final k0()Z
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->O()Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen;->getTextList()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->isNonBlank(Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method public final l(Ljava/lang/StringBuilder;)V
    .locals 4

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->e:Lcom/onyx/android/sdk/reader/cbox/page/BookManager;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->getEngineStyle()Lcom/onyx/engine/sdk/ReaderTextStyle;

    move-result-object v0

    const-string v1, "--- start style debug info ---"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "ENGINE_VERSION: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "1.4.121.1"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "JSOUP_VERSION: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "1.13.13"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "device: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->c:Ljava/lang/String;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    const-string v2, "path"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v3

    :cond_0
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "page cache dir: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->d:Ljava/lang/String;

    if-nez v2, :cond_1

    const-string v2, "bookKeyCode"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v3, v2

    :goto_0
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "style hash: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->e:Lcom/onyx/android/sdk/reader/cbox/page/BookManager;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->getStyleHashKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "columnCount: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->k:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "viewport: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->j:Lcom/onyx/android/sdk/base/data/Size;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/data/Size;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "engine style: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/onyx/engine/sdk/ReaderTextStyle;->toJson()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "display metrics: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->b:Lcom/onyx/engine/sdk/DisplayMetrics;

    invoke-virtual {p0}, Lcom/onyx/engine/sdk/DisplayMetrics;->toJson()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "--- end style debug info ---"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public final l0(II)Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfText;
    .locals 3

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->k0()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->O()Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen;->getTextList()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p1, p2, v2}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->m0(Ljava/util/List;IIF)Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfText;

    move-result-object v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v2, Lcom/onyx/android/sdk/readercore/R$dimen;->select_text_hit_test_padding:I

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen;->getTextList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->m0(Ljava/util/List;IIF)Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfText;

    move-result-object v1

    :cond_1
    return-object v1
.end method

.method public final lastPieceOfText()Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfText;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->k0()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->O()Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen;->getTextList()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfText;

    return-object p0
.end method

.method public final lastSelectionEndOfLine(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Lcom/onyx/android/sdk/reader/api/ReaderSelection;
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "startPosition"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->M(Lcom/onyx/android/sdk/reader/api/ReaderPosition;Z)Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfText;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->J(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfText;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {p0, v0, p1}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->q(Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfText;Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfText;)Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;

    move-result-object p0

    return-object p0
.end method

.method public final lastText()Lcom/onyx/android/sdk/reader/api/ReaderSelection;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->k0()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->O()Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen;->getTextList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfText;

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->p(Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfText;)Lcom/onyx/android/sdk/reader/api/ReaderSelection;

    move-result-object p0

    return-object p0
.end method

.method public final lastTextEndOfLine(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Lcom/onyx/android/sdk/reader/api/ReaderSelection;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "startPosition"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->J(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfText;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->p(Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfText;)Lcom/onyx/android/sdk/reader/api/ReaderSelection;

    move-result-object p0

    return-object p0
.end method

.method public final layoutPageForSimpleDocument()V
    .locals 8

    :try_start_0
    new-instance v0, Lcom/onyx/android/sdk/base/utils/Benchmark;

    invoke-direct {v0}, Lcom/onyx/android/sdk/base/utils/Benchmark;-><init>()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->getStartPosition()Lcom/onyx/engine/sdk/PinPosition;

    move-result-object v1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->getInitPosition()Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->gotoPosition(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Z

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->isLastPage()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->nextScreen()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_1
    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->gotoPosition(Lcom/onyx/engine/sdk/PinPosition;)Z

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/utils/Benchmark;->duration()J

    move-result-wide v1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->getTotalPage()I

    move-result v3

    int-to-long v3, v3

    div-long/2addr v1, v3

    long-to-int v1, v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-class v3, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;

    :try_start_1
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", layoutPageForSimpleDocument, PageCount = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->getTotalPage()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", Speed = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " Ms/Page"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/base/utils/Benchmark;->report(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/utils/Benchmark;->duration()J

    move-result-wide v4

    const-wide/16 v6, 0x1f4

    cmp-long v0, v4, v6

    if-gez v0, :cond_2

    const/16 v0, 0x64

    if-lt v1, v0, :cond_3

    :cond_2
    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-string v1, "layoutPageForSimpleDocument slowly!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v1, v2}, Lcom/onyx/android/sdk/base/utils/Debug;->w(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->A0()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/base/utils/Debug;->w(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final m(Lcom/onyx/engine/sdk/TableOfContentEntry;Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;)V
    .locals 5

    invoke-virtual {p1}, Lcom/onyx/engine/sdk/TableOfContentEntry;->getChildren()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/engine/sdk/TableOfContentEntry;->getChildren()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/engine/sdk/TableOfContentEntry;

    sget-object v1, Lcom/onyx/android/sdk/reader/cbox/utils/CBoxUtils;->INSTANCE:Lcom/onyx/android/sdk/reader/cbox/utils/CBoxUtils;

    invoke-virtual {v0}, Lcom/onyx/engine/sdk/TableOfContentEntry;->getPosition()Lcom/onyx/engine/sdk/PinPosition;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/reader/cbox/utils/CBoxUtils;->convert(Lcom/onyx/engine/sdk/PinPosition;)Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object v1

    sget-object v2, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;->Companion:Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry$Companion;

    invoke-virtual {v0}, Lcom/onyx/engine/sdk/TableOfContentEntry;->getTitle()Ljava/lang/String;

    move-result-object v3

    const-string v4, "getTitle(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3, v1}, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry$Companion;->createEntry(Ljava/lang/String;Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;

    move-result-object v1

    invoke-virtual {v2, p2, v1}, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry$Companion;->addEntry(Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;)Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->m(Lcom/onyx/engine/sdk/TableOfContentEntry;Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final m0(Ljava/util/List;IIF)Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfText;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfText;",
            ">;IIF)",
            "Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfText;"
        }
    .end annotation

    new-instance p0, Landroid/graphics/RectF;

    invoke-direct {p0}, Landroid/graphics/RectF;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfText;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfText;->getCellOfScreen()Lcom/onyx/engine/sdk/CellOfScreen;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/engine/sdk/CellOfScreen;->getRect()Landroid/graphics/RectF;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/base/extension/RectKt;->orEmpty(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    invoke-static {p0, p4}, Lcom/onyx/android/sdk/base/extension/RectKt;->expand(Landroid/graphics/RectF;F)Landroid/graphics/RectF;

    int-to-float v1, p2

    int-to-float v2, p3

    invoke-virtual {p0, v1, v2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final metadataString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->e:Lcom/onyx/android/sdk/reader/cbox/page/BookManager;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->getMetadata()Lcom/onyx/engine/sdk/Metadata;

    move-result-object p0

    const-string v0, "Title"

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/onyx/engine/sdk/Metadata;->getTitle()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, p0

    :goto_0
    return-object v1

    :cond_1
    const-string v0, "Author"

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/onyx/engine/sdk/Metadata;->getAuthors()Ljava/util/List;

    move-result-object p0

    move-object p1, p0

    check-cast p1, Ljava/util/Collection;

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_2

    return-object v1

    :cond_2
    check-cast p0, Ljava/lang/Iterable;

    const-string p1, ","

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/StringUtils;->join(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "join(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_3
    return-object v1
.end method

.method public final n(FF)Z
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->lastText()Lcom/onyx/android/sdk/reader/api/ReaderSelection;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/onyx/android/sdk/reader/utils/ReaderSelectionUtils;->INSTANCE:Lcom/onyx/android/sdk/reader/utils/ReaderSelectionUtils;

    invoke-virtual {v0, p1, p2, p0}, Lcom/onyx/android/sdk/reader/utils/ReaderSelectionUtils;->canExtendSelectionToLastText(FFLcom/onyx/android/sdk/reader/api/ReaderSelection;)Z

    move-result p0

    :goto_0
    return p0
.end method

.method public final n0()Z
    .locals 1

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->e:Lcom/onyx/android/sdk/reader/cbox/page/BookManager;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->getDirection()Lcom/onyx/android/sdk/reader/api/ReaderPageProgressionDirection;

    move-result-object p0

    sget-object v0, Lcom/onyx/android/sdk/reader/api/ReaderPageProgressionDirection;->RTL:Lcom/onyx/android/sdk/reader/api/ReaderPageProgressionDirection;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final nextScreen()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/onyx/android/sdk/reader/api/ReaderException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->E0()V

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->f:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->clear()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->w0()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->p0()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->f:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->clear()V

    iget v0, p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->k:I

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_3

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->w0()Z

    move-result v3

    or-int/2addr v2, v3

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->F0()V

    return v2
.end method

.method public final o(Lcom/onyx/engine/sdk/SearchResult;)Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;
    .locals 5

    new-instance v0, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;

    invoke-direct {v0}, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;-><init>()V

    invoke-virtual {p1}, Lcom/onyx/engine/sdk/SearchResult;->getStartPosition()Lcom/onyx/engine/sdk/PinPosition;

    move-result-object v1

    const-string v2, "getStartPosition(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->getPageNumberOfPosition(Lcom/onyx/engine/sdk/PinPosition;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->setPageIndex(I)V

    invoke-virtual {p1}, Lcom/onyx/engine/sdk/SearchResult;->getStartPosition()Lcom/onyx/engine/sdk/PinPosition;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/engine/sdk/SearchResult;->getEndPosition()Lcom/onyx/engine/sdk/PinPosition;

    move-result-object v3

    const-string v4, "getEndPosition(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1, v3}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->w(Lcom/onyx/engine/sdk/PinPosition;Lcom/onyx/engine/sdk/PinPosition;)Lcom/onyx/android/sdk/reader/api/PageRange;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->setPageRange(Lcom/onyx/android/sdk/reader/api/PageRange;)V

    invoke-virtual {p1}, Lcom/onyx/engine/sdk/SearchResult;->getText()Ljava/lang/String;

    move-result-object v1

    const-string v3, ""

    if-nez v1, :cond_0

    move-object v1, v3

    :cond_0
    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->setOriginText(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/engine/sdk/SearchResult;->getLeftText()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    move-object v1, v3

    :cond_1
    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->setOriginLeftText(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/engine/sdk/SearchResult;->getRightText()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    move-object v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->setOriginRightText(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/engine/sdk/SearchResult;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->setText(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/engine/sdk/SearchResult;->getLeftText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->setLeftText(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/engine/sdk/SearchResult;->getRightText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->setRightText(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/engine/sdk/SearchResult;->getStartPosition()Lcom/onyx/engine/sdk/PinPosition;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/engine/sdk/SearchResult;->getEndPosition()Lcom/onyx/engine/sdk/PinPosition;

    move-result-object p1

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1, p1}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->w(Lcom/onyx/engine/sdk/PinPosition;Lcom/onyx/engine/sdk/PinPosition;)Lcom/onyx/android/sdk/reader/api/PageRange;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->setSelectionRange(Lcom/onyx/android/sdk/reader/api/PageRange;)V

    sget-object p0, Lcom/onyx/android/sdk/reader/api/ReaderWritingMode;->HORIZONTAL:Lcom/onyx/android/sdk/reader/api/ReaderWritingMode;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->setWritingMode(Lcom/onyx/android/sdk/reader/api/ReaderWritingMode;)V

    return-object v0
.end method

.method public final o0(Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen;I)Z
    .locals 0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen;->getPageImageMap()Ljava/util/Map;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->getSize(Ljava/util/Collection;)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final onPaginationFinally()V
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->e:Lcom/onyx/android/sdk/reader/cbox/page/BookManager;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->onPaginationFinally()V

    return-void
.end method

.method public final onPaginationStart()Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->e:Lcom/onyx/android/sdk/reader/cbox/page/BookManager;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->onPaginationStart()Z

    move-result p0

    return p0
.end method

.method public final open(Lcom/onyx/engine/sdk/OpenOptions;)Lcom/onyx/engine/sdk/BookOpenResult;
    .locals 2
    .param p1    # Lcom/onyx/engine/sdk/OpenOptions;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "options"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/onyx/engine/sdk/OpenOptions;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getPath(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->c:Ljava/lang/String;

    .line 2
    sget-object v1, Lcom/onyx/android/sdk/reader/cbox/utils/CBoxUtils;->INSTANCE:Lcom/onyx/android/sdk/reader/cbox/utils/CBoxUtils;

    if-nez v0, :cond_0

    const-string v0, "path"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/reader/cbox/utils/CBoxUtils;->getPagePositionCacheDirName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, ""

    :cond_1
    iput-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->d:Ljava/lang/String;

    .line 3
    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->e:Lcom/onyx/android/sdk/reader/cbox/page/BookManager;

    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->open(Lcom/onyx/engine/sdk/OpenOptions;Ljava/lang/String;)Lcom/onyx/engine/sdk/BookOpenResult;

    move-result-object p0

    return-object p0
.end method

.method public final open(Lcom/onyx/engine/sdk/OpenOptions;Ljava/lang/String;)Lcom/onyx/engine/sdk/BookOpenResult;
    .locals 2
    .param p1    # Lcom/onyx/engine/sdk/OpenOptions;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "options"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bookKeyCode"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Lcom/onyx/engine/sdk/OpenOptions;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getPath(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->c:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->d:Ljava/lang/String;

    .line 6
    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->e:Lcom/onyx/android/sdk/reader/cbox/page/BookManager;

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->open(Lcom/onyx/engine/sdk/OpenOptions;Ljava/lang/String;)Lcom/onyx/engine/sdk/BookOpenResult;

    move-result-object p0

    return-object p0
.end method

.method public final p(Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfText;)Lcom/onyx/android/sdk/reader/api/ReaderSelection;
    .locals 3

    new-instance v0, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;

    invoke-direct {v0}, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;-><init>()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->getScreenStartPosition()Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->getPageNumberOfPosition(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->setPageIndex(I)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->getScreenStartPosition()Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object v1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->getScreenEndPosition()Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->v(Lcom/onyx/android/sdk/reader/api/ReaderPosition;Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Lcom/onyx/android/sdk/reader/api/PageRange;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->setPageRange(Lcom/onyx/android/sdk/reader/api/PageRange;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfText;->getCellOfScreen()Lcom/onyx/engine/sdk/CellOfScreen;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/engine/sdk/CellOfScreen;->getWord()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getWord(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->setText(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfText;->getPosition()Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object v1

    invoke-interface {v1}, Lcom/onyx/android/sdk/reader/api/ReaderPosition;->copy()Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->u(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Lcom/onyx/android/sdk/reader/api/PageRange;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->setSelectionRange(Lcom/onyx/android/sdk/reader/api/PageRange;)V

    const/4 p0, 0x1

    new-array p0, p0, [Landroid/graphics/RectF;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfText;->getCellOfScreen()Lcom/onyx/engine/sdk/CellOfScreen;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/engine/sdk/CellOfScreen;->getRect()Landroid/graphics/RectF;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/base/extension/RectKt;->orEmpty(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, p0, v2

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->setCharRectList(Ljava/util/List;)V

    sget-object p0, Lcom/onyx/android/sdk/reader/cbox/utils/CBoxUtils;->INSTANCE:Lcom/onyx/android/sdk/reader/cbox/utils/CBoxUtils;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfText;->getCellOfScreen()Lcom/onyx/engine/sdk/CellOfScreen;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/engine/sdk/CellOfScreen;->getWritingMode()Lcom/onyx/engine/sdk/WritingMode;

    move-result-object p1

    const-string v1, "getWritingMode(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/cbox/utils/CBoxUtils;->convert(Lcom/onyx/engine/sdk/WritingMode;)Lcom/onyx/android/sdk/reader/api/ReaderWritingMode;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->setWritingMode(Lcom/onyx/android/sdk/reader/api/ReaderWritingMode;)V

    return-object v0
.end method

.method public final p0()Z
    .locals 1

    iget p0, p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->k:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final paginationNext(Lcom/onyx/android/sdk/reader/api/PaginationChapterInfo;)Lcom/onyx/android/sdk/reader/api/PaginationChapterInfo;
    .locals 11
    .param p1    # Lcom/onyx/android/sdk/reader/api/PaginationChapterInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->e:Lcom/onyx/android/sdk/reader/cbox/page/BookManager;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->paginationNext(Lcom/onyx/android/sdk/reader/api/PaginationChapterInfo;)Lcom/onyx/android/sdk/reader/cbox/page/PaginationInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v1, p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->e:Lcom/onyx/android/sdk/reader/cbox/page/BookManager;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->getCurrentChapter()Lcom/onyx/android/sdk/reader/cbox/page/LayoutChapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/reader/cbox/page/LayoutChapter;->getChapter()Lcom/onyx/engine/sdk/Chapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/engine/sdk/Chapter;->getChapterId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/api/PaginationChapterInfo;->getChapterId()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/onyx/android/sdk/base/extension/StringKt;->safelyEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    new-instance p1, Lcom/onyx/android/sdk/reader/api/PaginationChapterInfo;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/reader/cbox/page/PaginationInfo;->getChapterID()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, ""

    :cond_1
    move-object v3, v1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/reader/cbox/page/PaginationInfo;->getPageRange()Lcom/onyx/engine/sdk/PageRange;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/onyx/engine/sdk/PageRange;->getStart()Lcom/onyx/engine/sdk/PinPosition;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->I0(Lcom/onyx/engine/sdk/PinPosition;)Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object v4

    invoke-virtual {v0}, Lcom/onyx/android/sdk/reader/cbox/page/PaginationInfo;->getPageRange()Lcom/onyx/engine/sdk/PageRange;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/onyx/engine/sdk/PageRange;->getEnd()Lcom/onyx/engine/sdk/PinPosition;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->I0(Lcom/onyx/engine/sdk/PinPosition;)Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object v5

    invoke-virtual {v0}, Lcom/onyx/android/sdk/reader/cbox/page/PaginationInfo;->getPageRange()Lcom/onyx/engine/sdk/PageRange;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/engine/sdk/PageRange;->getStartChapterLength()I

    move-result v6

    invoke-virtual {v0}, Lcom/onyx/android/sdk/reader/cbox/page/PaginationInfo;->getProgress()I

    move-result v7

    invoke-virtual {v0}, Lcom/onyx/android/sdk/reader/cbox/page/PaginationInfo;->getUpdateReaderPageInfo()Z

    move-result v8

    invoke-virtual {v0}, Lcom/onyx/android/sdk/reader/cbox/page/PaginationInfo;->isPaginationComplete()Z

    move-result v9

    move-object v2, p1

    invoke-direct/range {v2 .. v10}, Lcom/onyx/android/sdk/reader/api/PaginationChapterInfo;-><init>(Ljava/lang/String;Lcom/onyx/android/sdk/reader/api/ReaderPosition;Lcom/onyx/android/sdk/reader/api/ReaderPosition;IIZZZ)V

    return-object p1
.end method

.method public final preScreen()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/onyx/android/sdk/reader/api/ReaderException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->E0()V

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->f:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->clear()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->p0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->z0()Z

    move-result p0

    return p0

    :cond_0
    iget v0, p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->k:I

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->z0()Z

    move-result v4

    or-int/2addr v3, v4

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->F0()V

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->getStartPosition()Lcom/onyx/engine/sdk/PinPosition;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->gotoPosition(Lcom/onyx/engine/sdk/PinPosition;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public final q(Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfText;Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfText;)Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;
    .locals 16

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->k0()Z

    move-result v1

    if-eqz v1, :cond_7

    if-eqz p1, :cond_7

    if-nez p2, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfText;->getPosition()Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object v1

    invoke-interface {v1}, Lcom/onyx/android/sdk/reader/api/ReaderPosition;->asInteger()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfText;->getPosition()Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object v2

    invoke-interface {v2}, Lcom/onyx/android/sdk/reader/api/ReaderPosition;->asInteger()I

    move-result v2

    if-le v1, v2, :cond_1

    move-object/from16 v2, p1

    move-object/from16 v1, p2

    goto :goto_0

    :cond_1
    move-object/from16 v1, p1

    move-object/from16 v2, p2

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->O()Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen;->getTextList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v5

    invoke-interface {v4, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/onyx/engine/sdk/WritingMode;->HORIZONTAL:Lcom/onyx/engine/sdk/WritingMode;

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    new-instance v11, Landroid/graphics/RectF;

    invoke-direct {v11}, Landroid/graphics/RectF;-><init>()V

    const/4 v12, -0x1

    move v13, v12

    :goto_1
    if-gt v5, v6, :cond_3

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfText;

    invoke-virtual {v9}, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfText;->getCellOfScreen()Lcom/onyx/engine/sdk/CellOfScreen;

    move-result-object v14

    invoke-virtual {v14}, Lcom/onyx/engine/sdk/CellOfScreen;->getWritingMode()Lcom/onyx/engine/sdk/WritingMode;

    move-result-object v14

    const-string v15, "getWritingMode(...)"

    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-le v13, v12, :cond_2

    invoke-virtual {v9}, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfText;->getScreenLineNumber()I

    move-result v15

    if-eq v13, v15, :cond_2

    new-instance v13, Landroid/graphics/RectF;

    invoke-direct {v13, v11}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    invoke-interface {v10, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v11}, Landroid/graphics/RectF;->setEmpty()V

    invoke-virtual {v3}, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen;->getNewParagraphScreenLineNumberList()Ljava/util/List;

    move-result-object v13

    invoke-virtual {v9}, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfText;->getScreenParagraphNumber()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v13, v15}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    const-string v13, "\n"

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v0, v9, v7, v8, v11}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->j(Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfText;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Landroid/graphics/RectF;)V

    invoke-virtual {v9}, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfText;->getScreenLineNumber()I

    move-result v13

    add-int/lit8 v5, v5, 0x1

    move-object v9, v14

    goto :goto_1

    :cond_3
    :goto_2
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/onyx/android/sdk/base/extension/StringKt;->isAlphaSentence(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    move-object v3, v4

    check-cast v3, Ljava/util/Collection;

    invoke-static {v3, v5}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->isOutOfRange(Ljava/util/Collection;I)Z

    move-result v3

    if-nez v3, :cond_5

    add-int/lit8 v3, v5, 0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfText;

    invoke-virtual {v5}, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfText;->getCellOfScreen()Lcom/onyx/engine/sdk/CellOfScreen;

    move-result-object v6

    invoke-virtual {v6}, Lcom/onyx/engine/sdk/CellOfScreen;->getWord()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/onyx/android/sdk/base/extension/StringKt;->isPunctuationString(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v5}, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfText;->getScreenLineNumber()I

    move-result v6

    if-le v6, v13, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {v0, v5, v7, v8, v11}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->j(Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfText;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Landroid/graphics/RectF;)V

    invoke-virtual {v5}, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfText;->getScreenLineNumber()I

    move-result v13

    move-object v2, v5

    move v5, v3

    goto :goto_2

    :cond_5
    :goto_3
    invoke-virtual {v11}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6

    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3, v11}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    new-instance v3, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;

    invoke-direct {v3}, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->getScreenStartPosition()Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->getPageNumberOfPosition(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->setPageIndex(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->getScreenStartPosition()Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->getScreenEndPosition()Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->v(Lcom/onyx/android/sdk/reader/api/ReaderPosition;Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Lcom/onyx/android/sdk/reader/api/PageRange;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->setPageRange(Lcom/onyx/android/sdk/reader/api/PageRange;)V

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/onyx/android/sdk/base/extension/StringKt;->removeSoftHyphenSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->setText(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "toString(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->setOriginText(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfText;->getPosition()Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object v1

    invoke-interface {v1}, Lcom/onyx/android/sdk/reader/api/ReaderPosition;->copy()Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object v1

    invoke-virtual {v2}, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfText;->getPosition()Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object v2

    invoke-interface {v2}, Lcom/onyx/android/sdk/reader/api/ReaderPosition;->copy()Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->v(Lcom/onyx/android/sdk/reader/api/ReaderPosition;Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Lcom/onyx/android/sdk/reader/api/PageRange;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->setSelectionRange(Lcom/onyx/android/sdk/reader/api/PageRange;)V

    invoke-virtual {v3, v10}, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->setCharRectList(Ljava/util/List;)V

    sget-object v0, Lcom/onyx/android/sdk/reader/cbox/utils/CBoxUtils;->INSTANCE:Lcom/onyx/android/sdk/reader/cbox/utils/CBoxUtils;

    invoke-virtual {v0, v9}, Lcom/onyx/android/sdk/reader/cbox/utils/CBoxUtils;->convert(Lcom/onyx/engine/sdk/WritingMode;)Lcom/onyx/android/sdk/reader/api/ReaderWritingMode;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->setWritingMode(Lcom/onyx/android/sdk/reader/api/ReaderWritingMode;)V

    return-object v3

    :cond_7
    :goto_4
    const/4 v0, 0x0

    return-object v0
.end method

.method public final q0(Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen;Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfText;)Z
    .locals 1

    invoke-virtual {p2}, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfText;->getCellOfScreen()Lcom/onyx/engine/sdk/CellOfScreen;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/engine/sdk/CellOfScreen;->isWhiteSpace()Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen;->getScreenLineNumberTextMap()Ljava/util/Map;

    move-result-object p0

    invoke-virtual {p2}, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfText;->getScreenLineNumber()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    move-object p1, p0

    check-cast p1, Ljava/util/Collection;

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p0, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const/4 p2, 0x1

    sub-int/2addr p0, p2

    if-ne p1, p0, :cond_2

    move v0, p2

    :cond_2
    :goto_0
    return v0
.end method

.method public final r(Ljava/lang/String;)Ljava/lang/String;
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

    const-string p1, ""

    :cond_2
    return-object p1
.end method

.method public final r0()Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen;
    .locals 12

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->F0()V

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->f:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->clear()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->n0()Z

    move-result v0

    iget-object v1, p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->j:Lcom/onyx/android/sdk/base/data/Size;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/Size;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->k:I

    div-int/2addr v1, v2

    new-instance v2, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen;

    invoke-direct {v2}, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen;-><init>()V

    iget v3, p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->k:I

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    invoke-virtual {p0, v1, v4, v0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->a0(IIZ)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->E()Lcom/onyx/engine/sdk/PageInfo;

    move-result-object v6

    invoke-virtual {v2}, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen;->getPageTextMap()Ljava/util/Map;

    move-result-object v7

    invoke-virtual {v6}, Lcom/onyx/engine/sdk/PageInfo;->getPageNumber()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    sget-object v9, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument$loadDataOnScreen$1;->INSTANCE:Lcom/onyx/android/sdk/reader/cbox/CBoxDocument$loadDataOnScreen$1;

    new-instance v10, Lcom/sunia/HTREnginev2/t00;

    invoke-direct {v10, v9}, Lcom/sunia/HTREnginev2/t00;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-interface {v7, v8, v10}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-virtual {v6}, Lcom/onyx/engine/sdk/PageInfo;->getPageNumber()I

    move-result v8

    invoke-virtual {p0, v5, v8}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->b0(FI)Ljava/util/List;

    move-result-object v8

    check-cast v8, Ljava/util/Collection;

    invoke-interface {v7, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v6}, Lcom/onyx/engine/sdk/PageInfo;->getPageNumber()I

    move-result v7

    invoke-virtual {p0, v5, v7}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->V(FI)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v2}, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen;->getPageImageMap()Ljava/util/Map;

    move-result-object v8

    invoke-virtual {v6}, Lcom/onyx/engine/sdk/PageInfo;->getPageNumber()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    sget-object v10, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument$loadDataOnScreen$2;->INSTANCE:Lcom/onyx/android/sdk/reader/cbox/CBoxDocument$loadDataOnScreen$2;

    new-instance v11, Lcom/sunia/HTREnginev2/u00;

    invoke-direct {v11, v10}, Lcom/sunia/HTREnginev2/u00;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-interface {v8, v9, v11}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    move-object v9, v7

    check-cast v9, Ljava/util/Collection;

    invoke-interface {v8, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v2}, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen;->getPageLinkMap()Ljava/util/Map;

    move-result-object v8

    invoke-virtual {v6}, Lcom/onyx/engine/sdk/PageInfo;->getPageNumber()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    sget-object v10, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument$loadDataOnScreen$3;->INSTANCE:Lcom/onyx/android/sdk/reader/cbox/CBoxDocument$loadDataOnScreen$3;

    new-instance v11, Lcom/sunia/HTREnginev2/v00;

    invoke-direct {v11, v10}, Lcom/sunia/HTREnginev2/v00;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-interface {v8, v9, v11}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-virtual {p0, v5}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->W(F)Ljava/util/List;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v8, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v2}, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen;->getPageLinkMap()Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v6}, Lcom/onyx/engine/sdk/PageInfo;->getPageNumber()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    sget-object v8, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument$loadDataOnScreen$4;->INSTANCE:Lcom/onyx/android/sdk/reader/cbox/CBoxDocument$loadDataOnScreen$4;

    new-instance v9, Lcom/sunia/HTREnginev2/w00;

    invoke-direct {v9, v8}, Lcom/sunia/HTREnginev2/w00;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-interface {v5, v6, v9}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-virtual {p0, v7}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->R(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    check-cast v6, Ljava/util/Collection;

    invoke-interface {v5, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget v5, p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->k:I

    add-int/lit8 v5, v5, -0x1

    if-lt v4, v5, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->w0()Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_2
    :goto_1
    invoke-virtual {v2}, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen;->flatMapToList()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->F0()V

    return-object v2
.end method

.method public final readCover()Landroid/graphics/Bitmap;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->a:Lcom/onyx/engine/sdk/NeoBaseNative;

    invoke-interface {p0}, Lcom/onyx/engine/sdk/NeoBaseNative;->readCover()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public final readLanguage()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->e:Lcom/onyx/android/sdk/reader/cbox/page/BookManager;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->getMetadata()Lcom/onyx/engine/sdk/Metadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/engine/sdk/Metadata;->getLanguage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->y0()Ljava/lang/String;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method public final readTableOfContent(Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;)Z
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "toc"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->a:Lcom/onyx/engine/sdk/NeoBaseNative;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/onyx/engine/sdk/NeoBaseNative;->getTableOfContent(Z)Lcom/onyx/engine/sdk/TableOfContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/engine/sdk/TableOfContent;->getRoot()Lcom/onyx/engine/sdk/TableOfContentEntry;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/engine/sdk/TableOfContentEntry;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {v0}, Lcom/onyx/engine/sdk/TableOfContent;->getRoot()Lcom/onyx/engine/sdk/TableOfContentEntry;

    move-result-object v0

    const-string v2, "getRoot(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;->getRootEntry()Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->m(Lcom/onyx/engine/sdk/TableOfContentEntry;Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;)V

    return v1
.end method

.method public final s(Ljava/util/List;FLcom/onyx/engine/sdk/LinkType;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/engine/sdk/LinkInfo;",
            ">;F",
            "Lcom/onyx/engine/sdk/LinkType;",
            ")",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfLink;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/engine/sdk/LinkInfo;

    new-instance v1, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfLink;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-direct {v1, v0, v3, v2, v3}, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfLink;-><init>(Lcom/onyx/engine/sdk/LinkInfo;Lcom/onyx/android/sdk/reader/api/ReaderPosition;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0}, Lcom/onyx/engine/sdk/LinkInfo;->getRect()Landroid/graphics/RectF;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2}, Landroid/graphics/RectF;->offset(FF)V

    invoke-virtual {v1, p3}, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfLink;->setLinkType(Lcom/onyx/engine/sdk/LinkType;)V

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public final saveLogFiles(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "dirPath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->P()Ljava/lang/String;

    move-result-object p0

    sget-object v1, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->INSTANCE:Lcom/onyx/android/sdk/base/utils/DateTimeUtil;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->getCurrentTime24Format()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-class v4, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ".simpleName _"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".txt"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    invoke-virtual {p1, p0, v2}, Lcom/onyx/android/sdk/base/utils/FileUtils;->saveContentToFile(Ljava/lang/String;Ljava/io/File;)Z

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    const-string p1, "getAbsolutePath(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public final search(Lcom/onyx/android/sdk/reader/api/ReaderSearchOptions;Ljava/util/List;)Z
    .locals 11
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderSearchOptions;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/reader/api/ReaderSearchOptions;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/reader/api/ReaderSelection;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "options"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "list"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/onyx/android/sdk/reader/api/ReaderSearchOptions;->fromPosition()Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->toEnginePosition(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Lcom/onyx/engine/sdk/PinPosition;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/engine/sdk/PinPosition;->getPositionInt()I

    move-result v0

    invoke-interface {p1}, Lcom/onyx/android/sdk/reader/api/ReaderSearchOptions;->isExcludeStartPosition()Z

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    invoke-interface {p1}, Lcom/onyx/android/sdk/reader/api/ReaderSearchOptions;->limit()I

    move-result v2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->getTotalPage()I

    move-result v3

    new-instance v4, Lcom/onyx/engine/sdk/SearchOptions;

    invoke-direct {v4}, Lcom/onyx/engine/sdk/SearchOptions;-><init>()V

    invoke-interface {p1}, Lcom/onyx/android/sdk/reader/api/ReaderSearchOptions;->isCaseSensitive()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/onyx/engine/sdk/SearchOptions;->setCaseSensitive(Z)V

    invoke-interface {p1}, Lcom/onyx/android/sdk/reader/api/ReaderSearchOptions;->pattern()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    if-eqz v5, :cond_3

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-nez v7, :cond_2

    goto :goto_0

    :cond_2
    move v7, v1

    goto :goto_1

    :cond_3
    :goto_0
    move v7, v6

    :goto_1
    if-eqz v7, :cond_4

    return v1

    :cond_4
    new-instance v7, Lkotlin/text/Regex;

    const-string v8, "[($(*+.\\[?\\^\\{\\\\)]"

    invoke-direct {v7, v8}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    const-string v8, "\\\\$0"

    invoke-virtual {v7, v5, v8}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/onyx/android/sdk/base/extension/StringKt;->removeNewlineSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v0}, Lcom/onyx/engine/sdk/SearchOptions;->setStartPosition(I)V

    invoke-virtual {v4, v5}, Lcom/onyx/engine/sdk/SearchOptions;->setSearchText(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/onyx/android/sdk/reader/api/ReaderSearchOptions;->contextLength()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/onyx/engine/sdk/SearchOptions;->setContextLength(I)V

    invoke-virtual {v4, v2}, Lcom/onyx/engine/sdk/SearchOptions;->setLimit(I)V

    new-instance v5, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v5, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    new-instance v7, Lcom/sunia/HTREnginev2/s00;

    invoke-direct {v7, p0, v5}, Lcom/sunia/HTREnginev2/s00;-><init>(Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-interface {p1, v7}, Lcom/onyx/android/sdk/reader/api/ReaderSearchOptions;->setCurrentChapterAbortCall(Ljava/io/Closeable;)V

    iget-object v7, p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->e:Lcom/onyx/android/sdk/reader/cbox/page/BookManager;

    invoke-virtual {v7}, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->getChapterList()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/onyx/android/sdk/reader/cbox/page/LayoutChapter;

    iget-object v9, p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v9

    if-nez v9, :cond_a

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v9

    if-eqz v9, :cond_5

    goto/16 :goto_4

    :cond_5
    invoke-virtual {v8}, Lcom/onyx/android/sdk/reader/cbox/page/LayoutChapter;->getChapter()Lcom/onyx/engine/sdk/Chapter;

    move-result-object v9

    invoke-virtual {v9}, Lcom/onyx/engine/sdk/Chapter;->getEndPos()I

    move-result v9

    if-gt v9, v0, :cond_6

    goto :goto_2

    :cond_6
    invoke-virtual {v8}, Lcom/onyx/android/sdk/reader/cbox/page/LayoutChapter;->getChapter()Lcom/onyx/engine/sdk/Chapter;

    move-result-object v9

    invoke-virtual {v9}, Lcom/onyx/engine/sdk/Chapter;->getPlayOrder()I

    move-result v9

    invoke-virtual {v4, v9}, Lcom/onyx/engine/sdk/SearchOptions;->setChapterIndex(I)Lcom/onyx/engine/sdk/SearchOptions;

    invoke-virtual {v8}, Lcom/onyx/android/sdk/reader/cbox/page/LayoutChapter;->getChapter()Lcom/onyx/engine/sdk/Chapter;

    move-result-object v9

    invoke-virtual {v9}, Lcom/onyx/engine/sdk/Chapter;->getStartPos()I

    move-result v9

    sub-int v9, v0, v9

    invoke-static {v9, v1}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v9

    invoke-virtual {v4, v9}, Lcom/onyx/engine/sdk/SearchOptions;->setStartPosition(I)V

    invoke-interface {p1}, Lcom/onyx/android/sdk/reader/api/ReaderSearchOptions;->progressCallback()Lcom/onyx/android/sdk/reader/api/ReaderSearchProgressCallback;

    move-result-object v9

    if-eqz v9, :cond_7

    new-instance v10, Lcom/onyx/engine/sdk/PinPosition;

    invoke-virtual {v8}, Lcom/onyx/android/sdk/reader/cbox/page/LayoutChapter;->getChapter()Lcom/onyx/engine/sdk/Chapter;

    move-result-object v8

    invoke-direct {v10, v8}, Lcom/onyx/engine/sdk/PinPosition;-><init>(Lcom/onyx/engine/sdk/Chapter;)V

    invoke-virtual {p0, v10}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->getPageNumberOfPosition(Lcom/onyx/engine/sdk/PinPosition;)I

    move-result v8

    invoke-interface {v9, v8, v3}, Lcom/onyx/android/sdk/reader/api/ReaderSearchProgressCallback;->onProgress(II)V

    :cond_7
    iget-object v8, p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->a:Lcom/onyx/engine/sdk/NeoBaseNative;

    invoke-interface {v8, v4}, Lcom/onyx/engine/sdk/NeoBaseNative;->search(Lcom/onyx/engine/sdk/SearchOptions;)Ljava/util/List;

    move-result-object v8

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v8, Ljava/lang/Iterable;

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/onyx/engine/sdk/SearchResult;

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v9}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->o(Lcom/onyx/engine/sdk/SearchResult;)Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;

    move-result-object v9

    invoke-interface {p2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_8
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v8

    if-lt v8, v2, :cond_9

    return v6

    :cond_9
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v8

    sub-int v8, v2, v8

    invoke-virtual {v4, v8}, Lcom/onyx/engine/sdk/SearchOptions;->setLimit(I)V

    goto/16 :goto_2

    :cond_a
    :goto_4
    return v1

    :cond_b
    return v6
.end method

.method public final selectOnScreen(Lcom/onyx/android/sdk/reader/api/ReaderHitTestArgs;Lcom/onyx/android/sdk/reader/api/ReaderHitTestArgs;Lcom/onyx/android/sdk/reader/api/ReaderHitTestOptions;)Lcom/onyx/android/sdk/reader/api/ReaderSelection;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderHitTestArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/reader/api/ReaderHitTestArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/reader/api/ReaderHitTestOptions;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "start"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "end"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hitTestOptions"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/onyx/android/sdk/reader/api/ReaderHitTestOptions;->isSelectingWord()Z

    move-result p3

    if-eqz p3, :cond_0

    sget-object p2, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl;->Companion:Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$Companion;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$Companion;->sharedInstance()Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->selectWordOnScreen(Lcom/onyx/android/sdk/reader/api/ReaderHitTestArgs;Lcom/onyx/android/sdk/reader/api/ReaderTextSplitter;)Lcom/onyx/android/sdk/reader/api/ReaderSelection;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->selectTextOnScreen(Lcom/onyx/android/sdk/reader/api/ReaderHitTestArgs;Lcom/onyx/android/sdk/reader/api/ReaderHitTestArgs;)Lcom/onyx/android/sdk/reader/api/ReaderSelection;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final selectSelection(Lcom/onyx/android/sdk/reader/api/ReaderPosition;I)Lcom/onyx/android/sdk/reader/api/ReaderSelection;
    .locals 7
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "startPos"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->k0()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->O()Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen;->getTextList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->L(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)I

    move-result p1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, p1

    :goto_0
    if-ge v4, v2, :cond_2

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfText;

    invoke-virtual {v5}, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfText;->getCellOfScreen()Lcom/onyx/engine/sdk/CellOfScreen;

    move-result-object v6

    invoke-virtual {v6}, Lcom/onyx/engine/sdk/CellOfScreen;->getWord()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v3, v6

    if-lt v3, p2, :cond_1

    move-object v1, v5

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfText;

    invoke-virtual {p0, p1, v1}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->q(Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfText;Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfText;)Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;

    move-result-object p0

    return-object p0
.end method

.method public final selectTextOnScreen(Lcom/onyx/android/sdk/reader/api/ReaderHitTestArgs;Lcom/onyx/android/sdk/reader/api/ReaderHitTestArgs;)Lcom/onyx/android/sdk/reader/api/ReaderSelection;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderHitTestArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/reader/api/ReaderHitTestArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "startArgs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "endArgs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->selectTextOnScreen(Lcom/onyx/android/sdk/reader/api/ReaderHitTestArgs;Lcom/onyx/android/sdk/reader/api/ReaderHitTestArgs;Z)Lcom/onyx/android/sdk/reader/api/ReaderSelection;

    move-result-object p0

    return-object p0
.end method

.method public final selectTextOnScreen(Lcom/onyx/android/sdk/reader/api/ReaderHitTestArgs;Lcom/onyx/android/sdk/reader/api/ReaderHitTestArgs;Z)Lcom/onyx/android/sdk/reader/api/ReaderSelection;
    .locals 5
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderHitTestArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/reader/api/ReaderHitTestArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "startArgs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "endArgs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->k0()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/api/ReaderHitTestArgs;->getPointInDocument()Landroid/graphics/PointF;

    move-result-object v0

    .line 4
    invoke-virtual {p2}, Lcom/onyx/android/sdk/reader/api/ReaderHitTestArgs;->getPointInDocument()Landroid/graphics/PointF;

    move-result-object v2

    .line 5
    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/api/ReaderHitTestArgs;->getPosition()Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object p1

    .line 6
    invoke-virtual {p2}, Lcom/onyx/android/sdk/reader/api/ReaderHitTestArgs;->getPosition()Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object p2

    .line 7
    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->O()Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen;->getTextList()Ljava/util/List;

    move-result-object v3

    .line 8
    invoke-static {p1}, Lcom/onyx/android/sdk/reader/extension/ReaderPositionImplKt;->isValid(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 9
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->L(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)I

    move-result p1

    .line 10
    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfText;

    goto :goto_0

    .line 11
    :cond_1
    iget p1, v0, Landroid/graphics/PointF;->x:F

    float-to-int p1, p1

    iget v4, v0, Landroid/graphics/PointF;->y:F

    float-to-int v4, v4

    invoke-virtual {p0, p1, v4}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->l0(II)Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfText;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_3

    .line 12
    iget p1, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->n(FF)Z

    move-result p1

    if-nez p1, :cond_2

    return-object v1

    .line 13
    :cond_2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->lastPieceOfText()Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfText;

    move-result-object p1

    .line 14
    :cond_3
    invoke-static {p2}, Lcom/onyx/android/sdk/reader/extension/ReaderPositionImplKt;->isValid(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 15
    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->G(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)I

    move-result p2

    .line 16
    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfText;

    goto :goto_1

    .line 17
    :cond_4
    iget p2, v2, Landroid/graphics/PointF;->x:F

    float-to-int p2, p2

    iget v0, v2, Landroid/graphics/PointF;->y:F

    float-to-int v0, v0

    invoke-virtual {p0, p2, v0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->l0(II)Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfText;

    move-result-object p2

    :goto_1
    if-nez p2, :cond_6

    .line 18
    iget p2, v2, Landroid/graphics/PointF;->x:F

    iget v0, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, p2, v0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->n(FF)Z

    move-result p2

    if-nez p2, :cond_5

    return-object v1

    .line 19
    :cond_5
    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->lastPieceOfText()Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfText;

    move-result-object p2

    :cond_6
    if-nez p3, :cond_7

    .line 20
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->q(Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfText;Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfText;)Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;

    move-result-object p0

    return-object p0

    .line 21
    :cond_7
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfText;->getPosition()Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object p1

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p3}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->M(Lcom/onyx/android/sdk/reader/api/ReaderPosition;Z)Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfText;

    move-result-object p1

    .line 22
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfText;->getPosition()Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object p2

    const/4 p3, 0x1

    invoke-virtual {p0, p2, p3}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->M(Lcom/onyx/android/sdk/reader/api/ReaderPosition;Z)Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfText;

    move-result-object p2

    .line 23
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->q(Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfText;Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfText;)Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;

    move-result-object p0

    return-object p0
.end method

.method public final selectTextOnScreen(Lcom/onyx/android/sdk/reader/api/ReaderPosition;Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Lcom/onyx/android/sdk/reader/api/ReaderSelection;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "startPos"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "endPos"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->k0()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 25
    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->O()Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen;->getTextList()Ljava/util/List;

    move-result-object v0

    .line 26
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->L(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)I

    move-result p1

    .line 27
    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->G(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)I

    move-result p2

    .line 28
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfText;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfText;

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->q(Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfText;Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfText;)Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;

    move-result-object p0

    return-object p0
.end method

.method public final selectTextOnScreen(Lcom/onyx/android/sdk/reader/api/ReaderSelectTextArgs;)Lcom/onyx/android/sdk/reader/api/ReaderSelection;
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderSelectTextArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->k0()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 30
    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->N()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x1

    .line 31
    invoke-virtual {p1, v2}, Lcom/onyx/android/sdk/reader/api/ReaderSelectTextArgs;->setScreenPage(Z)V

    .line 32
    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/reader/api/ReaderSelectTextArgs;->setAllCharRectList(Ljava/util/List;)V

    .line 33
    sget-object v0, Lcom/onyx/android/sdk/reader/utils/ReaderSelectionUtils;->INSTANCE:Lcom/onyx/android/sdk/reader/utils/ReaderSelectionUtils;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/reader/utils/ReaderSelectionUtils;->selectCharRectList(Lcom/onyx/android/sdk/reader/api/ReaderSelectTextArgs;)Ljava/util/List;

    move-result-object p1

    .line 34
    check-cast p1, Ljava/util/Collection;

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v1

    .line 35
    :cond_1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->getScreenStartPosition()Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->getScreenEndPosition()Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->v(Lcom/onyx/android/sdk/reader/api/ReaderPosition;Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Lcom/onyx/android/sdk/reader/api/PageRange;

    move-result-object v0

    .line 36
    invoke-virtual {v0}, Lcom/onyx/android/sdk/reader/api/PageRange;->copy()Lcom/onyx/android/sdk/reader/api/PageRange;

    move-result-object v1

    .line 37
    new-instance v2, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;

    invoke-direct {v2}, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;-><init>()V

    .line 38
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->setCharRectList(Ljava/util/List;)V

    .line 39
    invoke-virtual {v2, v0}, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->setPageRange(Lcom/onyx/android/sdk/reader/api/PageRange;)V

    .line 40
    invoke-virtual {v2, v1}, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->setSelectionRange(Lcom/onyx/android/sdk/reader/api/PageRange;)V

    .line 41
    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->getScreenStartPosition()Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->getPageNumberOfPosition(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)I

    move-result p0

    invoke-virtual {v2, p0}, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->setPageIndex(I)V

    return-object v2
.end method

.method public final selectWordOnScreen(Lcom/onyx/android/sdk/reader/api/ReaderHitTestArgs;Lcom/onyx/android/sdk/reader/api/ReaderTextSplitter;)Lcom/onyx/android/sdk/reader/api/ReaderSelection;
    .locals 4
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderHitTestArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/reader/api/ReaderTextSplitter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "start"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "splitter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/api/ReaderHitTestArgs;->getPointInDocument()Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->k0()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    iget v1, v0, Landroid/graphics/PointF;->x:F

    float-to-int v1, v1

    iget v0, v0, Landroid/graphics/PointF;->y:F

    float-to-int v0, v0

    invoke-virtual {p0, v1, v0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->l0(II)Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfText;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v2

    :cond_1
    invoke-virtual {v0}, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfText;->getCellOfScreen()Lcom/onyx/engine/sdk/CellOfScreen;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/engine/sdk/CellOfScreen;->getWord()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/onyx/android/sdk/reader/cbox/utils/CBoxUtils;->INSTANCE:Lcom/onyx/android/sdk/reader/cbox/utils/CBoxUtils;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v1}, Lcom/onyx/android/sdk/reader/cbox/utils/CBoxUtils;->isChinese(C)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p1, p2}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->selectTextOnScreen(Lcom/onyx/android/sdk/reader/api/ReaderHitTestArgs;Lcom/onyx/android/sdk/reader/api/ReaderHitTestArgs;Z)Lcom/onyx/android/sdk/reader/api/ReaderSelection;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0

    :cond_2
    const/16 p1, 0x32

    invoke-virtual {p0, v0, p1}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->U(Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfText;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, p1}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->f0(Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfText;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfText;->getCellOfScreen()Lcom/onyx/engine/sdk/CellOfScreen;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/engine/sdk/CellOfScreen;->getWord()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2, v1, p1}, Lcom/onyx/android/sdk/reader/api/ReaderTextSplitter;->getTextLeftBoundary(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0}, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfText;->getCellOfScreen()Lcom/onyx/engine/sdk/CellOfScreen;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onyx/engine/sdk/CellOfScreen;->getWord()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v3, v1, p1}, Lcom/onyx/android/sdk/reader/api/ReaderTextSplitter;->getTextRightBoundary(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, v0, v2}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->T(Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfText;I)Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfText;

    move-result-object p2

    invoke-virtual {p0, v0, p1}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->e0(Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfText;I)Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfText;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->q(Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfText;Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfText;)Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0
.end method

.method public final setAbortPagination(Z)V
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->e:Lcom/onyx/android/sdk/reader/cbox/page/BookManager;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->setAbortPagination(Z)V

    return-void
.end method

.method public final setAborted(Z)V
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->a:Lcom/onyx/engine/sdk/NeoBaseNative;

    invoke-interface {p0}, Lcom/onyx/engine/sdk/NeoBaseNative;->abortSearch()V

    :cond_0
    return-void
.end method

.method public final setChineseConvertType(Lcom/onyx/android/sdk/reader/api/ReaderChineseConvertType;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderChineseConvertType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "convertType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->e:Lcom/onyx/android/sdk/reader/cbox/page/BookManager;

    sget-object v1, Lcom/onyx/android/sdk/reader/cbox/utils/CBoxUtils;->INSTANCE:Lcom/onyx/android/sdk/reader/cbox/utils/CBoxUtils;

    invoke-virtual {v1, p1}, Lcom/onyx/android/sdk/reader/cbox/utils/CBoxUtils;->convert(Lcom/onyx/android/sdk/reader/api/ReaderChineseConvertType;)Lcom/onyx/engine/sdk/ReaderTextStyle$ChineseConvertType;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->setChineseConvertType(Lcom/onyx/engine/sdk/ReaderTextStyle$ChineseConvertType;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->H0(Z)V

    return-void
.end method

.method public final setFontEnhancement(I[I)V
    .locals 1
    .param p2    # [I
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->e:Lcom/onyx/android/sdk/reader/cbox/page/BookManager;

    invoke-virtual {v0, p1, p2}, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->setFontEnhancement(I[I)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->H0(Z)V

    return-void
.end method

.method public final setStyle(Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "style"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->e:Lcom/onyx/android/sdk/reader/cbox/page/BookManager;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->setStyle(Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;)Z

    move-result v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->getPagingMode()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->J0(I)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->H0(Z)V

    return-void
.end method

.method public final setTextGamma(F)V
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->e:Lcom/onyx/android/sdk/reader/cbox/page/BookManager;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->setTextGamma(F)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->H0(Z)V

    return-void
.end method

.method public final setViewSize(II)V
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->j:Lcom/onyx/android/sdk/base/data/Size;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/base/data/Size;->setWidth(I)V

    iget-object p1, p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->j:Lcom/onyx/android/sdk/base/data/Size;

    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/base/data/Size;->setHeight(I)V

    iget-object p1, p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->e:Lcom/onyx/android/sdk/reader/cbox/page/BookManager;

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->j:Lcom/onyx/android/sdk/base/data/Size;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/Size;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->k:I

    div-int/2addr v0, v1

    invoke-virtual {p1, v0, p2}, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->setViewSize(II)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->H0(Z)V

    return-void
.end method

.method public final setupDisplayMetrics(Lcom/onyx/engine/sdk/DisplayMetrics;)V
    .locals 3
    .param p1    # Lcom/onyx/engine/sdk/DisplayMetrics;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "displayMetrics"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->j:Lcom/onyx/android/sdk/base/data/Size;

    invoke-virtual {p1}, Lcom/onyx/engine/sdk/DisplayMetrics;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->k:I

    mul-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/data/Size;->setWidth(I)V

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->j:Lcom/onyx/android/sdk/base/data/Size;

    invoke-virtual {p1}, Lcom/onyx/engine/sdk/DisplayMetrics;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/data/Size;->setHeight(I)V

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->e:Lcom/onyx/android/sdk/reader/cbox/page/BookManager;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->setupDisplayMetrics(Lcom/onyx/engine/sdk/DisplayMetrics;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->H0(Z)V

    return-void
.end method

.method public final supportCssOriginStyle()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final t(Lcom/onyx/engine/sdk/PageInfo;)Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$PageMargin;
    .locals 8

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->j:Lcom/onyx/android/sdk/base/data/Size;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/Size;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->k:I

    div-int/2addr v0, v1

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->j:Lcom/onyx/android/sdk/base/data/Size;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/Size;->getHeight()I

    move-result p0

    sget-object v1, Lcom/onyx/android/sdk/base/utils/MathUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/MathUtils;

    sget-object v2, Lcom/onyx/android/sdk/reader/cbox/utils/CBoxUtils;->INSTANCE:Lcom/onyx/android/sdk/reader/cbox/utils/CBoxUtils;

    invoke-virtual {p1}, Lcom/onyx/engine/sdk/PageInfo;->getMarginTop()F

    move-result v3

    invoke-virtual {v2, p0, v3}, Lcom/onyx/android/sdk/reader/cbox/utils/CBoxUtils;->convertToMarginPercent(IF)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v4, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->Companion:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Companion;

    invoke-virtual {v4}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Companion;->getSMALL_PAGE_MARGIN()Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$PageMargin;

    move-result-object v5

    invoke-virtual {v5}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$PageMargin;->getTopMargin()Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v5}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;->getPercent()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Companion;->getLARGE_PAGE_MARGIN()Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$PageMargin;

    move-result-object v6

    invoke-virtual {v6}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$PageMargin;->getTopMargin()Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;

    move-result-object v6

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v6}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;->getPercent()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v3, v5, v6}, Lcom/onyx/android/sdk/base/utils/MathUtils;->clamp(Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-virtual {p1}, Lcom/onyx/engine/sdk/PageInfo;->getMarginLeft()F

    move-result v5

    invoke-virtual {v2, v0, v5}, Lcom/onyx/android/sdk/reader/cbox/utils/CBoxUtils;->convertToMarginPercent(IF)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Companion;->getSMALL_PAGE_MARGIN()Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$PageMargin;

    move-result-object v6

    invoke-virtual {v6}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$PageMargin;->getLeftMargin()Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;

    move-result-object v6

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v6}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;->getPercent()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Companion;->getLARGE_PAGE_MARGIN()Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$PageMargin;

    move-result-object v7

    invoke-virtual {v7}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$PageMargin;->getLeftMargin()Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;

    move-result-object v7

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v7}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;->getPercent()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v5, v6, v7}, Lcom/onyx/android/sdk/base/utils/MathUtils;->clamp(Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    invoke-virtual {p1}, Lcom/onyx/engine/sdk/PageInfo;->getMarginRight()F

    move-result v6

    invoke-virtual {v2, v0, v6}, Lcom/onyx/android/sdk/reader/cbox/utils/CBoxUtils;->convertToMarginPercent(IF)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Companion;->getSMALL_PAGE_MARGIN()Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$PageMargin;

    move-result-object v6

    invoke-virtual {v6}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$PageMargin;->getRightMargin()Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;

    move-result-object v6

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v6}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;->getPercent()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Companion;->getLARGE_PAGE_MARGIN()Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$PageMargin;

    move-result-object v7

    invoke-virtual {v7}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$PageMargin;->getRightMargin()Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;

    move-result-object v7

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v7}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;->getPercent()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v0, v6, v7}, Lcom/onyx/android/sdk/base/utils/MathUtils;->clamp(Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p1}, Lcom/onyx/engine/sdk/PageInfo;->getMarginBottom()F

    move-result p1

    invoke-virtual {v2, p0, p1}, Lcom/onyx/android/sdk/reader/cbox/utils/CBoxUtils;->convertToMarginPercent(IF)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v4}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Companion;->getSMALL_PAGE_MARGIN()Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$PageMargin;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$PageMargin;->getBottomMargin()Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;->getPercent()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v4}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Companion;->getLARGE_PAGE_MARGIN()Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$PageMargin;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$PageMargin;->getBottomMargin()Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;->getPercent()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p0, p1, v2}, Lcom/onyx/android/sdk/base/utils/MathUtils;->clamp(Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    sget-object p1, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v1, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "margin left = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", top = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", right = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", bottom = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p1, v1, v2, v4}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p1, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$PageMargin;

    invoke-direct {p1}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$PageMargin;-><init>()V

    sget-object v1, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;->Companion:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage$Companion;

    invoke-virtual {v1, v3}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage$Companion;->create(I)Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$PageMargin;->setTopMargin(Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;)V

    invoke-virtual {v1, v5}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage$Companion;->create(I)Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$PageMargin;->setLeftMargin(Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;)V

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage$Companion;->create(I)Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$PageMargin;->setRightMargin(Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;)V

    invoke-virtual {v1, p0}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage$Companion;->create(I)Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$PageMargin;->setBottomMargin(Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;)V

    return-object p1
.end method

.method public final toEnginePosition(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Lcom/onyx/engine/sdk/PinPosition;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/reader/cbox/utils/CBoxUtils;->INSTANCE:Lcom/onyx/android/sdk/reader/cbox/utils/CBoxUtils;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/cbox/utils/CBoxUtils;->convert(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Lcom/onyx/engine/sdk/PinPosition;

    move-result-object p0

    return-object p0
.end method

.method public final u(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Lcom/onyx/android/sdk/reader/api/PageRange;
    .locals 0

    invoke-virtual {p0, p1, p1}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->v(Lcom/onyx/android/sdk/reader/api/ReaderPosition;Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Lcom/onyx/android/sdk/reader/api/PageRange;

    move-result-object p0

    return-object p0
.end method

.method public final updateDocumentOptions()V
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->e:Lcom/onyx/android/sdk/reader/cbox/page/BookManager;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->updateDisplayMetrics()V

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->e:Lcom/onyx/android/sdk/reader/cbox/page/BookManager;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->updateReadTextStyle()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->H0(Z)V

    return-void
.end method

.method public final updateImgStyle(Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "style"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/reader/cbox/utils/CBoxUtils;->INSTANCE:Lcom/onyx/android/sdk/reader/cbox/utils/CBoxUtils;

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->e:Lcom/onyx/android/sdk/reader/cbox/page/BookManager;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->getEngineStyle()Lcom/onyx/engine/sdk/ReaderTextStyle;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lcom/onyx/android/sdk/reader/cbox/utils/CBoxUtils;->updateImgStyle(Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;Lcom/onyx/engine/sdk/ReaderTextStyle;)V

    return-void
.end method

.method public final updateReaderPageInfo(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "chapterId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->e:Lcom/onyx/android/sdk/reader/cbox/page/BookManager;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->updateReaderPageInfo(Ljava/lang/String;)V

    return-void
.end method

.method public final updateTocPageNumber(Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "toc"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->e:Lcom/onyx/android/sdk/reader/cbox/page/BookManager;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->updateTocPageNumber(Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;)V

    return-void
.end method

.method public final v(Lcom/onyx/android/sdk/reader/api/ReaderPosition;Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Lcom/onyx/android/sdk/reader/api/PageRange;
    .locals 0

    new-instance p0, Lcom/onyx/android/sdk/reader/api/PageRange;

    invoke-direct {p0, p1, p2}, Lcom/onyx/android/sdk/reader/api/PageRange;-><init>(Lcom/onyx/android/sdk/reader/api/ReaderPosition;Lcom/onyx/android/sdk/reader/api/ReaderPosition;)V

    return-object p0
.end method

.method public final w(Lcom/onyx/engine/sdk/PinPosition;Lcom/onyx/engine/sdk/PinPosition;)Lcom/onyx/android/sdk/reader/api/PageRange;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->I0(Lcom/onyx/engine/sdk/PinPosition;)Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object p1

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->I0(Lcom/onyx/engine/sdk/PinPosition;)Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->v(Lcom/onyx/android/sdk/reader/api/ReaderPosition;Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Lcom/onyx/android/sdk/reader/api/PageRange;

    move-result-object p0

    return-object p0
.end method

.method public final w0()Z
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->isLastPage()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->e:Lcom/onyx/android/sdk/reader/cbox/page/BookManager;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->nextPage()Lcom/onyx/engine/sdk/PageInfo;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->C0(Lcom/onyx/engine/sdk/PageInfo;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final x(Landroid/graphics/Bitmap;)V
    .locals 2

    iget-boolean v0, p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->m:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->O()Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen;->getImageList()Ljava/util/List;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    const/high16 v1, -0x10000

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfImage;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfImage;->getImageInfo()Lcom/onyx/engine/sdk/ImageInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/engine/sdk/ImageInfo;->getRect()Landroid/graphics/RectF;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/base/extension/RectKt;->orEmpty(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final x0(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Lcom/onyx/android/sdk/reader/api/ReaderPosition;
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->k0()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Lcom/onyx/android/sdk/reader/plugins/internal/PluginPositionUtils;->INSTANCE:Lcom/onyx/android/sdk/reader/plugins/internal/PluginPositionUtils;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/plugins/internal/PluginPositionUtils;->getINVALID_POSITION()Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->O()Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->H(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)I

    move-result p0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen;->getTextList()Ljava/util/List;

    move-result-object p1

    add-int/lit8 p0, p0, 0x1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p0, v0, :cond_1

    sget-object p0, Lcom/onyx/android/sdk/reader/plugins/internal/PluginPositionUtils;->INSTANCE:Lcom/onyx/android/sdk/reader/plugins/internal/PluginPositionUtils;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/plugins/internal/PluginPositionUtils;->getINVALID_POSITION()Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfText;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfText;->getPosition()Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final y(Landroid/graphics/Bitmap;)V
    .locals 2

    iget-boolean v0, p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->n:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->O()Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen;->getLinkList()Ljava/util/List;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    const/high16 v1, -0x10000

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfLink;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfLink;->getLinkInfo()Lcom/onyx/engine/sdk/LinkInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/engine/sdk/LinkInfo;->getRect()Landroid/graphics/RectF;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/base/extension/RectKt;->orEmpty(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final y0()Ljava/lang/String;
    .locals 5

    const-string v0, ""

    :try_start_0
    iget-object v1, p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->e:Lcom/onyx/android/sdk/reader/cbox/page/BookManager;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->getChapterIdList()Ljava/util/List;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/util/Collection;

    invoke-static {v2}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v0

    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-le v2, v3, :cond_1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->removeLast(Ljava/util/List;)Ljava/lang/Object;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->removeFirst(Ljava/util/List;)Ljava/lang/Object;

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v3, v2}, Lorg/apache/commons/lang3/RandomUtils;->nextInt(II)I

    move-result v2

    iget-object v4, p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->e:Lcom/onyx/android/sdk/reader/cbox/page/BookManager;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1}, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->getChapter(Ljava/lang/String;)Lcom/onyx/engine/sdk/Chapter;

    move-result-object v1

    iget-object v2, p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->a:Lcom/onyx/engine/sdk/NeoBaseNative;

    invoke-virtual {v1}, Lcom/onyx/engine/sdk/Chapter;->getStartPos()I

    move-result v4

    invoke-virtual {v1}, Lcom/onyx/engine/sdk/Chapter;->getEndPos()I

    move-result v1

    invoke-interface {v2, v4, v1}, Lcom/onyx/engine/sdk/NeoBaseNative;->getText(II)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3e8

    invoke-static {v1, v2}, Lcom/onyx/android/sdk/base/extension/StringKt;->parseTextLanguage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->e:Lcom/onyx/android/sdk/reader/cbox/page/BookManager;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->getMetadata()Lcom/onyx/engine/sdk/Metadata;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/onyx/engine/sdk/Metadata;->setLanguage(Ljava/lang/String;)Lcom/onyx/engine/sdk/Metadata;

    sget-object p0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v1, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getLanguage : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v1, v2, v3}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v1, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    invoke-virtual {v1, p0}, Lcom/onyx/android/sdk/base/utils/Debug;->w(Ljava/lang/Throwable;)V

    :goto_0
    return-object v0
.end method

.method public final z(Landroid/graphics/Bitmap;)V
    .locals 4

    iget-boolean v0, p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->o:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->O()Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen;->getTextList()Ljava/util/List;

    move-result-object p0

    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v1, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Text size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3}, Lcom/onyx/android/sdk/base/utils/Debug;->i(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, p0

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    const/high16 v1, -0x10000

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfText;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfText;->getCellOfScreen()Lcom/onyx/engine/sdk/CellOfScreen;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/engine/sdk/CellOfScreen;->getRect()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final z0()Z
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->isFirstPage()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->e:Lcom/onyx/android/sdk/reader/cbox/page/BookManager;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/reader/cbox/page/BookManager;->prevPage()Lcom/onyx/engine/sdk/PageInfo;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->C0(Lcom/onyx/engine/sdk/PageInfo;)V

    const/4 p0, 0x1

    return p0
.end method
