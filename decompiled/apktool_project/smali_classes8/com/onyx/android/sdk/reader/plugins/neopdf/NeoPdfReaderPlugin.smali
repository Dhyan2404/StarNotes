.class public final Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/android/sdk/reader/api/ReaderPlugin;
.implements Lcom/onyx/android/sdk/reader/api/ReaderDocument;
.implements Lcom/onyx/android/sdk/reader/api/ReaderView;
.implements Lcom/onyx/android/sdk/reader/api/ReaderRenderer;
.implements Lcom/onyx/android/sdk/reader/api/ReaderNavigator;
.implements Lcom/onyx/android/sdk/reader/api/ReaderSearchManager;
.implements Lcom/onyx/android/sdk/reader/api/ReaderTextStyleManager;
.implements Lcom/onyx/android/sdk/reader/api/ReaderDrmManager;
.implements Lcom/onyx/android/sdk/reader/api/ReaderHitTestManager;
.implements Lcom/onyx/android/sdk/reader/api/ReaderRendererFeatures;
.implements Lcom/onyx/android/sdk/reader/api/ReaderPluginFeatures;
.implements Lcom/onyx/android/sdk/reader/api/ReaderPageDataProvider;
.implements Lcom/onyx/android/sdk/reader/api/ReaderDocumentFeatures;
.implements Lcom/onyx/android/sdk/reader/api/ReaderDocumentExporter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNeoPdfReaderPlugin.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NeoPdfReaderPlugin.kt\ncom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,740:1\n1855#2,2:741\n1855#2,2:743\n1549#2:745\n1620#2,3:746\n1549#2:749\n1620#2,3:750\n*S KotlinDebug\n*F\n+ 1 NeoPdfReaderPlugin.kt\ncom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin\n*L\n359#1:741,2\n438#1:743,2\n481#1:745\n481#1:746,3\n549#1:749\n549#1:750,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00d6\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0010\u0015\n\u0002\u0008\t\n\u0002\u0010\u0011\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010%\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u0000 \u00c6\u00012\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u00042\u00020\u00052\u00020\u00062\u00020\u00072\u00020\u00082\u00020\t2\u00020\n2\u00020\u000b2\u00020\u000c2\u00020\r2\u00020\u000e:\u0002\u00c6\u0001B\t\u00a2\u0006\u0006\u0008\u00c4\u0001\u0010\u00c5\u0001J\u001e\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0010\u001a\u00020\u000f2\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u0011H\u0002J\u0018\u0010\u0017\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0016\u001a\u00020\u0012H\u0002J\u001a\u0010\u0018\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0016\u001a\u00020\u0012H\u0002J\u0010\u0010\u001a\u001a\u00020\u00122\u0006\u0010\u0019\u001a\u00020\u0012H\u0002J\u001e\u0010 \u001a\u0008\u0012\u0004\u0012\u00020\u001f0\u001e2\u0006\u0010\u0010\u001a\u00020\u001b2\u0006\u0010\u001d\u001a\u00020\u001cH\u0002J\u001e\u0010#\u001a\u00020\"2\u0006\u0010\u0010\u001a\u00020\u001b2\u000c\u0010!\u001a\u0008\u0012\u0004\u0012\u00020\u001f0\u001eH\u0002J\u0016\u0010$\u001a\u00020\"2\u000c\u0010!\u001a\u0008\u0012\u0004\u0012\u00020\u001f0\u001eH\u0002J\u0010\u0010\'\u001a\u00020\u00122\u0006\u0010&\u001a\u00020%H\u0002J\u0008\u0010)\u001a\u00020(H\u0002J\u0010\u0010,\u001a\u00020\u00142\u0006\u0010+\u001a\u00020*H\u0002J\u0010\u0010.\u001a\u00020-2\u0006\u0010&\u001a\u00020%H\u0002J\u0018\u00100\u001a\u00020\u00142\u0006\u0010/\u001a\u00020-2\u0006\u0010&\u001a\u00020%H\u0002J\u0008\u00101\u001a\u00020\u000fH\u0016J \u00107\u001a\u00020\u00022\u0006\u00102\u001a\u00020\u000f2\u0006\u00104\u001a\u0002032\u0006\u00106\u001a\u000205H\u0016J\u0008\u00108\u001a\u00020(H\u0016J\u0008\u00109\u001a\u00020\u0000H\u0016J\u0008\u0010:\u001a\u00020(H\u0016J\u0010\u0010=\u001a\u00020\u00142\u0006\u0010<\u001a\u00020;H\u0016J\u0008\u0010>\u001a\u00020\u0000H\u0016J\u0008\u0010?\u001a\u00020\u0000H\u0016J\n\u0010A\u001a\u0004\u0018\u00010@H\u0016J\u0008\u0010B\u001a\u00020\u0000H\u0016J\u0008\u0010C\u001a\u00020\u0000H\u0016J\u0008\u0010D\u001a\u00020\u0000H\u0016J\u0008\u0010E\u001a\u00020(H\u0016J\u0008\u0010F\u001a\u00020\u0000H\u0016J\u0008\u0010H\u001a\u00020GH\u0016J\u0010\u0010K\u001a\u00020(2\u0006\u0010J\u001a\u00020IH\u0016J\u0010\u0010N\u001a\u00020(2\u0006\u0010M\u001a\u00020LH\u0016J\u0008\u0010O\u001a\u00020(H\u0016J\u0008\u0010P\u001a\u00020\u0014H\u0016J\u0010\u0010R\u001a\u00020(2\u0006\u0010Q\u001a\u00020%H\u0016J\u0008\u0010S\u001a\u00020\u0014H\u0016J\u0010\u0010U\u001a\u00020T2\u0006\u0010\u0010\u001a\u00020\u001bH\u0016J\u0018\u0010X\u001a\u00020T2\u0006\u0010\u0010\u001a\u00020\u001b2\u0006\u0010W\u001a\u00020VH\u0016J\u0010\u0010Z\u001a\u00020Y2\u0006\u0010Q\u001a\u00020%H\u0016J\u0010\u0010[\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u001bH\u0016J\u0010\u0010]\u001a\u00020\\2\u0006\u0010\u0010\u001a\u00020\u001bH\u0016J\u0016\u0010^\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u00112\u0006\u0010\u0010\u001a\u00020\u001bH\u0016J\u001c\u0010a\u001a\u0004\u0018\u00010`2\u0006\u0010\u0010\u001a\u00020\u001b2\u0008\u0010_\u001a\u0004\u0018\u00010\u001bH\u0016J\u000e\u0010U\u001a\u00020T2\u0006\u0010Q\u001a\u00020%J\u0008\u0010b\u001a\u00020\u0014H\u0016J\u0008\u0010c\u001a\u00020\u0014H\u0016J\u0010\u0010f\u001a\u00020(2\u0006\u0010e\u001a\u00020dH\u0016J\u0010\u0010i\u001a\u00020\u00142\u0006\u0010h\u001a\u00020gH\u0016J\u0008\u0010j\u001a\u00020%H\u0016J\u000e\u0010k\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u0011H\u0016J\u0010\u0010l\u001a\u00020\u001b2\u0006\u0010\u0010\u001a\u00020\u001bH\u0016J\u0010\u0010m\u001a\u00020\u001b2\u0006\u0010\u0010\u001a\u00020\u001bH\u0016J\u0010\u0010n\u001a\u00020\u001b2\u0006\u0010\u0010\u001a\u00020\u001bH\u0016J\u0010\u0010o\u001a\u00020\u001b2\u0006\u0010\u0010\u001a\u00020\u001bH\u0016J\u0008\u0010p\u001a\u00020\u0000H\u0016J\u0008\u0010q\u001a\u00020\u0000H\u0016J\u0008\u0010r\u001a\u00020\u0000H\u0016J\u0010\u0010t\u001a\u00020\u00142\u0006\u0010s\u001a\u00020VH\u0016J\u0018\u0010x\u001a\u00020\u00142\u0006\u0010u\u001a\u00020%2\u0006\u0010w\u001a\u00020vH\u0016J\u0008\u0010y\u001a\u00020(H\u0016J\u0018\u0010z\u001a\u00020\u00142\u0006\u00104\u001a\u0002032\u0006\u00106\u001a\u000205H\u0016J\u0008\u0010{\u001a\u00020(H\u0016J\u0008\u0010|\u001a\u00020(H\u0016J\u0010\u0010}\u001a\u00020\u000f2\u0006\u0010\u0016\u001a\u00020*H\u0016J\u0010\u0010~\u001a\u00020*2\u0006\u0010\u0016\u001a\u00020*H\u0016J\u0016\u0010\u007f\u001a\u0008\u0012\u0004\u0012\u00020L0\u00112\u0006\u0010\u0010\u001a\u00020\u001bH\u0016J1\u0010\u0083\u0001\u001a\t\u0012\u0005\u0012\u00030\u0082\u00010\u00112\u0006\u0010\u0010\u001a\u00020\u001b2\u000e\u0010\u0081\u0001\u001a\t\u0012\u0004\u0012\u00020\u000f0\u0080\u0001H\u0016\u00a2\u0006\u0006\u0008\u0083\u0001\u0010\u0084\u0001J\u0011\u0010\u0085\u0001\u001a\u00020(2\u0006\u0010\u0010\u001a\u00020\u001bH\u0016J\t\u0010\u0086\u0001\u001a\u00020\u0000H\u0016J\u0013\u0010\u0089\u0001\u001a\u00020(2\u0008\u0010\u0088\u0001\u001a\u00030\u0087\u0001H\u0016J\t\u0010\u008a\u0001\u001a\u00020\u001bH\u0016J\u0011\u0010\u008b\u0001\u001a\u00020\u001b2\u0006\u0010&\u001a\u00020%H\u0016J\u001b\u0010\u008e\u0001\u001a\u00020\u001b2\u0007\u0010\u008c\u0001\u001a\u00020\u000f2\u0007\u0010\u008d\u0001\u001a\u00020(H\u0016J\u000f\u0010\u008f\u0001\u001a\u00020%2\u0006\u0010\u0010\u001a\u00020\u001bJ\u0017\u0010\u0090\u0001\u001a\u0008\u0012\u0004\u0012\u00020*0\u00112\u0006\u0010\u0010\u001a\u00020\u001bH\u0016J\u0013\u0010\u0093\u0001\u001a\u00020(2\u0008\u0010\u0092\u0001\u001a\u00030\u0091\u0001H\u0016J\u0013\u0010\u0094\u0001\u001a\u00020(2\u0008\u0010\u0092\u0001\u001a\u00030\u0091\u0001H\u0016J%\u0010\u0097\u0001\u001a\u00020(2\u0007\u0010\u0095\u0001\u001a\u00020%2\u0008\u0010\u0092\u0001\u001a\u00030\u0091\u00012\u0007\u0010\u0096\u0001\u001a\u00020(H\u0016J\u000f\u0010\u0098\u0001\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u001eH\u0016J\u0013\u0010\u009b\u0001\u001a\u00020(2\u0008\u0010\u009a\u0001\u001a\u00030\u0099\u0001H\u0016J\t\u0010\u009c\u0001\u001a\u00020(H\u0016J&\u0010\u00a0\u0001\u001a\u0004\u0018\u00010*2\u0006\u0010\u001d\u001a\u00020\u001c2\u0007\u0010\u009d\u0001\u001a\u00020\u001c2\u0008\u0010\u009f\u0001\u001a\u00030\u009e\u0001H\u0016J&\u0010\u00a0\u0001\u001a\u0004\u0018\u00010*2\u0007\u0010\u00a1\u0001\u001a\u00020\u001b2\u0007\u0010\u00a2\u0001\u001a\u00020\u001b2\u0007\u0010\u00a3\u0001\u001a\u00020\u001bH\u0016J\u0018\u0010\u00a4\u0001\u001a\u0008\u0012\u0004\u0012\u00020*0\u00112\u0007\u0010\u00a1\u0001\u001a\u00020\u001bH\u0016J\u0015\u0010\u00a6\u0001\u001a\u0004\u0018\u00010*2\u0008\u0010\u0088\u0001\u001a\u00030\u00a5\u0001H\u0016J\u0017\u0010\u00a7\u0001\u001a\u0008\u0012\u0004\u0012\u00020T0\u00112\u0006\u0010Q\u001a\u00020%H\u0016J\t\u0010\u00a8\u0001\u001a\u00020(H\u0016J\u0011\u0010\u00a9\u0001\u001a\u00020\u00142\u0008\u0010+\u001a\u0004\u0018\u00010*J\u0018\u0010\u00ab\u0001\u001a\u00020\u00142\u000f\u0010\u00aa\u0001\u001a\n\u0012\u0004\u0012\u00020*\u0018\u00010\u0011J\u0012\u0010\u00ad\u0001\u001a\u00020\u00142\t\u0010\u00ac\u0001\u001a\u0004\u0018\u00010`J\t\u0010\u00ae\u0001\u001a\u00020\u000eH\u0016J\u0013\u0010\u00b0\u0001\u001a\u00020(2\u0008\u0010\u0088\u0001\u001a\u00030\u00af\u0001H\u0016R\u0017\u0010\u00b3\u0001\u001a\u00030\u00b1\u00018\u0002X\u0082\u0004\u00a2\u0006\u0007\n\u0005\u0008$\u0010\u00b2\u0001R\u0018\u0010\u00b5\u0001\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008)\u0010\u00b4\u0001R\u001e\u0010\u0098\u0001\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u001e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008.\u0010\u00b6\u0001R+\u0010\u00b9\u0001\u001a\u0015\u0012\u0004\u0012\u00020\u000f\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00120\u00110\u00b7\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\'\u0010\u00b8\u0001R%\u0010\u00ba\u0001\u001a\u000f\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00120\u00b7\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u0018\u0010\u00b8\u0001R+\u0010\u00bb\u0001\u001a\u0015\u0012\u0004\u0012\u00020\u000f\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u001f0\u001e0\u00b7\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u0017\u0010\u00b8\u0001R%\u0010\u00bc\u0001\u001a\u000f\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\"0\u00b7\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u001a\u0010\u00b8\u0001R\u0018\u0010\u00be\u0001\u001a\u00020;8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008 \u0010\u00bd\u0001R\u0017\u00106\u001a\u0002058\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008#\u0010\u00bf\u0001R\u0018\u0010\u009c\u0001\u001a\u00020(8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008,\u0010\u00c0\u0001R\u0018\u0010\u00a8\u0001\u001a\u00020(8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u0015\u0010\u00c0\u0001R\u0017\u0010\u00c3\u0001\u001a\u00030\u00c1\u00018\u0002X\u0082\u0004\u00a2\u0006\u0007\n\u0005\u00080\u0010\u00c2\u0001\u00a8\u0006\u00c7\u0001"
    }
    d2 = {
        "Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;",
        "Lcom/onyx/android/sdk/reader/api/ReaderPlugin;",
        "Lcom/onyx/android/sdk/reader/api/ReaderDocument;",
        "Lcom/onyx/android/sdk/reader/api/ReaderView;",
        "Lcom/onyx/android/sdk/reader/api/ReaderRenderer;",
        "Lcom/onyx/android/sdk/reader/api/ReaderNavigator;",
        "Lcom/onyx/android/sdk/reader/api/ReaderSearchManager;",
        "Lcom/onyx/android/sdk/reader/api/ReaderTextStyleManager;",
        "Lcom/onyx/android/sdk/reader/api/ReaderDrmManager;",
        "Lcom/onyx/android/sdk/reader/api/ReaderHitTestManager;",
        "Lcom/onyx/android/sdk/reader/api/ReaderRendererFeatures;",
        "Lcom/onyx/android/sdk/reader/api/ReaderPluginFeatures;",
        "Lcom/onyx/android/sdk/reader/api/ReaderPageDataProvider;",
        "Lcom/onyx/android/sdk/reader/api/ReaderDocumentFeatures;",
        "Lcom/onyx/android/sdk/reader/api/ReaderDocumentExporter;",
        "",
        "position",
        "",
        "Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;",
        "list",
        "",
        "k",
        "link",
        "f",
        "e",
        "cache",
        "g",
        "Lcom/onyx/android/sdk/reader/api/ReaderPosition;",
        "Lcom/onyx/android/sdk/reader/api/ReaderHitTestArgs;",
        "start",
        "",
        "Lcom/onyx/android/sdk/reader/common/ReaderCharInfo;",
        "h",
        "charInfoList",
        "Lcom/onyx/android/sdk/reader/api/ReaderWritingMode;",
        "i",
        "a",
        "",
        "pageIndex",
        "d",
        "",
        "b",
        "Lcom/onyx/android/sdk/reader/api/ReaderSelection;",
        "selection",
        "j",
        "Lcom/onyx/android/sdk/reader/api/PageRange;",
        "c",
        "pageRange",
        "l",
        "displayName",
        "path",
        "Lcom/onyx/android/sdk/reader/api/ReaderDocumentOptions;",
        "documentOptions",
        "Lcom/onyx/android/sdk/reader/api/ReaderPluginOptions;",
        "pluginOptions",
        "open",
        "reopen",
        "getPluginFeatures",
        "supportPageId",
        "Lcom/onyx/android/sdk/base/data/Size;",
        "size",
        "updateViewSize",
        "getRenderer",
        "getNavigator",
        "Lcom/onyx/android/sdk/reader/api/ReaderPagination;",
        "getPagination",
        "getTextStyleManager",
        "getReaderHitTestManager",
        "getSearchManager",
        "supportDrm",
        "createDrmManager",
        "Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfDocumentWriter;",
        "createDocumentWriter",
        "Lcom/onyx/android/sdk/reader/api/ReaderDocumentMetadata;",
        "metadata",
        "readMetadata",
        "Lcom/onyx/android/sdk/reader/api/ReaderImage;",
        "readImage",
        "readCover",
        "isBlankContent",
        "beginLookupPageData",
        "page",
        "hasAnnotationData",
        "endLookupPageData",
        "Landroid/graphics/RectF;",
        "getPageOriginSize",
        "",
        "dpi",
        "getPageSizeWithDpi",
        "Landroid/graphics/Matrix;",
        "getPageContentMatrix",
        "getPageText",
        "Lcom/onyx/android/sdk/reader/api/ReaderPageType;",
        "pageType",
        "getPageParagraphList",
        "sentenceStartPosition",
        "Lcom/onyx/android/sdk/reader/api/ReaderSentence;",
        "getSentence",
        "abortCurrentJob",
        "clearAbortFlag",
        "Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;",
        "toc",
        "readTableOfContent",
        "Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;",
        "entry",
        "updateTocPageIndex",
        "getTotalPage",
        "getPageLabelList",
        "nextScreen",
        "prevScreen",
        "nextPage",
        "prevPage",
        "getView",
        "getPageDataProvider",
        "getDocumentFeatures",
        "gamma",
        "setTextGamma",
        "threshold",
        "",
        "colorTable",
        "setFontEnhancement",
        "close",
        "updateDocumentOptions",
        "supportNoteEmbeded",
        "isDamagedFile",
        "getLinkTarget",
        "getLinkTargetSelection",
        "getImages",
        "",
        "ignoreObjIdList",
        "Lcom/onyx/android/sdk/reader/api/ReaderRichMedia;",
        "getRichMedias",
        "(Lcom/onyx/android/sdk/reader/api/ReaderPosition;[Ljava/lang/String;)Ljava/util/List;",
        "isValidPosition",
        "getRendererFeatures",
        "Lcom/onyx/android/sdk/reader/api/DrawArgs;",
        "args",
        "draw",
        "getInitPosition",
        "positionByPageIndex",
        "positionString",
        "useJsonPageIndexIfValid",
        "positionByPositionString",
        "pageIndexByPosition",
        "getLinks",
        "Lcom/onyx/android/sdk/reader/api/ReaderSearchOptions;",
        "options",
        "searchPrevious",
        "searchNext",
        "currentPage",
        "clear",
        "searchInPage",
        "searchResults",
        "Lcom/onyx/android/sdk/reader/api/ReaderDrmCertificateFactory;",
        "factory",
        "activateDeviceDRM",
        "isWholeBook",
        "end",
        "Lcom/onyx/android/sdk/reader/api/ReaderHitTestOptions;",
        "hitTestOptions",
        "selectOnScreen",
        "pagePosition",
        "startPosition",
        "endPosition",
        "allText",
        "Lcom/onyx/android/sdk/reader/api/ReaderSelectTextArgs;",
        "selectOnDocument",
        "getAllCharRectList",
        "supportScale",
        "updateSelectionPageRange",
        "selectionList",
        "updateSelectionsPageRange",
        "sentence",
        "updateSentencePageRange",
        "createDocumentExporter",
        "Lcom/onyx/android/sdk/reader/api/ReaderExportArgs;",
        "exportPages",
        "Lcom/onyx/android/sdk/base/utils/Benchmark;",
        "Lcom/onyx/android/sdk/base/utils/Benchmark;",
        "benchmark",
        "Ljava/lang/String;",
        "documentPath",
        "Ljava/util/List;",
        "",
        "Ljava/util/Map;",
        "pageLinks",
        "pageRectLinkMap",
        "pageCharInfoListMap",
        "pageWritingModeMap",
        "Lcom/onyx/android/sdk/base/data/Size;",
        "viewSize",
        "Lcom/onyx/android/sdk/reader/api/ReaderPluginOptions;",
        "Z",
        "Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;",
        "Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;",
        "pluginImpl",
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
        "SMAP\nNeoPdfReaderPlugin.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NeoPdfReaderPlugin.kt\ncom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,740:1\n1855#2,2:741\n1855#2,2:743\n1549#2:745\n1620#2,3:746\n1549#2:749\n1620#2,3:750\n*S KotlinDebug\n*F\n+ 1 NeoPdfReaderPlugin.kt\ncom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin\n*L\n359#1:741,2\n438#1:743,2\n481#1:745\n481#1:746,3\n549#1:749\n549#1:750,3\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final m:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final n:I = 0x4

.field public static final o:I = 0x25

.field public static final p:I = 0x50

.field public static final q:I = 0x44

.field public static final r:I = 0x46


# instance fields
.field public final a:Lcom/onyx/android/sdk/base/utils/Benchmark;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public b:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/reader/common/ReaderCharInfo;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/reader/api/ReaderWritingMode;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public h:Lcom/onyx/android/sdk/base/data/Size;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public i:Lcom/onyx/android/sdk/reader/api/ReaderPluginOptions;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public j:Z

.field public k:Z

.field public final l:Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;->Companion:Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin$Companion;

    const-class v0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;

    sput-object v0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;->m:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/onyx/android/sdk/base/utils/Benchmark;

    invoke-direct {v0}, Lcom/onyx/android/sdk/base/utils/Benchmark;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;->a:Lcom/onyx/android/sdk/base/utils/Benchmark;

    const-string v0, ""

    iput-object v0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;->b:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;->c:Ljava/util/List;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sget-object v1, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin$pageLinks$1;->INSTANCE:Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin$pageLinks$1;

    invoke-static {v0, v1}, Lkotlin/collections/MapsKt;->withDefaultMutable(Ljava/util/Map;Lkotlin/jvm/functions/Function1;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;->d:Ljava/util/Map;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;->e:Ljava/util/Map;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;->f:Ljava/util/Map;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;->g:Ljava/util/Map;

    new-instance v0, Lcom/onyx/android/sdk/base/data/Size;

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Lcom/onyx/android/sdk/base/data/Size;-><init>(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;->h:Lcom/onyx/android/sdk/base/data/Size;

    sget-object v0, Lcom/onyx/android/sdk/reader/api/ReaderPluginOptions;->Companion:Lcom/onyx/android/sdk/reader/api/ReaderPluginOptions$Companion;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/reader/api/ReaderPluginOptions$Companion;->getDummy()Lcom/onyx/android/sdk/reader/api/ReaderPluginOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;->i:Lcom/onyx/android/sdk/reader/api/ReaderPluginOptions;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;->j:Z

    iput-boolean v0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;->k:Z

    new-instance v0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;

    invoke-direct {v0}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;->l:Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;

    return-void
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/Class;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;->m:Ljava/lang/Class;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/util/List;)Lcom/onyx/android/sdk/reader/api/ReaderWritingMode;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/reader/common/ReaderCharInfo;",
            ">;)",
            "Lcom/onyx/android/sdk/reader/api/ReaderWritingMode;"
        }
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/reader/api/ReaderWritingMode;->Companion:Lcom/onyx/android/sdk/reader/api/ReaderWritingMode$Companion;

    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/reader/common/ReaderCharInfo;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/reader/common/ReaderCharInfo;->getRect()Landroid/graphics/RectF;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/api/ReaderWritingMode$Companion;->analysePageWritingModeByCharRect(Ljava/util/List;)Lcom/onyx/android/sdk/reader/api/ReaderWritingMode;

    move-result-object p0

    return-object p0
.end method

.method public abortCurrentJob()V
    .locals 0

    return-void
.end method

.method public activateDeviceDRM(Lcom/onyx/android/sdk/reader/api/ReaderDrmCertificateFactory;)Z
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderDrmCertificateFactory;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "factory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/onyx/android/sdk/reader/api/ReaderDrmCertificateFactory;->isWholeBook()Z

    move-result v0

    iput-boolean v0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;->j:Z

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;->l:Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->activateDeviceDRM(Lcom/onyx/android/sdk/reader/api/ReaderDrmCertificateFactory;)Z

    move-result p0

    return p0
.end method

.method public allText(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Ljava/util/List;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/reader/api/ReaderPosition;",
            ")",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/reader/api/ReaderSelection;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "pagePosition"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;->pageIndexByPosition(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)I

    move-result p1

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;->l:Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->getPageTextCharBoxes(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final b()Z
    .locals 3

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;->b:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    if-eqz v0, :cond_2

    return v1

    :cond_2
    sget-object v0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;->Companion:Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin$Companion;

    iget-object v1, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin$Companion;->access$isNormalPDF(Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin$Companion;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin$Companion;->isJDPDF(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;->b:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin$Companion;->isCajPDF(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public beginLookupPageData()V
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;->l:Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->beginLookupPageData()V

    return-void
.end method

.method public final c(I)Lcom/onyx/android/sdk/reader/api/PageRange;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;->positionByPageIndex(I)Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object p0

    new-instance p1, Lcom/onyx/android/sdk/reader/api/PageRange;

    invoke-direct {p1, p0, p0}, Lcom/onyx/android/sdk/reader/api/PageRange;-><init>(Lcom/onyx/android/sdk/reader/api/ReaderPosition;Lcom/onyx/android/sdk/reader/api/ReaderPosition;)V

    return-object p1
.end method

.method public clearAbortFlag()V
    .locals 0

    return-void
.end method

.method public close()Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;->l:Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->closeDocument()Z

    move-result p0

    return p0
.end method

.method public createDocumentConverter()Lcom/onyx/android/sdk/reader/api/ReaderDocumentConverter;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {p0}, Lcom/onyx/android/sdk/reader/api/ReaderDocument$DefaultImpls;->createDocumentConverter(Lcom/onyx/android/sdk/reader/api/ReaderDocument;)Lcom/onyx/android/sdk/reader/api/ReaderDocumentConverter;

    move-result-object p0

    return-object p0
.end method

.method public createDocumentExporter()Lcom/onyx/android/sdk/reader/api/ReaderDocumentExporter;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    return-object p0
.end method

.method public bridge synthetic createDocumentWriter()Lcom/onyx/android/sdk/reader/api/ReaderDocumentWriter;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;->createDocumentWriter()Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfDocumentWriter;

    move-result-object p0

    return-object p0
.end method

.method public createDocumentWriter()Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfDocumentWriter;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    new-instance v0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfDocumentWriter;

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;->l:Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfDocumentWriter;-><init>(Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;)V

    return-object v0
.end method

.method public bridge synthetic createDrmManager()Lcom/onyx/android/sdk/reader/api/ReaderDrmManager;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;->createDrmManager()Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;

    move-result-object p0

    return-object p0
.end method

.method public createDrmManager()Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    return-object p0
.end method

.method public final d(I)Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;

    invoke-direct {v0}, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;-><init>()V

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->setPageIndex(I)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;->c(I)Lcom/onyx/android/sdk/reader/api/PageRange;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->setPageRange(Lcom/onyx/android/sdk/reader/api/PageRange;)V

    return-object v0
.end method

.method public destroy()V
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/reader/api/ReaderPlugin$DefaultImpls;->destroy(Lcom/onyx/android/sdk/reader/api/ReaderPlugin;)V

    return-void
.end method

.method public displayName()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "NeoPdfReaderPlugin"

    return-object p0
.end method

.method public draw(Lcom/onyx/android/sdk/reader/api/DrawArgs;)Z
    .locals 5
    .param p1    # Lcom/onyx/android/sdk/reader/api/DrawArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;->a:Lcom/onyx/android/sdk/base/utils/Benchmark;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/utils/Benchmark;->restart()V

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;->l:Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->drawPage(Lcom/onyx/android/sdk/reader/api/DrawArgs;)Z

    move-result p1

    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    sget-object v1, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;->m:Ljava/lang/Class;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rendering takes: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;->a:Lcom/onyx/android/sdk/base/utils/Benchmark;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/utils/Benchmark;->duration()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, p0, v2}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    return p1
.end method

.method public final e(Ljava/lang/String;Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;)Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;->f(Ljava/lang/String;Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;->e:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;->e:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public endLookupPageData()V
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;->l:Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->endLookupPageData()V

    return-void
.end method

.method public exportPages(Lcom/onyx/android/sdk/reader/api/ReaderExportArgs;)Z
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderExportArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;->l:Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->exportPages(Lcom/onyx/android/sdk/reader/api/ReaderExportArgs;)Z

    move-result p0

    return p0
.end method

.method public final f(Ljava/lang/String;Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->getRectList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-gtz p1, :cond_0

    const-string p0, "-empty"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;->l:Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->getLinkHitTestPoint(Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;)Landroid/graphics/PointF;

    move-result-object p0

    const-string p1, "-x="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Landroid/graphics/PointF;->x:F

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, "-y="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "toString(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public firstPage()Lcom/onyx/android/sdk/reader/api/ReaderPosition;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Lcom/onyx/android/sdk/reader/api/ReaderNavigator$DefaultImpls;->firstPage(Lcom/onyx/android/sdk/reader/api/ReaderNavigator;)Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object p0

    return-object p0
.end method

.method public firstText(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Lcom/onyx/android/sdk/reader/api/ReaderSelection;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/reader/api/ReaderHitTestManager$DefaultImpls;->firstText(Lcom/onyx/android/sdk/reader/api/ReaderHitTestManager;Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Lcom/onyx/android/sdk/reader/api/ReaderSelection;

    move-result-object p0

    return-object p0
.end method

.method public final g(Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;)Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;
    .locals 4

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;->l:Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->getDestPageIndex(Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;)I

    move-result v0

    sget-object v1, Lcom/onyx/android/sdk/base/utils/PageInfoUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/PageInfoUtils;

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/base/utils/PageInfoUtils;->isValidPage(I)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/onyx/android/sdk/reader/api/PageRange;

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-direct {v1, v2, v2, v3, v2}, Lcom/onyx/android/sdk/reader/api/PageRange;-><init>(Lcom/onyx/android/sdk/reader/api/ReaderPosition;Lcom/onyx/android/sdk/reader/api/ReaderPosition;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p0, v1, v0}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;->l(Lcom/onyx/android/sdk/reader/api/PageRange;I)V

    invoke-virtual {p1, v1}, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->setSelectionRange(Lcom/onyx/android/sdk/reader/api/PageRange;)V

    invoke-virtual {p1, v3}, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->setLinkType(I)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->copy()Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;->l:Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->getDestUri(Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_1

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->setText(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->setLinkType(I)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->copy()Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x5

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->setLinkType(I)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->copy()Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;

    move-result-object p0

    return-object p0
.end method

.method public getAllCharRectList(I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;->l:Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->getPageTextCharBoxes(I)Ljava/util/List;

    move-result-object p0

    sget-object p1, Lcom/onyx/android/sdk/reader/utils/ReaderSelectionUtils;->INSTANCE:Lcom/onyx/android/sdk/reader/utils/ReaderSelectionUtils;

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/reader/utils/ReaderSelectionUtils;->getAllCharRectList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getChapterId(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Ljava/lang/String;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/reader/api/ReaderNavigator$DefaultImpls;->getChapterId(Lcom/onyx/android/sdk/reader/api/ReaderNavigator;Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getChapterName(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Ljava/lang/String;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/reader/api/ReaderNavigator$DefaultImpls;->getChapterName(Lcom/onyx/android/sdk/reader/api/ReaderNavigator;Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getChapterStartPosition(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Lcom/onyx/android/sdk/reader/api/ReaderPosition;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/reader/api/ReaderNavigator$DefaultImpls;->getChapterStartPosition(Lcom/onyx/android/sdk/reader/api/ReaderNavigator;Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getDocumentFeatures()Lcom/onyx/android/sdk/reader/api/ReaderDocumentFeatures;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;->getDocumentFeatures()Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;

    move-result-object p0

    return-object p0
.end method

.method public getDocumentFeatures()Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    return-object p0
.end method

.method public getFontFamilyList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$FontSpec;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {p0}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyleManager$DefaultImpls;->getFontFamilyList(Lcom/onyx/android/sdk/reader/api/ReaderTextStyleManager;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getImagePage(Lcom/onyx/android/sdk/reader/api/ReaderPosition;I)Lcom/onyx/android/sdk/reader/api/ReaderImage;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/onyx/android/sdk/reader/api/ReaderNavigator$DefaultImpls;->getImagePage(Lcom/onyx/android/sdk/reader/api/ReaderNavigator;Lcom/onyx/android/sdk/reader/api/ReaderPosition;I)Lcom/onyx/android/sdk/reader/api/ReaderImage;

    move-result-object p0

    return-object p0
.end method

.method public getImages(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Ljava/util/List;
    .locals 8
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/reader/api/ReaderPosition;",
            ")",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/reader/api/ReaderImage;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "position"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;->pageIndexByPosition(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)I

    move-result p1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;->l:Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;

    invoke-virtual {p0, p1, v1}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->getPageImageRegions(ILjava/util/List;)Z

    move-result p0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Landroid/graphics/RectF;

    new-instance p1, Lcom/onyx/android/sdk/reader/impl/ReaderImageImpl;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xe

    const/4 v7, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Lcom/onyx/android/sdk/reader/impl/ReaderImageImpl;-><init>(Landroid/graphics/RectF;Landroid/graphics/Bitmap;Lcom/onyx/android/sdk/reader/api/ReaderPosition;FILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getInitPosition()Lcom/onyx/android/sdk/reader/api/ReaderPosition;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;->firstPage()Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object p0

    return-object p0
.end method

.method public getLastSentence(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Lcom/onyx/android/sdk/reader/api/ReaderSentence;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/reader/api/ReaderPageDataProvider$DefaultImpls;->getLastSentence(Lcom/onyx/android/sdk/reader/api/ReaderPageDataProvider;Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Lcom/onyx/android/sdk/reader/api/ReaderSentence;

    move-result-object p0

    return-object p0
.end method

.method public getLinkTarget(Lcom/onyx/android/sdk/reader/api/ReaderSelection;)Ljava/lang/String;
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderSelection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "link"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;->getLinkTargetSelection(Lcom/onyx/android/sdk/reader/api/ReaderSelection;)Lcom/onyx/android/sdk/reader/api/ReaderSelection;

    move-result-object p0

    const-string p1, ""

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    invoke-interface {p0}, Lcom/onyx/android/sdk/reader/api/ReaderSelection;->linkType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    invoke-interface {p0}, Lcom/onyx/android/sdk/reader/api/ReaderSelection;->selectionRange()Lcom/onyx/android/sdk/reader/api/PageRange;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/api/PageRange;->getStartPosition()Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object p0

    invoke-interface {p0}, Lcom/onyx/android/sdk/reader/api/ReaderPosition;->asString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method public getLinkTargetSelection(Lcom/onyx/android/sdk/reader/api/ReaderSelection;)Lcom/onyx/android/sdk/reader/api/ReaderSelection;
    .locals 4
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderSelection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "link"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->getPageRange()Lcom/onyx/android/sdk/reader/api/PageRange;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/reader/api/PageRange;->getStartPosition()Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object v0

    invoke-interface {v0}, Lcom/onyx/android/sdk/reader/api/ReaderPosition;->asString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;->e(Ljava/lang/String;Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;)Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;

    move-result-object v0

    const/4 v1, 0x0

    const-class v2, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;

    if-eqz v0, :cond_0

    sget-object p1, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-string v3, "hit link cache success."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v2, v3, v1}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object p1, Lcom/onyx/android/sdk/reader/api/ReaderLinkType;->INSTANCE:Lcom/onyx/android/sdk/reader/api/ReaderLinkType;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->getLinkType()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/onyx/android/sdk/reader/api/ReaderLinkType;->isLinkLoaded(I)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {v0}, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->copy()Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-string v3, "hit link cache fail."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3, v1}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/onyx/android/sdk/reader/api/ReaderLinkType;->INSTANCE:Lcom/onyx/android/sdk/reader/api/ReaderLinkType;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->getLinkType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/reader/api/ReaderLinkType;->isLinkLoaded(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p1

    :cond_1
    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->copy()Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;

    move-result-object v0

    iget-object p1, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;->e:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->getPageRange()Lcom/onyx/android/sdk/reader/api/PageRange;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/reader/api/PageRange;->getStartPosition()Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object v1

    invoke-interface {v1}, Lcom/onyx/android/sdk/reader/api/ReaderPosition;->asString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;->f(Ljava/lang/String;Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;->g(Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;)Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;

    move-result-object p0

    return-object p0
.end method

.method public getLinks(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Ljava/util/List;
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/reader/api/ReaderPosition;",
            ")",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/reader/api/ReaderSelection;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "position"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/onyx/android/sdk/reader/api/ReaderPosition;->asString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;->d:Ljava/util/Map;

    invoke-static {v1, v0}, Lkotlin/collections/MapsKt;->getValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;->pageIndexByPosition(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)I

    move-result p1

    iget-object v2, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;->l:Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;

    invoke-virtual {v2, p1, v1}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->getPageLinks(ILjava/util/List;)Z

    move-result p1

    if-nez p1, :cond_0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;->k(Ljava/lang/String;Ljava/util/List;)V

    :cond_1
    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;->updateSelectionsPageRange(Ljava/util/List;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;->j(Lcom/onyx/android/sdk/reader/api/ReaderSelection;)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->copy()Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method public bridge synthetic getNavigator()Lcom/onyx/android/sdk/reader/api/ReaderNavigator;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;->getNavigator()Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;

    move-result-object p0

    return-object p0
.end method

.method public getNavigator()Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    return-object p0
.end method

.method public getOriginCssStyle()Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {p0}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyleManager$DefaultImpls;->getOriginCssStyle(Lcom/onyx/android/sdk/reader/api/ReaderTextStyleManager;)Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;

    move-result-object p0

    return-object p0
.end method

.method public getPageContentMatrix(I)Landroid/graphics/Matrix;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;->l:Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->pageContentMatrix(I)Landroid/graphics/Matrix;

    move-result-object p0

    if-nez p0, :cond_0

    new-instance p0, Landroid/graphics/Matrix;

    invoke-direct {p0}, Landroid/graphics/Matrix;-><init>()V

    :cond_0
    return-object p0
.end method

.method public bridge synthetic getPageDataProvider()Lcom/onyx/android/sdk/reader/api/ReaderPageDataProvider;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;->getPageDataProvider()Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;

    move-result-object p0

    return-object p0
.end method

.method public getPageDataProvider()Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    return-object p0
.end method

.method public getPageIndexInCurrentChapter()I
    .locals 0
    .annotation build Landroidx/annotation/IntRange;
        from = 0x0L
    .end annotation

    invoke-static {p0}, Lcom/onyx/android/sdk/reader/api/ReaderNavigator$DefaultImpls;->getPageIndexInCurrentChapter(Lcom/onyx/android/sdk/reader/api/ReaderNavigator;)I

    move-result p0

    return p0
.end method

.method public getPageLabel(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Ljava/lang/String;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/reader/api/ReaderNavigator$DefaultImpls;->getPageLabel(Lcom/onyx/android/sdk/reader/api/ReaderNavigator;Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPageLabelList()Ljava/util/List;
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

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;->l:Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->pageLabels()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getPageNumberByPosition(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)I
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/reader/api/ReaderNavigator$DefaultImpls;->getPageNumberByPosition(Lcom/onyx/android/sdk/reader/api/ReaderNavigator;Lcom/onyx/android/sdk/reader/api/ReaderPosition;)I

    move-result p0

    return p0
.end method

.method public final getPageOriginSize(I)Landroid/graphics/RectF;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 2
    fill-array-data v0, :array_0

    .line 3
    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;->l:Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;

    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->pageSize(I[F)Z

    .line 4
    new-instance p0, Landroid/graphics/RectF;

    const/4 p1, 0x0

    aget p1, v0, p1

    const/4 v1, 0x1

    aget v0, v0, v1

    const/4 v1, 0x0

    invoke-direct {p0, v1, v1, p1, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object p0

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public getPageOriginSize(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Landroid/graphics/RectF;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "position"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;->pageIndexByPosition(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;->getPageOriginSize(I)Landroid/graphics/RectF;

    move-result-object p0

    return-object p0
.end method

.method public getPageParagraphList(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Ljava/util/List;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/reader/api/ReaderPosition;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "position"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/onyx/android/sdk/reader/api/ReaderPosition;->asString()Ljava/lang/String;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getPageSizeWithDpi(Lcom/onyx/android/sdk/reader/api/ReaderPosition;F)Landroid/graphics/RectF;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "position"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;->getPageOriginSize(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Landroid/graphics/RectF;

    move-result-object p0

    sget-object p1, Lcom/onyx/android/sdk/neopdf/PdfUtils;->INSTANCE:Lcom/onyx/android/sdk/neopdf/PdfUtils;

    invoke-virtual {p1, p0, p2}, Lcom/onyx/android/sdk/neopdf/PdfUtils;->pdfPageSizeToSizeFormatPx(Landroid/graphics/RectF;F)Landroid/graphics/RectF;

    move-result-object p0

    return-object p0
.end method

.method public getPageText(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Ljava/lang/String;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "position"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;->l:Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;->pageIndexByPosition(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->getPageText(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPageTextInfoState(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Lcom/onyx/android/sdk/reader/api/PageTextInfoState;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/reader/api/ReaderHitTestManager$DefaultImpls;->getPageTextInfoState(Lcom/onyx/android/sdk/reader/api/ReaderHitTestManager;Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Lcom/onyx/android/sdk/reader/api/PageTextInfoState;

    move-result-object p0

    return-object p0
.end method

.method public getPagination()Lcom/onyx/android/sdk/reader/api/ReaderPagination;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getPluginFeatures()Lcom/onyx/android/sdk/reader/api/ReaderPluginFeatures;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;->getPluginFeatures()Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;

    move-result-object p0

    return-object p0
.end method

.method public getPluginFeatures()Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    return-object p0
.end method

.method public bridge synthetic getReaderHitTestManager()Lcom/onyx/android/sdk/reader/api/ReaderHitTestManager;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;->getReaderHitTestManager()Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;

    move-result-object p0

    return-object p0
.end method

.method public getReaderHitTestManager()Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    return-object p0
.end method

.method public bridge synthetic getRenderer()Lcom/onyx/android/sdk/reader/api/ReaderRenderer;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;->getRenderer()Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;

    move-result-object p0

    return-object p0
.end method

.method public getRenderer()Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    return-object p0
.end method

.method public bridge synthetic getRendererFeatures()Lcom/onyx/android/sdk/reader/api/ReaderRendererFeatures;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;->getRendererFeatures()Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;

    move-result-object p0

    return-object p0
.end method

.method public getRendererFeatures()Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    return-object p0
.end method

.method public getRichMedias(Lcom/onyx/android/sdk/reader/api/ReaderPosition;[Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # [Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/reader/api/ReaderPosition;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/reader/api/ReaderRichMedia;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "position"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ignoreObjIdList"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;->pageIndexByPosition(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)I

    move-result p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;->l:Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;

    invoke-virtual {p0, p1, v0, p2}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->getPageRichMedias(ILjava/util/List;[Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getScreenEndPosition()Lcom/onyx/android/sdk/reader/api/ReaderPosition;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Lcom/onyx/android/sdk/reader/api/ReaderNavigator$DefaultImpls;->getScreenEndPosition(Lcom/onyx/android/sdk/reader/api/ReaderNavigator;)Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object p0

    return-object p0
.end method

.method public getScreenStartPosition()Lcom/onyx/android/sdk/reader/api/ReaderPosition;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Lcom/onyx/android/sdk/reader/api/ReaderNavigator$DefaultImpls;->getScreenStartPosition(Lcom/onyx/android/sdk/reader/api/ReaderNavigator;)Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getSearchManager()Lcom/onyx/android/sdk/reader/api/ReaderSearchManager;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;->getSearchManager()Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;

    move-result-object p0

    return-object p0
.end method

.method public getSearchManager()Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    return-object p0
.end method

.method public getSentence(Lcom/onyx/android/sdk/reader/api/ReaderPosition;Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Lcom/onyx/android/sdk/reader/api/ReaderSentence;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "position"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    invoke-interface {p2}, Lcom/onyx/android/sdk/reader/api/ReaderPosition;->asInteger()I

    move-result p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;->pageIndexByPosition(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)I

    move-result p1

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;->l:Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;

    invoke-virtual {v0, p1, p2}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->getSentence(II)Lcom/onyx/android/sdk/reader/api/ReaderSentence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;->updateSentencePageRange(Lcom/onyx/android/sdk/reader/api/ReaderSentence;)V

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/api/ReaderSentence;->getReaderSelection()Lcom/onyx/android/sdk/reader/api/ReaderSelection;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;->j(Lcom/onyx/android/sdk/reader/api/ReaderSelection;)V

    :cond_1
    return-object p1
.end method

.method public getStyle()Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {p0}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyleManager$DefaultImpls;->getStyle(Lcom/onyx/android/sdk/reader/api/ReaderTextStyleManager;)Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;

    move-result-object p0

    return-object p0
.end method

.method public getText(Lcom/onyx/android/sdk/reader/api/ReaderPosition;Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Ljava/lang/String;
    .locals 0
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

    invoke-static {p0, p1, p2}, Lcom/onyx/android/sdk/reader/api/ReaderPageDataProvider$DefaultImpls;->getText(Lcom/onyx/android/sdk/reader/api/ReaderPageDataProvider;Lcom/onyx/android/sdk/reader/api/ReaderPosition;Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getTextStyleManager()Lcom/onyx/android/sdk/reader/api/ReaderTextStyleManager;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;->getTextStyleManager()Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;

    move-result-object p0

    return-object p0
.end method

.method public getTextStyleManager()Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    return-object p0
.end method

.method public getTotalPage()I
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;->l:Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->pageCount()I

    move-result p0

    return p0
.end method

.method public getTotalPageCountInCurrentChapter()I
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/reader/api/ReaderNavigator$DefaultImpls;->getTotalPageCountInCurrentChapter(Lcom/onyx/android/sdk/reader/api/ReaderNavigator;)I

    move-result p0

    return p0
.end method

.method public getTotalReadingProgress()F
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/reader/api/ReaderNavigator$DefaultImpls;->getTotalReadingProgress(Lcom/onyx/android/sdk/reader/api/ReaderNavigator;)F

    move-result p0

    return p0
.end method

.method public bridge synthetic getView()Lcom/onyx/android/sdk/reader/api/ReaderView;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;->getView()Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;

    move-result-object p0

    return-object p0
.end method

.method public getView()Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    return-object p0
.end method

.method public getXPathByPosition(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Ljava/lang/String;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/reader/api/ReaderNavigator$DefaultImpls;->getXPathByPosition(Lcom/onyx/android/sdk/reader/api/ReaderNavigator;Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public gotoPosition(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Z
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/onyx/android/sdk/reader/api/ReaderException;
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/reader/api/ReaderNavigator$DefaultImpls;->gotoPosition(Lcom/onyx/android/sdk/reader/api/ReaderNavigator;Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Z

    move-result p0

    return p0
.end method

.method public final h(Lcom/onyx/android/sdk/reader/api/ReaderPosition;Lcom/onyx/android/sdk/reader/api/ReaderHitTestArgs;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/reader/api/ReaderPosition;",
            "Lcom/onyx/android/sdk/reader/api/ReaderHitTestArgs;",
            ")",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/reader/common/ReaderCharInfo;",
            ">;"
        }
    .end annotation

    invoke-interface {p1}, Lcom/onyx/android/sdk/reader/api/ReaderPosition;->asString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p2, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hit cache, key = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p2, v0, v1, v2}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;->f:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_0

    check-cast p0, Ljava/util/Collection;

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_1

    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    return-object p0

    :cond_2
    iget-object v0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;->l:Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/reader/api/ReaderHitTestArgs;->getPageIndex()I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->getPageTextCharInfoList(I)Ljava/util/List;

    move-result-object p2

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;->f:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p2, Ljava/util/Collection;

    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public hasAnnotationData(I)Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;->l:Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->hasPageAnnotData(I)Z

    move-result p0

    return p0
.end method

.method public hasText(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Z
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/reader/api/ReaderHitTestManager$DefaultImpls;->hasText(Lcom/onyx/android/sdk/reader/api/ReaderHitTestManager;Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Z

    move-result p0

    return p0
.end method

.method public hitPageCache(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Z
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/reader/api/ReaderNavigator$DefaultImpls;->hitPageCache(Lcom/onyx/android/sdk/reader/api/ReaderNavigator;Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Z

    move-result p0

    return p0
.end method

.method public final i(Lcom/onyx/android/sdk/reader/api/ReaderPosition;Ljava/util/List;)Lcom/onyx/android/sdk/reader/api/ReaderWritingMode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/reader/api/ReaderPosition;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/reader/common/ReaderCharInfo;",
            ">;)",
            "Lcom/onyx/android/sdk/reader/api/ReaderWritingMode;"
        }
    .end annotation

    invoke-interface {p1}, Lcom/onyx/android/sdk/reader/api/ReaderPosition;->asString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;->g:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/reader/api/ReaderWritingMode;

    if-nez p0, :cond_0

    sget-object p0, Lcom/onyx/android/sdk/reader/api/ReaderWritingMode;->UNKNOWN:Lcom/onyx/android/sdk/reader/api/ReaderWritingMode;

    :cond_0
    return-object p0

    :cond_1
    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;->a(Ljava/util/List;)Lcom/onyx/android/sdk/reader/api/ReaderWritingMode;

    move-result-object p2

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;->g:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2
.end method

.method public isBlankContent()Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;->l:Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->isBlankContent()Z

    move-result p0

    return p0
.end method

.method public isDamagedFile()Z
    .locals 2

    sget-object v0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;->Companion:Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin$Companion;

    iget-object v1, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/onyx/android/sdk/base/extension/StringKt;->safelyGetStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin$Companion;->supportNoteEmbeded(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;->l:Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->isDamagedFile()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isFirstPage()Z
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/reader/api/ReaderNavigator$DefaultImpls;->isFirstPage(Lcom/onyx/android/sdk/reader/api/ReaderNavigator;)Z

    move-result p0

    return p0
.end method

.method public isImagePage(Lcom/onyx/android/sdk/reader/api/ReaderPosition;I)Z
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-static {p0, p1, p2}, Lcom/onyx/android/sdk/reader/api/ReaderNavigator$DefaultImpls;->isImagePage(Lcom/onyx/android/sdk/reader/api/ReaderNavigator;Lcom/onyx/android/sdk/reader/api/ReaderPosition;I)Z

    move-result p0

    return p0
.end method

.method public isLastPage()Z
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/reader/api/ReaderNavigator$DefaultImpls;->isLastPage(Lcom/onyx/android/sdk/reader/api/ReaderNavigator;)Z

    move-result p0

    return p0
.end method

.method public isValidPosition(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Z
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "position"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;->pageIndexByPosition(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)I

    move-result p1

    const/4 v0, 0x0

    if-gez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;->getTotalPage()I

    move-result p0

    if-ge p1, p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public isWholeBook()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;->j:Z

    return p0
.end method

.method public final j(Lcom/onyx/android/sdk/reader/api/ReaderSelection;)V
    .locals 1

    invoke-interface {p1}, Lcom/onyx/android/sdk/reader/api/ReaderSelection;->writingMode()Lcom/onyx/android/sdk/reader/api/ReaderWritingMode;

    move-result-object p0

    sget-object v0, Lcom/onyx/android/sdk/reader/api/ReaderWritingMode;->VERTICAL_RL:Lcom/onyx/android/sdk/reader/api/ReaderWritingMode;

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/onyx/android/sdk/reader/extension/CharRectList;->INSTANCE:Lcom/onyx/android/sdk/reader/extension/CharRectList;

    invoke-interface {p1}, Lcom/onyx/android/sdk/reader/api/ReaderSelection;->rectangles()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/reader/extension/CharRectList;->mergeBlockRectanglesByVerticalWord(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/onyx/android/sdk/reader/extension/CharRectList;->INSTANCE:Lcom/onyx/android/sdk/reader/extension/CharRectList;

    invoke-interface {p1}, Lcom/onyx/android/sdk/reader/api/ReaderSelection;->rectangles()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/reader/extension/CharRectList;->mergeBlockRectanglesByWord(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    :goto_0
    invoke-interface {p1}, Lcom/onyx/android/sdk/reader/api/ReaderSelection;->rectangles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-interface {p1}, Lcom/onyx/android/sdk/reader/api/ReaderSelection;->rectangles()Ljava/util/List;

    move-result-object p1

    check-cast p0, Ljava/util/Collection;

    invoke-interface {p1, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public final k(Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;->d:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->setLinkType(I)V

    iget-object v1, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;->e:Ljava/util/Map;

    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;->f(Ljava/lang/String;Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final l(Lcom/onyx/android/sdk/reader/api/PageRange;I)V
    .locals 0

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;->positionByPageIndex(I)Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/reader/api/PageRange;->setStartPosition(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)V

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/reader/api/PageRange;->setEndPosition(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)V

    return-void
.end method

.method public lastPage()Lcom/onyx/android/sdk/reader/api/ReaderPosition;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Lcom/onyx/android/sdk/reader/api/ReaderNavigator$DefaultImpls;->lastPage(Lcom/onyx/android/sdk/reader/api/ReaderNavigator;)Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object p0

    return-object p0
.end method

.method public lastSelectionEndOfLine(Lcom/onyx/android/sdk/reader/api/ReaderPosition;Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Lcom/onyx/android/sdk/reader/api/ReaderSelection;
    .locals 0
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

    invoke-static {p0, p1, p2}, Lcom/onyx/android/sdk/reader/api/ReaderHitTestManager$DefaultImpls;->lastSelectionEndOfLine(Lcom/onyx/android/sdk/reader/api/ReaderHitTestManager;Lcom/onyx/android/sdk/reader/api/ReaderPosition;Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Lcom/onyx/android/sdk/reader/api/ReaderSelection;

    move-result-object p0

    return-object p0
.end method

.method public lastText(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Lcom/onyx/android/sdk/reader/api/ReaderSelection;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/reader/api/ReaderHitTestManager$DefaultImpls;->lastText(Lcom/onyx/android/sdk/reader/api/ReaderHitTestManager;Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Lcom/onyx/android/sdk/reader/api/ReaderSelection;

    move-result-object p0

    return-object p0
.end method

.method public lastTextEndOfLine(Lcom/onyx/android/sdk/reader/api/ReaderPosition;Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Lcom/onyx/android/sdk/reader/api/ReaderSelection;
    .locals 0
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

    invoke-static {p0, p1, p2}, Lcom/onyx/android/sdk/reader/api/ReaderHitTestManager$DefaultImpls;->lastTextEndOfLine(Lcom/onyx/android/sdk/reader/api/ReaderHitTestManager;Lcom/onyx/android/sdk/reader/api/ReaderPosition;Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Lcom/onyx/android/sdk/reader/api/ReaderSelection;

    move-result-object p0

    return-object p0
.end method

.method public nextPage(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Lcom/onyx/android/sdk/reader/api/ReaderPosition;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "position"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;->pageIndexByPosition(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;->getTotalPage()I

    move-result v0

    if-ge p1, v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;->positionByPageIndex(I)Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/onyx/android/sdk/reader/impl/ReaderPositionImpl;->Companion:Lcom/onyx/android/sdk/reader/impl/ReaderPositionImpl$Companion;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/impl/ReaderPositionImpl$Companion;->getDummy()Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public nextScreen(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Lcom/onyx/android/sdk/reader/api/ReaderPosition;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "position"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;->nextPage(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object p0

    return-object p0
.end method

.method public open(Ljava/lang/String;Lcom/onyx/android/sdk/reader/api/ReaderDocumentOptions;Lcom/onyx/android/sdk/reader/api/ReaderPluginOptions;)Lcom/onyx/android/sdk/reader/api/ReaderDocument;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/reader/api/ReaderDocumentOptions;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/reader/api/ReaderPluginOptions;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/onyx/android/sdk/reader/api/ReaderException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "documentOptions"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pluginOptions"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;->i:Lcom/onyx/android/sdk/reader/api/ReaderPluginOptions;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/reader/api/ReaderDocumentOptions;->getDocumentPassword()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;->l:Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;

    invoke-virtual {v0, p3}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->init(Lcom/onyx/android/sdk/reader/api/ReaderPluginOptions;)V

    iget-object p3, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;->l:Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;

    invoke-virtual {p3, p1, p2}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->openDocument(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide p1

    sget-object p3, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->Companion:Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper$Companion;

    invoke-virtual {p3}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper$Companion;->getNO_ERROR()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    iget-object p1, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;->l:Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->pageCount()I

    move-result p1

    if-lez p1, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;->b()Z

    move-result p1

    iput-boolean p1, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;->k:Z

    return-object p0

    :cond_0
    sget-object p0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class p1, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string p3, "Page count error!"

    invoke-virtual {p0, p1, p3, p2}, Lcom/onyx/android/sdk/base/utils/Debug;->e(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object p0, Lcom/onyx/android/sdk/reader/api/ReaderException;->Companion:Lcom/onyx/android/sdk/reader/api/ReaderException$Companion;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/api/ReaderException$Companion;->cannotOpen()Lcom/onyx/android/sdk/reader/api/ReaderException;

    move-result-object p0

    throw p0

    :cond_1
    invoke-virtual {p3, p1, p2}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper$Companion;->checkOpenAndThrow(J)V

    return-object p0
.end method

.method public final pageIndexByPosition(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)I
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "position"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/onyx/android/sdk/reader/api/ReaderPosition;->getPageIndex()I

    move-result p0

    return p0
.end method

.method public pageType(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Lcom/onyx/android/sdk/reader/api/ReaderPageType;
    .locals 4
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "position"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;->pageIndexByPosition(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)I

    move-result p1

    new-instance v0, Lcom/onyx/android/sdk/reader/impl/ReaderPageTypeImpl;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Lcom/onyx/android/sdk/reader/impl/ReaderPageTypeImpl;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object v1, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;->l:Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;

    invoke-virtual {v1, p1}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->isOnyxPage(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/reader/impl/ReaderPageTypeImpl;->addOnyxPageFlag()V

    :cond_0
    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;->l:Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->isTextPage(I)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/reader/impl/ReaderPageTypeImpl;->addTextPageFlag()V

    :cond_1
    return-object v0
.end method

.method public positionByPageIndex(I)Lcom/onyx/android/sdk/reader/api/ReaderPosition;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;->l:Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->positionByPageIndex(I)Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object p0

    return-object p0
.end method

.method public positionByPositionInt(I)Lcom/onyx/android/sdk/reader/api/ReaderPosition;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/reader/api/ReaderNavigator$DefaultImpls;->positionByPositionInt(Lcom/onyx/android/sdk/reader/api/ReaderNavigator;I)Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object p0

    return-object p0
.end method

.method public positionByPositionString(Ljava/lang/String;Z)Lcom/onyx/android/sdk/reader/api/ReaderPosition;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "positionString"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;->l:Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->positionByPositionString(Ljava/lang/String;Z)Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object p0

    return-object p0
.end method

.method public prevPage(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Lcom/onyx/android/sdk/reader/api/ReaderPosition;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "position"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;->pageIndexByPosition(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)I

    move-result p1

    if-lez p1, :cond_0

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;->positionByPageIndex(I)Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/onyx/android/sdk/reader/impl/ReaderPositionImpl;->Companion:Lcom/onyx/android/sdk/reader/impl/ReaderPositionImpl$Companion;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/impl/ReaderPositionImpl$Companion;->getDummy()Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public prevScreen(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Lcom/onyx/android/sdk/reader/api/ReaderPosition;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "position"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;->prevPage(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object p0

    return-object p0
.end method

.method public readCover(Lcom/onyx/android/sdk/reader/api/ReaderImage;)Z
    .locals 18
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderImage;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    move-object/from16 v0, p0

    const-string v1, "readImage"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;->l:Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->supportCover()Z

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    return v3

    :cond_0
    invoke-interface/range {p1 .. p1}, Lcom/onyx/android/sdk/reader/api/ReaderImage;->bitmap()Landroid/graphics/Bitmap;

    move-result-object v11

    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v3}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;->positionByPageIndex(I)Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object v5

    invoke-static {v11}, Lcom/onyx/android/sdk/base/extension/BitmapKt;->boundingRectF(Landroid/graphics/Bitmap;)Landroid/graphics/RectF;

    move-result-object v8

    new-instance v1, Lcom/onyx/android/sdk/reader/api/DrawArgs;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x7b2

    const/16 v17, 0x0

    move-object v4, v1

    invoke-direct/range {v4 .. v17}, Lcom/onyx/android/sdk/reader/api/DrawArgs;-><init>(Lcom/onyx/android/sdk/reader/api/ReaderPosition;FILandroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Bitmap;Ljava/util/List;Ljava/util/List;Ljava/util/List;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object v0, v0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;->l:Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->drawPage(Lcom/onyx/android/sdk/reader/api/DrawArgs;)Z

    move-result v0

    return v0
.end method

.method public readMetadata(Lcom/onyx/android/sdk/reader/api/ReaderDocumentMetadata;)Z
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderDocumentMetadata;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "metadata"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;->l:Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;

    const-string v1, "Title"

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->metadataString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/reader/api/ReaderDocumentMetadata;->setTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;->l:Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;

    const-string v1, "OnyxOptions"

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->metadataString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/reader/api/ReaderDocumentMetadata;->setOptions(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;->l:Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;

    const-string v0, "Author"

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->metadataString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/reader/api/ReaderDocumentMetadata;->addValidAuthor(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public readTableOfContent(Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;)Z
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "toc"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;->l:Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;->getRootEntry()Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->getTableOfContent(Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;)Z

    move-result p0

    return p0
.end method

.method public reopen()Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;->l:Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->reopenDocument()Z

    move-result p0

    return p0
.end method

.method public searchInPage(ILcom/onyx/android/sdk/reader/api/ReaderSearchOptions;Z)Z
    .locals 12
    .param p2    # Lcom/onyx/android/sdk/reader/api/ReaderSearchOptions;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "options"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;->c:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->clear()V

    :cond_0
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;->l:Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;->h:Lcom/onyx/android/sdk/base/data/Size;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/Size;->getWidth()I

    move-result v4

    iget-object v1, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;->h:Lcom/onyx/android/sdk/base/data/Size;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/Size;->getHeight()I

    move-result v5

    const/4 v6, 0x0

    invoke-interface {p2}, Lcom/onyx/android/sdk/reader/api/ReaderSearchOptions;->pattern()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, ""

    :cond_1
    move-object v7, v1

    invoke-interface {p2}, Lcom/onyx/android/sdk/reader/api/ReaderSearchOptions;->isCaseSensitive()Z

    move-result v8

    invoke-interface {p2}, Lcom/onyx/android/sdk/reader/api/ReaderSearchOptions;->isMatchWholeWord()Z

    move-result v9

    invoke-interface {p2}, Lcom/onyx/android/sdk/reader/api/ReaderSearchOptions;->contextLength()I

    move-result v10

    move v1, p1

    move-object v11, p3

    invoke-virtual/range {v0 .. v11}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->searchInPage(IIIIIILjava/lang/String;ZZILjava/util/List;)V

    new-instance p2, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p3, v0}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;

    instance-of v1, v0, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    move-object v1, v0

    goto :goto_1

    :cond_2
    move-object v1, v2

    :goto_1
    if-nez v1, :cond_4

    instance-of v3, v0, Lcom/onyx/android/sdk/neopdf/PdfCharInfo;

    if-eqz v3, :cond_3

    move-object v2, v0

    check-cast v2, Lcom/onyx/android/sdk/neopdf/PdfCharInfo;

    :cond_3
    if-eqz v2, :cond_4

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;->l:Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;

    invoke-virtual {v0, p1, v2}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->convertToReaderSelectionImpl(ILcom/onyx/android/sdk/neopdf/PdfCharInfo;)Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;

    move-result-object v1

    :cond_4
    iget-object v0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;->c:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->safeAdd(Ljava/util/Collection;Ljava/lang/Object;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-interface {p2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    iget-object p1, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;

    sget-object p3, Lcom/onyx/android/sdk/reader/api/ReaderWritingMode;->Companion:Lcom/onyx/android/sdk/reader/api/ReaderWritingMode$Companion;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->getRectList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/onyx/android/sdk/reader/api/ReaderWritingMode$Companion;->analysePageWritingModeByBlockRect(Ljava/util/List;)Lcom/onyx/android/sdk/reader/api/ReaderWritingMode;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->setWritingMode(Lcom/onyx/android/sdk/reader/api/ReaderWritingMode;)V

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;->j(Lcom/onyx/android/sdk/reader/api/ReaderSelection;)V

    goto :goto_2

    :cond_6
    iget-object p1, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;->c:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;->updateSelectionsPageRange(Ljava/util/List;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;->c:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_7

    const/4 p0, 0x1

    goto :goto_3

    :cond_7
    const/4 p0, 0x0

    :goto_3
    return p0
.end method

.method public searchNext(Lcom/onyx/android/sdk/reader/api/ReaderSearchOptions;)Z
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderSearchOptions;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "options"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-interface {p1}, Lcom/onyx/android/sdk/reader/api/ReaderSearchOptions;->fromPage()I

    move-result v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;->getTotalPage()I

    move-result v1

    :goto_0
    const/4 v2, 0x0

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0, p1, v2}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;->searchInPage(ILcom/onyx/android/sdk/reader/api/ReaderSearchOptions;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public searchPrevious(Lcom/onyx/android/sdk/reader/api/ReaderSearchOptions;)Z
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderSearchOptions;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "options"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-interface {p1}, Lcom/onyx/android/sdk/reader/api/ReaderSearchOptions;->fromPage()I

    move-result v0

    :goto_0
    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ge v2, v0, :cond_1

    invoke-virtual {p0, v0, p1, v1}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;->searchInPage(ILcom/onyx/android/sdk/reader/api/ReaderSearchOptions;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public searchResults()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;->c:Ljava/util/List;

    return-object p0
.end method

.method public selectOnDocument(Lcom/onyx/android/sdk/reader/api/ReaderSelectTextArgs;)Lcom/onyx/android/sdk/reader/api/ReaderSelection;
    .locals 4
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderSelectTextArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/api/ReaderSelectTextArgs;->getPagePosition()Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;->pageIndexByPosition(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)I

    move-result v0

    iget-object v1, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;->l:Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->getPageTextCharBoxes(I)Ljava/util/List;

    move-result-object v1

    sget-object v2, Lcom/onyx/android/sdk/reader/utils/ReaderSelectionUtils;->INSTANCE:Lcom/onyx/android/sdk/reader/utils/ReaderSelectionUtils;

    invoke-virtual {v2, v1}, Lcom/onyx/android/sdk/reader/utils/ReaderSelectionUtils;->getAllCharRectList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Lcom/onyx/android/sdk/reader/api/ReaderSelectTextArgs;->setScreenPage(Z)V

    invoke-virtual {p1, v1}, Lcom/onyx/android/sdk/reader/api/ReaderSelectTextArgs;->setAllCharRectList(Ljava/util/List;)V

    invoke-virtual {v2, p1}, Lcom/onyx/android/sdk/reader/utils/ReaderSelectionUtils;->selectCharRectList(Lcom/onyx/android/sdk/reader/api/ReaderSelectTextArgs;)Ljava/util/List;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Ljava/util/Collection;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v3, 0x1

    :cond_1
    if-eqz v3, :cond_2

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;->d(I)Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->getRectList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-static {p1}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copyRectFList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->setCharRectList(Ljava/util/List;)V

    return-object p0
.end method

.method public selectOnScreen(Lcom/onyx/android/sdk/reader/api/ReaderHitTestArgs;Lcom/onyx/android/sdk/reader/api/ReaderHitTestArgs;Lcom/onyx/android/sdk/reader/api/ReaderHitTestOptions;)Lcom/onyx/android/sdk/reader/api/ReaderSelection;
    .locals 4
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

    .line 1
    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/api/ReaderHitTestArgs;->getPageIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;->positionByPageIndex(I)Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object v0

    .line 2
    invoke-virtual {p0, v0, p1}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;->h(Lcom/onyx/android/sdk/reader/api/ReaderPosition;Lcom/onyx/android/sdk/reader/api/ReaderHitTestArgs;)Ljava/util/List;

    move-result-object v1

    .line 3
    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;->i(Lcom/onyx/android/sdk/reader/api/ReaderPosition;Ljava/util/List;)Lcom/onyx/android/sdk/reader/api/ReaderWritingMode;

    move-result-object v2

    .line 4
    new-instance v3, Lcom/onyx/android/sdk/reader/common/FixedDocumentPageTextHelper;

    invoke-direct {v3, v0, v1, v2}, Lcom/onyx/android/sdk/reader/common/FixedDocumentPageTextHelper;-><init>(Lcom/onyx/android/sdk/reader/api/ReaderPosition;Ljava/util/List;Lcom/onyx/android/sdk/reader/api/ReaderWritingMode;)V

    .line 5
    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/api/ReaderHitTestArgs;->getPageIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;->getPageOriginSize(I)Landroid/graphics/RectF;

    move-result-object p0

    invoke-virtual {v3, p0, p1, p2, p3}, Lcom/onyx/android/sdk/reader/common/FixedDocumentPageTextHelper;->selectOnScreen(Landroid/graphics/RectF;Lcom/onyx/android/sdk/reader/api/ReaderHitTestArgs;Lcom/onyx/android/sdk/reader/api/ReaderHitTestArgs;Lcom/onyx/android/sdk/reader/api/ReaderHitTestOptions;)Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;

    move-result-object p0

    return-object p0
.end method

.method public selectOnScreen(Lcom/onyx/android/sdk/reader/api/ReaderPosition;Lcom/onyx/android/sdk/reader/api/ReaderPosition;Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Lcom/onyx/android/sdk/reader/api/ReaderSelection;
    .locals 11
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "pagePosition"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "startPosition"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "endPosition"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;->pageIndexByPosition(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)I

    move-result v2

    .line 7
    invoke-interface {p2}, Lcom/onyx/android/sdk/reader/api/ReaderPosition;->asInteger()I

    move-result v8

    .line 8
    invoke-interface {p3}, Lcom/onyx/android/sdk/reader/api/ReaderPosition;->asInteger()I

    move-result v9

    .line 9
    invoke-virtual {p0, v2}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;->getPageOriginSize(I)Landroid/graphics/RectF;

    move-result-object p1

    .line 10
    invoke-virtual {p0, v2}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;->d(I)Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;

    move-result-object p2

    .line 11
    iget-object v1, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;->l:Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p3

    float-to-int v5, p3

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    float-to-int v6, p1

    const/4 v7, 0x0

    move-object v10, p2

    invoke-virtual/range {v1 .. v10}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->selection(IIIIIIIILcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;)I

    .line 12
    sget-object p1, Lcom/onyx/android/sdk/reader/api/ReaderWritingMode;->Companion:Lcom/onyx/android/sdk/reader/api/ReaderWritingMode$Companion;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->getRectList()Ljava/util/List;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/onyx/android/sdk/reader/api/ReaderWritingMode$Companion;->analysePageWritingModeByCharRect(Ljava/util/List;)Lcom/onyx/android/sdk/reader/api/ReaderWritingMode;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->setWritingMode(Lcom/onyx/android/sdk/reader/api/ReaderWritingMode;)V

    .line 13
    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;->j(Lcom/onyx/android/sdk/reader/api/ReaderSelection;)V

    return-object p2
.end method

.method public selectSelection(Lcom/onyx/android/sdk/reader/api/ReaderPosition;Lcom/onyx/android/sdk/reader/api/ReaderPosition;I)Lcom/onyx/android/sdk/reader/api/ReaderSelection;
    .locals 0
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

    invoke-static {p0, p1, p2, p3}, Lcom/onyx/android/sdk/reader/api/ReaderHitTestManager$DefaultImpls;->selectSelection(Lcom/onyx/android/sdk/reader/api/ReaderHitTestManager;Lcom/onyx/android/sdk/reader/api/ReaderPosition;Lcom/onyx/android/sdk/reader/api/ReaderPosition;I)Lcom/onyx/android/sdk/reader/api/ReaderSelection;

    move-result-object p0

    return-object p0
.end method

.method public setFontEnhancement(I[I)V
    .locals 0
    .param p2    # [I
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p1, "colorTable"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;->l:Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->setTextGammaTable([I)V

    return-void
.end method

.method public setStyle(Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyleManager$DefaultImpls;->setStyle(Lcom/onyx/android/sdk/reader/api/ReaderTextStyleManager;Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;)V

    return-void
.end method

.method public setTextGamma(F)V
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;->l:Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->setTextGamma(F)V

    return-void
.end method

.method public setupDisplayMetrics(Lcom/onyx/engine/sdk/DisplayMetrics;)V
    .locals 0
    .param p1    # Lcom/onyx/engine/sdk/DisplayMetrics;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/reader/api/ReaderView$DefaultImpls;->setupDisplayMetrics(Lcom/onyx/android/sdk/reader/api/ReaderView;Lcom/onyx/engine/sdk/DisplayMetrics;)V

    return-void
.end method

.method public supportChangeWritingMode()Z
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/reader/api/ReaderRendererFeatures$DefaultImpls;->supportChangeWritingMode(Lcom/onyx/android/sdk/reader/api/ReaderRendererFeatures;)Z

    move-result p0

    return p0
.end method

.method public supportCssOriginStyle()Z
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/reader/api/ReaderRendererFeatures$DefaultImpls;->supportCssOriginStyle(Lcom/onyx/android/sdk/reader/api/ReaderRendererFeatures;)Z

    move-result p0

    return p0
.end method

.method public supportDrm()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public supportFontEmboldenAdjustment()Z
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/reader/api/ReaderRendererFeatures$DefaultImpls;->supportFontEmboldenAdjustment(Lcom/onyx/android/sdk/reader/api/ReaderRendererFeatures;)Z

    move-result p0

    return p0
.end method

.method public supportFontEnhancementAdjustment()Z
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/reader/api/ReaderRendererFeatures$DefaultImpls;->supportFontEnhancementAdjustment(Lcom/onyx/android/sdk/reader/api/ReaderRendererFeatures;)Z

    move-result p0

    return p0
.end method

.method public supportFontGammaAdjustment()Z
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/reader/api/ReaderRendererFeatures$DefaultImpls;->supportFontGammaAdjustment(Lcom/onyx/android/sdk/reader/api/ReaderRendererFeatures;)Z

    move-result p0

    return p0
.end method

.method public supportFontSizeAdjustment()Z
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/reader/api/ReaderRendererFeatures$DefaultImpls;->supportFontSizeAdjustment(Lcom/onyx/android/sdk/reader/api/ReaderRendererFeatures;)Z

    move-result p0

    return p0
.end method

.method public supportLetterSpacingAdjustment()Z
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/reader/api/ReaderRendererFeatures$DefaultImpls;->supportLetterSpacingAdjustment(Lcom/onyx/android/sdk/reader/api/ReaderRendererFeatures;)Z

    move-result p0

    return p0
.end method

.method public supportNoteEmbeded()Z
    .locals 2

    sget-object v0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;->Companion:Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin$Companion;

    iget-object v1, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/onyx/android/sdk/base/extension/StringKt;->safelyGetStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin$Companion;->supportNoteEmbeded(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;->l:Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->supportNoteEmbeded()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public supportPageId()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public supportRenderPageLink()Z
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/reader/api/ReaderRendererFeatures$DefaultImpls;->supportRenderPageLink(Lcom/onyx/android/sdk/reader/api/ReaderRendererFeatures;)Z

    move-result p0

    return p0
.end method

.method public supportSaveOptions()Z
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/reader/api/ReaderPluginFeatures$DefaultImpls;->supportSaveOptions(Lcom/onyx/android/sdk/reader/api/ReaderPluginFeatures;)Z

    move-result p0

    return p0
.end method

.method public supportScale()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;->k:Z

    return p0
.end method

.method public supportTypefaceAdjustment()Z
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/reader/api/ReaderRendererFeatures$DefaultImpls;->supportTypefaceAdjustment(Lcom/onyx/android/sdk/reader/api/ReaderRendererFeatures;)Z

    move-result p0

    return p0
.end method

.method public updateDocumentOptions(Lcom/onyx/android/sdk/reader/api/ReaderDocumentOptions;Lcom/onyx/android/sdk/reader/api/ReaderPluginOptions;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderDocumentOptions;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/reader/api/ReaderPluginOptions;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "documentOptions"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "pluginOptions"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final updateSelectionPageRange(Lcom/onyx/android/sdk/reader/api/ReaderSelection;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderSelection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/onyx/android/sdk/reader/api/ReaderSelection;->pageRange()Lcom/onyx/android/sdk/reader/api/PageRange;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-interface {p1}, Lcom/onyx/android/sdk/reader/api/ReaderSelection;->pageRange()Lcom/onyx/android/sdk/reader/api/PageRange;

    move-result-object v0

    invoke-interface {p1}, Lcom/onyx/android/sdk/reader/api/ReaderSelection;->pageIndex()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;->l(Lcom/onyx/android/sdk/reader/api/PageRange;I)V

    return-void
.end method

.method public final updateSelectionsPageRange(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/reader/api/ReaderSelection;",
            ">;)V"
        }
    .end annotation

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    return-void

    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/reader/api/ReaderSelection;

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;->updateSelectionPageRange(Lcom/onyx/android/sdk/reader/api/ReaderSelection;)V

    goto :goto_2

    :cond_3
    return-void
.end method

.method public final updateSentencePageRange(Lcom/onyx/android/sdk/reader/api/ReaderSentence;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderSentence;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/api/ReaderSentence;->getReaderSelection()Lcom/onyx/android/sdk/reader/api/ReaderSelection;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;->updateSelectionPageRange(Lcom/onyx/android/sdk/reader/api/ReaderSelection;)V

    return-void
.end method

.method public updateTocPageIndex(Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p0, p1}, Lcom/onyx/android/sdk/reader/api/ReaderNavigator$DefaultImpls;->updateTocPageIndex(Lcom/onyx/android/sdk/reader/api/ReaderNavigator;Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;)V

    return-void
.end method

.method public updateTocPageIndex(Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "entry"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;->l:Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->updateTocPageIndex(Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;)V

    return-void
.end method

.method public updateViewSize(Lcom/onyx/android/sdk/base/data/Size;)V
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/base/data/Size;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "size"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p1, v2, v2, v0, v1}, Lcom/onyx/android/sdk/base/data/Size;->copy$default(Lcom/onyx/android/sdk/base/data/Size;IIILjava/lang/Object;)Lcom/onyx/android/sdk/base/data/Size;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;->h:Lcom/onyx/android/sdk/base/data/Size;

    return-void
.end method
