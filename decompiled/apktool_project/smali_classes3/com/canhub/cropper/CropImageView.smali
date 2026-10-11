.class public final Lcom/canhub/cropper/CropImageView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lcom/canhub/cropper/CropOverlayView$CropWindowChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/canhub/cropper/CropImageView$CropShape;,
        Lcom/canhub/cropper/CropImageView$CropCornerShape;,
        Lcom/canhub/cropper/CropImageView$ScaleType;,
        Lcom/canhub/cropper/CropImageView$Guidelines;,
        Lcom/canhub/cropper/CropImageView$RequestSizeOptions;,
        Lcom/canhub/cropper/CropImageView$OnSetCropOverlayReleasedListener;,
        Lcom/canhub/cropper/CropImageView$OnSetCropOverlayMovedListener;,
        Lcom/canhub/cropper/CropImageView$OnSetCropWindowChangeListener;,
        Lcom/canhub/cropper/CropImageView$OnSetImageUriCompleteListener;,
        Lcom/canhub/cropper/CropImageView$OnCropImageCompleteListener;,
        Lcom/canhub/cropper/CropImageView$CropResult;,
        Lcom/canhub/cropper/CropImageView$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCropImageView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CropImageView.kt\ncom/canhub/cropper/CropImageView\n+ 2 ParcelableUtils.kt\ncom/canhub/cropper/ParcelableUtilsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 Pair.kt\nandroidx/core/util/PairKt\n*L\n1#1,1893:1\n7#2,5:1894\n7#2,5:1902\n7#2,5:1907\n7#2,5:1912\n7#2,5:1917\n7#2,5:1922\n1#3:1899\n66#4:1900\n78#4:1901\n*S KotlinDebug\n*F\n+ 1 CropImageView.kt\ncom/canhub/cropper/CropImageView\n*L\n1806#1:1894,5\n1133#1:1902,5\n1158#1:1907,5\n1164#1:1912,5\n1170#1:1917,5\n1186#1:1922,5\n1047#1:1900\n1046#1:1901\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00aa\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\u0018\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0010\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0014\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0013\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0010\u000e\n\u0002\u0008*\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0017\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u001d\n\u0002\u0018\u0002\n\u0002\u0008\u0012\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0010\u0018\u0000 \u00c2\u00022\u00020\u00012\u00020\u0002:\u0018\u00c2\u0002\u00c3\u0002\u00c4\u0002\u00c5\u0002\u00c6\u0002\u00c7\u0002\u00c8\u0002\u00c9\u0002\u00ca\u0002\u00cb\u0002\u00cc\u0002\u00cd\u0002B#\u0008\u0007\u0012\u0008\u0010\u00bd\u0002\u001a\u00030\u00bc\u0002\u0012\u000c\u0008\u0002\u0010\u00bf\u0002\u001a\u0005\u0018\u00010\u00be\u0002\u00a2\u0006\u0006\u0008\u00c0\u0002\u0010\u00c1\u0002J4\u0010\u000c\u001a\u00020\u000b2\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0006\u001a\u00020\u00052\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u00072\u0006\u0010\t\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u0005H\u0002J\u0008\u0010\r\u001a\u00020\u000bH\u0002J\u0018\u0010\u0011\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u000eH\u0002J(\u0010\u0016\u001a\u00020\u000b2\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0014\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u000eH\u0002J\u0008\u0010\u0017\u001a\u00020\u000bH\u0002J\u0008\u0010\u0018\u001a\u00020\u000bH\u0002J\u0008\u0010\u0019\u001a\u00020\u000bH\u0002J\u0010\u0010\u001b\u001a\u00020\u000b2\u0006\u0010\u001a\u001a\u00020\u000eH\u0002J\u000e\u0010\u001d\u001a\u00020\u000b2\u0006\u0010\u001c\u001a\u00020\u000eJ\u000e\u0010\u001f\u001a\u00020\u000b2\u0006\u0010\u001e\u001a\u00020\u000eJ\u0016\u0010\"\u001a\u00020\u000b2\u0006\u0010 \u001a\u00020\u00052\u0006\u0010!\u001a\u00020\u0005J\u0016\u0010%\u001a\u00020\u000b2\u0006\u0010#\u001a\u00020\u00052\u0006\u0010$\u001a\u00020\u0005J\u000e\u0010\'\u001a\u00020\u000b2\u0006\u0010&\u001a\u00020\u000eJ\u0016\u0010*\u001a\u00020\u000b2\u0006\u0010(\u001a\u00020\u00052\u0006\u0010)\u001a\u00020\u0005J\u000e\u0010-\u001a\u00020\u000b2\u0006\u0010,\u001a\u00020+J\u0006\u0010.\u001a\u00020\u000bJ\u000e\u00100\u001a\u00020\u000b2\u0006\u0010/\u001a\u00020\u0012J\u0008\u00102\u001a\u0004\u0018\u000101J\u0006\u00103\u001a\u00020\u000bJ(\u00107\u001a\u0004\u0018\u00010\u00032\u0008\u0008\u0002\u00104\u001a\u00020\u00052\u0008\u0008\u0002\u00105\u001a\u00020\u00052\u0008\u0008\u0002\u0010,\u001a\u000206H\u0007JD\u0010<\u001a\u00020\u000b2\u0008\u0008\u0002\u00109\u001a\u0002082\u0008\u0008\u0002\u0010:\u001a\u00020\u00052\u0008\u0008\u0002\u00104\u001a\u00020\u00052\u0008\u0008\u0002\u00105\u001a\u00020\u00052\u0008\u0008\u0002\u0010,\u001a\u0002062\n\u0008\u0002\u0010;\u001a\u0004\u0018\u00010\u0007J\u0010\u0010?\u001a\u00020\u000b2\u0008\u0010>\u001a\u0004\u0018\u00010=J\u0010\u0010A\u001a\u00020\u000b2\u0008\u0010>\u001a\u0004\u0018\u00010@J\u0010\u0010C\u001a\u00020\u000b2\u0008\u0010>\u001a\u0004\u0018\u00010BJ\u0010\u0010E\u001a\u00020\u000b2\u0008\u0010>\u001a\u0004\u0018\u00010DJ\u0010\u0010G\u001a\u00020\u000b2\u0008\u0010>\u001a\u0004\u0018\u00010FJ\u0010\u0010H\u001a\u00020\u000b2\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003J\u001a\u0010H\u001a\u00020\u000b2\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00032\u0008\u0010J\u001a\u0004\u0018\u00010IJ\u0010\u0010L\u001a\u00020\u000b2\u0008\u0010K\u001a\u0004\u0018\u00010\u0007J\u0006\u0010M\u001a\u00020\u000bJ\u000e\u0010O\u001a\u00020\u000b2\u0006\u0010N\u001a\u00020\u0005J\u0006\u0010P\u001a\u00020\u000bJ\u0006\u0010Q\u001a\u00020\u000bJ\u0017\u0010V\u001a\u00020\u000b2\u0006\u0010S\u001a\u00020RH\u0000\u00a2\u0006\u0004\u0008T\u0010UJ\u0017\u0010Z\u001a\u00020\u000b2\u0006\u0010S\u001a\u00020WH\u0000\u00a2\u0006\u0004\u0008X\u0010YJ8\u0010[\u001a\u00020\u000b2\u0006\u00104\u001a\u00020\u00052\u0006\u00105\u001a\u00020\u00052\u0006\u0010,\u001a\u0002062\u0006\u00109\u001a\u0002082\u0006\u0010:\u001a\u00020\u00052\u0008\u0010;\u001a\u0004\u0018\u00010\u0007J\n\u0010]\u001a\u0004\u0018\u00010\\H\u0016J\u0010\u0010_\u001a\u00020\u000b2\u0006\u0010^\u001a\u00020\\H\u0016J\u0018\u0010b\u001a\u00020\u000b2\u0006\u0010`\u001a\u00020\u00052\u0006\u0010a\u001a\u00020\u0005H\u0014J0\u0010g\u001a\u00020\u000b2\u0006\u0010c\u001a\u00020\u000e2\u0006\u0010d\u001a\u00020\u00052\u0006\u0010e\u001a\u00020\u00052\u0006\u0010f\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u0005H\u0014J(\u0010k\u001a\u00020\u000b2\u0006\u0010h\u001a\u00020\u00052\u0006\u0010\u001b\u001a\u00020\u00052\u0006\u0010i\u001a\u00020\u00052\u0006\u0010j\u001a\u00020\u0005H\u0014J\u0010\u0010l\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u000eH\u0016R\u0014\u0010o\u001a\u00020m8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010nR\u0016\u0010r\u001a\u0004\u0018\u00010p8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010qR\u0014\u0010u\u001a\u00020s8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010tR\u0014\u0010v\u001a\u00020s8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010tR\u0014\u0010z\u001a\u00020w8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008x\u0010yR\u0014\u0010~\u001a\u00020{8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008|\u0010}R\u0015\u0010\u0080\u0001\u001a\u00020{8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u007f\u0010}R\u001b\u0010\u0083\u0001\u001a\u0005\u0018\u00010\u0081\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008d\u0010\u0082\u0001R\u001b\u0010\u0086\u0001\u001a\u0004\u0018\u00010\u00038\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0084\u0001\u0010\u0085\u0001R\u0019\u0010\u0089\u0001\u001a\u00020\u00058\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0087\u0001\u0010\u0088\u0001R\u0019\u0010\u008b\u0001\u001a\u00020\u00058\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u008a\u0001\u0010\u0088\u0001R\u0019\u0010\u008e\u0001\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u008c\u0001\u0010\u008d\u0001R\u0019\u0010\u0090\u0001\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u008f\u0001\u0010\u008d\u0001R\u0018\u0010\u0091\u0001\u001a\u00020\u00058\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008f\u0010\u0088\u0001R\u0019\u0010\u0093\u0001\u001a\u00020\u00058\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0092\u0001\u0010\u0088\u0001R\u0018\u0010\u0094\u0001\u001a\u00020\u00058\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008e\u0010\u0088\u0001R\u001a\u0010\u0098\u0001\u001a\u00030\u0095\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0096\u0001\u0010\u0097\u0001R1\u0010\u009a\u0001\u001a\u00020\u000e8\u0006@\u0006X\u0087\u000e\u00a2\u0006 \n\u0006\u0008\u0099\u0001\u0010\u008d\u0001\u0012\u0006\u0008\u009e\u0001\u0010\u009f\u0001\u001a\u0006\u0008\u009a\u0001\u0010\u009b\u0001\"\u0006\u0008\u009c\u0001\u0010\u009d\u0001R\u0018\u0010\u00a0\u0001\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008h\u0010\u008d\u0001R\u0019\u0010\u00a2\u0001\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00a1\u0001\u0010\u008d\u0001R\u001a\u0010\u00a6\u0001\u001a\u00030\u00a3\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00a4\u0001\u0010\u00a5\u0001R\u0019\u0010\u00a9\u0001\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00a7\u0001\u0010\u00a8\u0001R\u0019\u0010\u00ab\u0001\u001a\u00020\u00058\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00aa\u0001\u0010\u0088\u0001R\u0019\u0010\u00ad\u0001\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00ac\u0001\u0010\u008d\u0001R\u0019\u0010\u00af\u0001\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00ae\u0001\u0010\u008d\u0001R\u0019\u0010\u00b1\u0001\u001a\u00020\u00058\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00b0\u0001\u0010\u0088\u0001R\u001b\u0010\u00b4\u0001\u001a\u0004\u0018\u00010=8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00b2\u0001\u0010\u00b3\u0001R\u001b\u0010\u00b7\u0001\u001a\u0004\u0018\u00010@8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00b5\u0001\u0010\u00b6\u0001R\u001b\u0010\u00ba\u0001\u001a\u0004\u0018\u00010B8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00b8\u0001\u0010\u00b9\u0001R\u001b\u0010\u00bd\u0001\u001a\u0004\u0018\u00010D8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00bb\u0001\u0010\u00bc\u0001R\u001b\u0010\u00c0\u0001\u001a\u0004\u0018\u00010F8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00be\u0001\u0010\u00bf\u0001R-\u0010\u0008\u001a\u0004\u0018\u00010\u00072\t\u0010\u00c1\u0001\u001a\u0004\u0018\u00010\u00078\u0006@BX\u0086\u000e\u00a2\u0006\u0010\n\u0006\u0008\u00c2\u0001\u0010\u00c3\u0001\u001a\u0006\u0008\u00c4\u0001\u0010\u00c5\u0001R\u0019\u0010\u00c7\u0001\u001a\u00020\u00058\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00c6\u0001\u0010\u0088\u0001R\u0019\u0010\u00c9\u0001\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00c8\u0001\u0010\u00a8\u0001R\u0019\u0010\u00cb\u0001\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00ca\u0001\u0010\u00a8\u0001R\u0019\u0010\u00cd\u0001\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00cc\u0001\u0010\u00a8\u0001R\u001c\u0010\u00d1\u0001\u001a\u0005\u0018\u00010\u00ce\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00cf\u0001\u0010\u00d0\u0001R\u0019\u0010\u00d3\u0001\u001a\u00020\u00058\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00d2\u0001\u0010\u0088\u0001R\u0019\u0010\u00d5\u0001\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00d4\u0001\u0010\u008d\u0001R#\u0010\u00da\u0001\u001a\u000c\u0012\u0005\u0012\u00030\u00d7\u0001\u0018\u00010\u00d6\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00d8\u0001\u0010\u00d9\u0001R#\u0010\u00dd\u0001\u001a\u000c\u0012\u0005\u0012\u00030\u00db\u0001\u0018\u00010\u00d6\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00dc\u0001\u0010\u00d9\u0001R*\u0010;\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0018\n\u0006\u0008\u00de\u0001\u0010\u00c3\u0001\u001a\u0006\u0008\u00df\u0001\u0010\u00c5\u0001\"\u0006\u0008\u00e0\u0001\u0010\u00e1\u0001R,\u0010\u00e2\u0001\u001a\u00030\u0095\u00012\u0008\u0010\u00e2\u0001\u001a\u00030\u0095\u00018F@FX\u0086\u000e\u00a2\u0006\u0010\u001a\u0006\u0008\u00e3\u0001\u0010\u00e4\u0001\"\u0006\u0008\u00e5\u0001\u0010\u00e6\u0001R0\u0010\u00e8\u0001\u001a\u0005\u0018\u00010\u00e7\u00012\n\u0010\u00e8\u0001\u001a\u0005\u0018\u00010\u00e7\u00018F@FX\u0086\u000e\u00a2\u0006\u0010\u001a\u0006\u0008\u00e9\u0001\u0010\u00ea\u0001\"\u0006\u0008\u00eb\u0001\u0010\u00ec\u0001R0\u0010\u00ee\u0001\u001a\u0005\u0018\u00010\u00ed\u00012\n\u0010\u00ee\u0001\u001a\u0005\u0018\u00010\u00ed\u00018F@FX\u0086\u000e\u00a2\u0006\u0010\u001a\u0006\u0008\u00ef\u0001\u0010\u00f0\u0001\"\u0006\u0008\u00f1\u0001\u0010\u00f2\u0001R*\u0010\u00f4\u0001\u001a\u00020\u000e2\u0007\u0010\u00f3\u0001\u001a\u00020\u000e8F@FX\u0086\u000e\u00a2\u0006\u0010\u001a\u0006\u0008\u00f4\u0001\u0010\u009b\u0001\"\u0006\u0008\u00f5\u0001\u0010\u009d\u0001R*\u0010\u00f6\u0001\u001a\u00020\u00052\u0007\u0010\u00f6\u0001\u001a\u00020\u00058F@FX\u0086\u000e\u00a2\u0006\u0010\u001a\u0006\u0008\u00f7\u0001\u0010\u00f8\u0001\"\u0006\u0008\u00f9\u0001\u0010\u00fa\u0001R)\u0010\u00fd\u0001\u001a\u00020\u00052\u0006\u0010N\u001a\u00020\u00058F@FX\u0086\u000e\u00a2\u0006\u0010\u001a\u0006\u0008\u00fb\u0001\u0010\u00f8\u0001\"\u0006\u0008\u00fc\u0001\u0010\u00fa\u0001R\u0014\u0010\u00fe\u0001\u001a\u00020\u000e8F\u00a2\u0006\u0008\u001a\u0006\u0008\u00fe\u0001\u0010\u009b\u0001R*\u0010\u0080\u0002\u001a\u00020\u000e2\u0007\u0010\u00ff\u0001\u001a\u00020\u000e8F@FX\u0086\u000e\u00a2\u0006\u0010\u001a\u0006\u0008\u0080\u0002\u0010\u009b\u0001\"\u0006\u0008\u0081\u0002\u0010\u009d\u0001R*\u0010\u0083\u0002\u001a\u00020\u000e2\u0007\u0010\u0082\u0002\u001a\u00020\u000e8F@FX\u0086\u000e\u00a2\u0006\u0010\u001a\u0006\u0008\u0083\u0002\u0010\u009b\u0001\"\u0006\u0008\u0084\u0002\u0010\u009d\u0001R0\u0010\u0086\u0002\u001a\u0005\u0018\u00010\u0085\u00022\n\u0010\u0086\u0002\u001a\u0005\u0018\u00010\u0085\u00028F@FX\u0086\u000e\u00a2\u0006\u0010\u001a\u0006\u0008\u0087\u0002\u0010\u0088\u0002\"\u0006\u0008\u0089\u0002\u0010\u008a\u0002R!\u0010\u008e\u0002\u001a\u000f\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u008b\u00028F\u00a2\u0006\u0008\u001a\u0006\u0008\u008c\u0002\u0010\u008d\u0002R*\u0010\u0090\u0002\u001a\u00020\u000e2\u0007\u0010\u008f\u0002\u001a\u00020\u000e8F@FX\u0086\u000e\u00a2\u0006\u0010\u001a\u0006\u0008\u0090\u0002\u0010\u009b\u0001\"\u0006\u0008\u0091\u0002\u0010\u009d\u0001R*\u0010\u0093\u0002\u001a\u00020\u000e2\u0007\u0010\u0092\u0002\u001a\u00020\u000e8F@FX\u0086\u000e\u00a2\u0006\u0010\u001a\u0006\u0008\u0093\u0002\u0010\u009b\u0001\"\u0006\u0008\u0094\u0002\u0010\u009d\u0001R*\u0010\u0096\u0002\u001a\u00020\u000e2\u0007\u0010\u0095\u0002\u001a\u00020\u000e8F@FX\u0086\u000e\u00a2\u0006\u0010\u001a\u0006\u0008\u0096\u0002\u0010\u009b\u0001\"\u0006\u0008\u0097\u0002\u0010\u009d\u0001R,\u0010\u0098\u0002\u001a\u00030\u00a3\u00012\u0008\u0010\u0098\u0002\u001a\u00030\u00a3\u00018F@FX\u0086\u000e\u00a2\u0006\u0010\u001a\u0006\u0008\u0099\u0002\u0010\u009a\u0002\"\u0006\u0008\u009b\u0002\u0010\u009c\u0002R*\u0010\u00a2\u0002\u001a\u00020\u00122\u0007\u0010\u009d\u0002\u001a\u00020\u00128F@FX\u0086\u000e\u00a2\u0006\u0010\u001a\u0006\u0008\u009e\u0002\u0010\u009f\u0002\"\u0006\u0008\u00a0\u0002\u0010\u00a1\u0002R*\u0010\u00a3\u0002\u001a\u00020\u00052\u0007\u0010\u00a3\u0002\u001a\u00020\u00058F@FX\u0086\u000e\u00a2\u0006\u0010\u001a\u0006\u0008\u00a4\u0002\u0010\u00f8\u0001\"\u0006\u0008\u00a5\u0002\u0010\u00fa\u0001R)\u0010\u0006\u001a\u00020\u00052\u0007\u0010\u00a6\u0002\u001a\u00020\u00058F@FX\u0086\u000e\u00a2\u0006\u0010\u001a\u0006\u0008\u00a7\u0002\u0010\u00f8\u0001\"\u0006\u0008\u00a8\u0002\u0010\u00fa\u0001R\u0017\u0010\u00ac\u0002\u001a\u0005\u0018\u00010\u00a9\u00028F\u00a2\u0006\u0008\u001a\u0006\u0008\u00aa\u0002\u0010\u00ab\u0002R0\u0010\u00b1\u0002\u001a\u0005\u0018\u00010\u00a9\u00022\n\u0010\u00ad\u0002\u001a\u0005\u0018\u00010\u00a9\u00028F@FX\u0086\u000e\u00a2\u0006\u0010\u001a\u0006\u0008\u00ae\u0002\u0010\u00ab\u0002\"\u0006\u0008\u00af\u0002\u0010\u00b0\u0002R\u0017\u0010\u00b4\u0002\u001a\u0005\u0018\u00010\u00ce\u00018F\u00a2\u0006\u0008\u001a\u0006\u0008\u00b2\u0002\u0010\u00b3\u0002R\u0014\u0010\u00b7\u0002\u001a\u00020{8F\u00a2\u0006\u0008\u001a\u0006\u0008\u00b5\u0002\u0010\u00b6\u0002R!\u0010\u00bb\u0002\u001a\u0004\u0018\u00010\u00038GX\u0087\u0004\u00a2\u0006\u0010\u0012\u0006\u0008\u00ba\u0002\u0010\u009f\u0001\u001a\u0006\u0008\u00b8\u0002\u0010\u00b9\u0002\u00a8\u0006\u00ce\u0002"
    }
    d2 = {
        "Lcom/canhub/cropper/CropImageView;",
        "Landroid/widget/FrameLayout;",
        "Lcom/canhub/cropper/CropOverlayView$CropWindowChangeListener;",
        "Landroid/graphics/Bitmap;",
        "bitmap",
        "",
        "imageResource",
        "Landroid/net/Uri;",
        "imageUri",
        "loadSampleSize",
        "degreesRotated",
        "",
        "e",
        "b",
        "",
        "inProgress",
        "animate",
        "c",
        "",
        "width",
        "height",
        "center",
        "a",
        "d",
        "f",
        "g",
        "clear",
        "h",
        "multiTouchEnabled",
        "setMultiTouchEnabled",
        "centerMoveEnabled",
        "setCenterMoveEnabled",
        "minCropResultWidth",
        "minCropResultHeight",
        "setMinCropResultSize",
        "maxCropResultWidth",
        "maxCropResultHeight",
        "setMaxCropResultSize",
        "fixAspectRatio",
        "setFixedAspectRatio",
        "aspectRatioX",
        "aspectRatioY",
        "setAspectRatio",
        "Lcom/canhub/cropper/CropImageOptions;",
        "options",
        "setImageCropOptions",
        "clearAspectRatio",
        "snapRadius",
        "setSnapRadius",
        "Landroid/util/Size;",
        "expectedImageSize",
        "resetCropRect",
        "reqWidth",
        "reqHeight",
        "Lcom/canhub/cropper/CropImageView$RequestSizeOptions;",
        "getCroppedImage",
        "Landroid/graphics/Bitmap$CompressFormat;",
        "saveCompressFormat",
        "saveCompressQuality",
        "customOutputUri",
        "croppedImageAsync",
        "Lcom/canhub/cropper/CropImageView$OnSetCropOverlayReleasedListener;",
        "listener",
        "setOnSetCropOverlayReleasedListener",
        "Lcom/canhub/cropper/CropImageView$OnSetCropOverlayMovedListener;",
        "setOnSetCropOverlayMovedListener",
        "Lcom/canhub/cropper/CropImageView$OnSetCropWindowChangeListener;",
        "setOnCropWindowChangedListener",
        "Lcom/canhub/cropper/CropImageView$OnSetImageUriCompleteListener;",
        "setOnSetImageUriCompleteListener",
        "Lcom/canhub/cropper/CropImageView$OnCropImageCompleteListener;",
        "setOnCropImageCompleteListener",
        "setImageBitmap",
        "Landroidx/exifinterface/media/ExifInterface;",
        "exif",
        "uri",
        "setImageUriAsync",
        "clearImage",
        "degrees",
        "rotateImage",
        "flipImageHorizontally",
        "flipImageVertically",
        "Lcom/canhub/cropper/BitmapLoadingWorkerJob$Result;",
        "result",
        "onSetImageUriAsyncComplete$cropper_release",
        "(Lcom/canhub/cropper/BitmapLoadingWorkerJob$Result;)V",
        "onSetImageUriAsyncComplete",
        "Lcom/canhub/cropper/BitmapCroppingWorkerJob$Result;",
        "onImageCroppingAsyncComplete$cropper_release",
        "(Lcom/canhub/cropper/BitmapCroppingWorkerJob$Result;)V",
        "onImageCroppingAsyncComplete",
        "startCropWorkerTask",
        "Landroid/os/Parcelable;",
        "onSaveInstanceState",
        "state",
        "onRestoreInstanceState",
        "widthMeasureSpec",
        "heightMeasureSpec",
        "onMeasure",
        "changed",
        "l",
        "t",
        "r",
        "onLayout",
        "w",
        "oldw",
        "oldh",
        "onSizeChanged",
        "onCropWindowChanged",
        "Landroid/widget/ImageView;",
        "Landroid/widget/ImageView;",
        "imageView",
        "Lcom/canhub/cropper/CropOverlayView;",
        "Lcom/canhub/cropper/CropOverlayView;",
        "mCropOverlayView",
        "Landroid/graphics/Matrix;",
        "Landroid/graphics/Matrix;",
        "mImageMatrix",
        "mImageInverseMatrix",
        "Landroid/widget/ProgressBar;",
        "i",
        "Landroid/widget/ProgressBar;",
        "mProgressBar",
        "",
        "j",
        "[F",
        "mImagePoints",
        "k",
        "mScaleImagePoints",
        "Lcom/canhub/cropper/CropImageAnimation;",
        "Lcom/canhub/cropper/CropImageAnimation;",
        "mAnimation",
        "m",
        "Landroid/graphics/Bitmap;",
        "originalBitmap",
        "n",
        "I",
        "mInitialDegreesRotated",
        "o",
        "mDegreesRotated",
        "p",
        "Z",
        "mFlipHorizontally",
        "q",
        "mFlipVertically",
        "mLayoutWidth",
        "s",
        "mLayoutHeight",
        "mImageResource",
        "Lcom/canhub/cropper/CropImageView$ScaleType;",
        "u",
        "Lcom/canhub/cropper/CropImageView$ScaleType;",
        "mScaleType",
        "v",
        "isSaveBitmapToInstanceState",
        "()Z",
        "setSaveBitmapToInstanceState",
        "(Z)V",
        "isSaveBitmapToInstanceState$annotations",
        "()V",
        "mShowCropOverlay",
        "x",
        "mShowCropLabel",
        "",
        "y",
        "Ljava/lang/String;",
        "mCropTextLabel",
        "z",
        "F",
        "mCropLabelTextSize",
        "J",
        "mCropLabelTextColor",
        "O",
        "mShowProgressBar",
        "Q",
        "mAutoZoomEnabled",
        "k0",
        "mMaxZoom",
        "q0",
        "Lcom/canhub/cropper/CropImageView$OnSetCropOverlayReleasedListener;",
        "mOnCropOverlayReleasedListener",
        "t0",
        "Lcom/canhub/cropper/CropImageView$OnSetCropOverlayMovedListener;",
        "mOnSetCropOverlayMovedListener",
        "u0",
        "Lcom/canhub/cropper/CropImageView$OnSetCropWindowChangeListener;",
        "mOnSetCropWindowChangeListener",
        "v0",
        "Lcom/canhub/cropper/CropImageView$OnSetImageUriCompleteListener;",
        "mOnSetImageUriCompleteListener",
        "w0",
        "Lcom/canhub/cropper/CropImageView$OnCropImageCompleteListener;",
        "mOnCropImageCompleteListener",
        "<set-?>",
        "x0",
        "Landroid/net/Uri;",
        "getImageUri",
        "()Landroid/net/Uri;",
        "y0",
        "loadedSampleSize",
        "z0",
        "mZoom",
        "A0",
        "mZoomOffsetX",
        "B0",
        "mZoomOffsetY",
        "Landroid/graphics/RectF;",
        "C0",
        "Landroid/graphics/RectF;",
        "mRestoreCropWindowRect",
        "D0",
        "mRestoreDegreesRotated",
        "E0",
        "mSizeChanged",
        "Ljava/lang/ref/WeakReference;",
        "Lcom/canhub/cropper/BitmapLoadingWorkerJob;",
        "F0",
        "Ljava/lang/ref/WeakReference;",
        "bitmapLoadingWorkerJob",
        "Lcom/canhub/cropper/BitmapCroppingWorkerJob;",
        "G0",
        "bitmapCroppingWorkerJob",
        "H0",
        "getCustomOutputUri",
        "setCustomOutputUri",
        "(Landroid/net/Uri;)V",
        "scaleType",
        "getScaleType",
        "()Lcom/canhub/cropper/CropImageView$ScaleType;",
        "setScaleType",
        "(Lcom/canhub/cropper/CropImageView$ScaleType;)V",
        "Lcom/canhub/cropper/CropImageView$CropShape;",
        "cropShape",
        "getCropShape",
        "()Lcom/canhub/cropper/CropImageView$CropShape;",
        "setCropShape",
        "(Lcom/canhub/cropper/CropImageView$CropShape;)V",
        "Lcom/canhub/cropper/CropImageView$CropCornerShape;",
        "cornerShape",
        "getCornerShape",
        "()Lcom/canhub/cropper/CropImageView$CropCornerShape;",
        "setCornerShape",
        "(Lcom/canhub/cropper/CropImageView$CropCornerShape;)V",
        "autoZoomEnabled",
        "isAutoZoomEnabled",
        "setAutoZoomEnabled",
        "maxZoom",
        "getMaxZoom",
        "()I",
        "setMaxZoom",
        "(I)V",
        "getRotatedDegrees",
        "setRotatedDegrees",
        "rotatedDegrees",
        "isFixAspectRatio",
        "flipHorizontally",
        "isFlippedHorizontally",
        "setFlippedHorizontally",
        "flipVertically",
        "isFlippedVertically",
        "setFlippedVertically",
        "Lcom/canhub/cropper/CropImageView$Guidelines;",
        "guidelines",
        "getGuidelines",
        "()Lcom/canhub/cropper/CropImageView$Guidelines;",
        "setGuidelines",
        "(Lcom/canhub/cropper/CropImageView$Guidelines;)V",
        "Landroid/util/Pair;",
        "getAspectRatio",
        "()Landroid/util/Pair;",
        "aspectRatio",
        "showProgressBar",
        "isShowProgressBar",
        "setShowProgressBar",
        "showCropOverlay",
        "isShowCropOverlay",
        "setShowCropOverlay",
        "showCropLabel",
        "isShowCropLabel",
        "setShowCropLabel",
        "cropLabelText",
        "getCropLabelText",
        "()Ljava/lang/String;",
        "setCropLabelText",
        "(Ljava/lang/String;)V",
        "textSize",
        "getCropLabelTextSize",
        "()F",
        "setCropLabelTextSize",
        "(F)V",
        "cropLabelTextSize",
        "cropLabelTextColor",
        "getCropLabelTextColor",
        "setCropLabelTextColor",
        "resId",
        "getImageResource",
        "setImageResource",
        "Landroid/graphics/Rect;",
        "getWholeImageRect",
        "()Landroid/graphics/Rect;",
        "wholeImageRect",
        "rect",
        "getCropRect",
        "setCropRect",
        "(Landroid/graphics/Rect;)V",
        "cropRect",
        "getCropWindowRect",
        "()Landroid/graphics/RectF;",
        "cropWindowRect",
        "getCropPoints",
        "()[F",
        "cropPoints",
        "-croppedImage",
        "()Landroid/graphics/Bitmap;",
        "-croppedImage$annotations",
        "croppedImage",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "Companion",
        "CropCornerShape",
        "CropResult",
        "CropShape",
        "Guidelines",
        "OnCropImageCompleteListener",
        "OnSetCropOverlayMovedListener",
        "OnSetCropOverlayReleasedListener",
        "OnSetCropWindowChangeListener",
        "OnSetImageUriCompleteListener",
        "RequestSizeOptions",
        "ScaleType",
        "cropper_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# static fields
.field public static final Companion:Lcom/canhub/cropper/CropImageView$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public A0:F

.field public B0:F

.field public C0:Landroid/graphics/RectF;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public D0:I

.field public E0:Z

.field public F0:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/canhub/cropper/BitmapLoadingWorkerJob;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public G0:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/canhub/cropper/BitmapCroppingWorkerJob;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public H0:Landroid/net/Uri;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public J:I

.field public O:Z

.field public Q:Z

.field public final e:Landroid/widget/ImageView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final f:Lcom/canhub/cropper/CropOverlayView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final g:Landroid/graphics/Matrix;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final h:Landroid/graphics/Matrix;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final i:Landroid/widget/ProgressBar;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final j:[F
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final k:[F
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public k0:I

.field public l:Lcom/canhub/cropper/CropImageAnimation;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public m:Landroid/graphics/Bitmap;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public n:I

.field public o:I

.field public p:Z

.field public q:Z

.field public q0:Lcom/canhub/cropper/CropImageView$OnSetCropOverlayReleasedListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public r:I

.field public s:I

.field public t:I

.field public t0:Lcom/canhub/cropper/CropImageView$OnSetCropOverlayMovedListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public u:Lcom/canhub/cropper/CropImageView$ScaleType;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public u0:Lcom/canhub/cropper/CropImageView$OnSetCropWindowChangeListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public v:Z

.field public v0:Lcom/canhub/cropper/CropImageView$OnSetImageUriCompleteListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public w:Z

.field public w0:Lcom/canhub/cropper/CropImageView$OnCropImageCompleteListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public x:Z

.field public x0:Landroid/net/Uri;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public y:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public y0:I

.field public z:F

.field public z0:F


# direct methods
.method public static synthetic -croppedImage$annotations()V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "Please use getCroppedImage"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "getCroppedImage()"
            imports = {}
        .end subannotation
    .end annotation

    return-void
.end method

.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/canhub/cropper/CropImageView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/canhub/cropper/CropImageView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/canhub/cropper/CropImageView;->Companion:Lcom/canhub/cropper/CropImageView$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, v0}, Lcom/canhub/cropper/CropImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 83
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "context"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct/range {p0 .. p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    iput-object v3, v0, Lcom/canhub/cropper/CropImageView;->g:Landroid/graphics/Matrix;

    .line 5
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    iput-object v3, v0, Lcom/canhub/cropper/CropImageView;->h:Landroid/graphics/Matrix;

    const/16 v3, 0x8

    new-array v4, v3, [F

    .line 6
    iput-object v4, v0, Lcom/canhub/cropper/CropImageView;->j:[F

    new-array v3, v3, [F

    .line 7
    iput-object v3, v0, Lcom/canhub/cropper/CropImageView;->k:[F

    const/4 v3, 0x1

    .line 8
    iput-boolean v3, v0, Lcom/canhub/cropper/CropImageView;->w:Z

    const-string v4, ""

    .line 9
    iput-object v4, v0, Lcom/canhub/cropper/CropImageView;->y:Ljava/lang/String;

    const/high16 v4, 0x41a00000    # 20.0f

    .line 10
    iput v4, v0, Lcom/canhub/cropper/CropImageView;->z:F

    const/4 v4, -0x1

    .line 11
    iput v4, v0, Lcom/canhub/cropper/CropImageView;->J:I

    .line 12
    iput-boolean v3, v0, Lcom/canhub/cropper/CropImageView;->O:Z

    .line 13
    iput-boolean v3, v0, Lcom/canhub/cropper/CropImageView;->Q:Z

    .line 14
    iput v3, v0, Lcom/canhub/cropper/CropImageView;->y0:I

    const/high16 v4, 0x3f800000    # 1.0f

    .line 15
    iput v4, v0, Lcom/canhub/cropper/CropImageView;->z0:F

    .line 16
    instance-of v4, v1, Landroid/app/Activity;

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    move-object v4, v1

    check-cast v4, Landroid/app/Activity;

    goto :goto_0

    :cond_0
    move-object v4, v5

    :goto_0
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    if-eqz v4, :cond_2

    const-string v6, "CROP_IMAGE_EXTRA_BUNDLE"

    invoke-virtual {v4, v6}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_2

    const-string v6, "CROP_IMAGE_EXTRA_OPTIONS"

    .line 17
    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    instance-of v6, v4, Lcom/canhub/cropper/CropImageOptions;

    if-nez v6, :cond_1

    goto :goto_1

    :cond_1
    move-object v5, v4

    :goto_1
    check-cast v5, Lcom/canhub/cropper/CropImageOptions;

    if-nez v5, :cond_6

    :cond_2
    if-eqz v2, :cond_5

    .line 18
    sget-object v4, Lcom/canhub/cropper/R$styleable;->CropImageView:[I

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v4, v5, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    const-string v4, "context.obtainStyledAttr\u2026able.CropImageView, 0, 0)"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    new-instance v4, Lcom/canhub/cropper/CropImageOptions;

    move-object v6, v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    const/16 v47, 0x0

    const/16 v48, 0x0

    const/16 v49, 0x0

    const/16 v50, 0x0

    const/16 v51, 0x0

    const/16 v52, 0x0

    const/16 v53, 0x0

    const/16 v54, 0x0

    const/16 v55, 0x0

    const/16 v56, 0x0

    const/16 v57, 0x0

    const/16 v58, 0x0

    const/16 v59, 0x0

    const/16 v60, 0x0

    const/16 v61, 0x0

    const/16 v62, 0x0

    const/16 v63, 0x0

    const/16 v64, 0x0

    const/16 v65, 0x0

    const/16 v66, 0x0

    const/16 v67, 0x0

    const/16 v68, 0x0

    const/16 v69, 0x0

    const/16 v70, 0x0

    const/16 v71, 0x0

    const/16 v72, 0x0

    const/16 v73, 0x0

    const/16 v74, 0x0

    const/16 v75, 0x0

    const/16 v76, -0x1

    const/16 v77, -0x1

    const/16 v78, 0x1f

    const/16 v79, 0x0

    invoke-direct/range {v6 .. v79}, Lcom/canhub/cropper/CropImageOptions;-><init>(ZZLcom/canhub/cropper/CropImageView$CropShape;Lcom/canhub/cropper/CropImageView$CropCornerShape;FFFLcom/canhub/cropper/CropImageView$Guidelines;Lcom/canhub/cropper/CropImageView$ScaleType;ZZZIZZZIFZIIFIFFFIIFIIIIIIIILjava/lang/CharSequence;ILjava/lang/Integer;Landroid/net/Uri;Landroid/graphics/Bitmap$CompressFormat;IIILcom/canhub/cropper/CropImageView$RequestSizeOptions;ZLandroid/graphics/Rect;IZZZIZZLjava/lang/CharSequence;IZZLjava/lang/String;Ljava/util/List;FILjava/lang/String;ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 20
    :try_start_0
    sget v6, Lcom/canhub/cropper/R$styleable;->CropImageView_cropSaveBitmapToInstanceState:I

    iget-boolean v7, v0, Lcom/canhub/cropper/CropImageView;->v:Z

    invoke-virtual {v2, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, v0, Lcom/canhub/cropper/CropImageView;->v:Z

    .line 21
    invoke-static {}, Lcom/canhub/cropper/CropImageView$ScaleType;->values()[Lcom/canhub/cropper/CropImageView$ScaleType;

    move-result-object v6

    sget v7, Lcom/canhub/cropper/R$styleable;->CropImageView_cropScaleType:I

    iget-object v8, v4, Lcom/canhub/cropper/CropImageOptions;->scaleType:Lcom/canhub/cropper/CropImageView$ScaleType;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    invoke-virtual {v2, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    aget-object v17, v6, v7

    .line 22
    invoke-static {}, Lcom/canhub/cropper/CropImageView$CropShape;->values()[Lcom/canhub/cropper/CropImageView$CropShape;

    move-result-object v6

    sget v7, Lcom/canhub/cropper/R$styleable;->CropImageView_cropShape:I

    iget-object v8, v4, Lcom/canhub/cropper/CropImageOptions;->cropShape:Lcom/canhub/cropper/CropImageView$CropShape;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    invoke-virtual {v2, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    aget-object v11, v6, v7

    .line 23
    invoke-static {}, Lcom/canhub/cropper/CropImageView$CropCornerShape;->values()[Lcom/canhub/cropper/CropImageView$CropCornerShape;

    move-result-object v6

    sget v7, Lcom/canhub/cropper/R$styleable;->CropImageView_cornerShape:I

    iget-object v8, v4, Lcom/canhub/cropper/CropImageOptions;->cornerShape:Lcom/canhub/cropper/CropImageView$CropCornerShape;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    invoke-virtual {v2, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    aget-object v12, v6, v7

    .line 24
    invoke-static {}, Lcom/canhub/cropper/CropImageView$Guidelines;->values()[Lcom/canhub/cropper/CropImageView$Guidelines;

    move-result-object v6

    sget v7, Lcom/canhub/cropper/R$styleable;->CropImageView_cropGuidelines:I

    iget-object v8, v4, Lcom/canhub/cropper/CropImageOptions;->guidelines:Lcom/canhub/cropper/CropImageView$Guidelines;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    invoke-virtual {v2, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    aget-object v16, v6, v7

    .line 25
    sget v6, Lcom/canhub/cropper/R$styleable;->CropImageView_cropAspectRatioX:I

    iget v7, v4, Lcom/canhub/cropper/CropImageOptions;->aspectRatioX:I

    invoke-virtual {v2, v6, v7}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v28

    .line 26
    sget v6, Lcom/canhub/cropper/R$styleable;->CropImageView_cropAspectRatioY:I

    iget v7, v4, Lcom/canhub/cropper/CropImageOptions;->aspectRatioY:I

    invoke-virtual {v2, v6, v7}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v29

    .line 27
    sget v6, Lcom/canhub/cropper/R$styleable;->CropImageView_cropAutoZoomEnabled:I

    iget-boolean v7, v4, Lcom/canhub/cropper/CropImageOptions;->autoZoomEnabled:Z

    invoke-virtual {v2, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v22

    .line 28
    sget v6, Lcom/canhub/cropper/R$styleable;->CropImageView_cropMultiTouchEnabled:I

    iget-boolean v7, v4, Lcom/canhub/cropper/CropImageOptions;->multiTouchEnabled:Z

    invoke-virtual {v2, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v23

    .line 29
    sget v6, Lcom/canhub/cropper/R$styleable;->CropImageView_cropCenterMoveEnabled:I

    iget-boolean v7, v4, Lcom/canhub/cropper/CropImageOptions;->centerMoveEnabled:Z

    invoke-virtual {v2, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v24

    .line 30
    sget v6, Lcom/canhub/cropper/R$styleable;->CropImageView_cropCornerRadius:I

    iget v7, v4, Lcom/canhub/cropper/CropImageOptions;->cropCornerRadius:F

    invoke-virtual {v2, v6, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v13

    .line 31
    sget v6, Lcom/canhub/cropper/R$styleable;->CropImageView_cropSnapRadius:I

    iget v7, v4, Lcom/canhub/cropper/CropImageOptions;->snapRadius:F

    invoke-virtual {v2, v6, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v14

    .line 32
    sget v6, Lcom/canhub/cropper/R$styleable;->CropImageView_cropTouchRadius:I

    iget v7, v4, Lcom/canhub/cropper/CropImageOptions;->touchRadius:F

    invoke-virtual {v2, v6, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v15

    .line 33
    sget v6, Lcom/canhub/cropper/R$styleable;->CropImageView_cropInitialCropWindowPaddingRatio:I

    iget v7, v4, Lcom/canhub/cropper/CropImageOptions;->initialCropWindowPaddingRatio:F

    invoke-virtual {v2, v6, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v26

    .line 34
    sget v6, Lcom/canhub/cropper/R$styleable;->CropImageView_cropCornerCircleFillColor:I

    iget v7, v4, Lcom/canhub/cropper/CropImageOptions;->circleCornerFillColorHexValue:I

    invoke-virtual {v2, v6, v7}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v36

    .line 35
    sget v6, Lcom/canhub/cropper/R$styleable;->CropImageView_cropBorderLineThickness:I

    iget v7, v4, Lcom/canhub/cropper/CropImageOptions;->borderLineThickness:F

    invoke-virtual {v2, v6, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v30

    .line 36
    sget v6, Lcom/canhub/cropper/R$styleable;->CropImageView_cropBorderLineColor:I

    iget v7, v4, Lcom/canhub/cropper/CropImageOptions;->borderLineColor:I

    invoke-virtual {v2, v6, v7}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v31

    .line 37
    sget v6, Lcom/canhub/cropper/R$styleable;->CropImageView_cropBorderCornerThickness:I

    iget v7, v4, Lcom/canhub/cropper/CropImageOptions;->borderCornerThickness:F

    invoke-virtual {v2, v6, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v32

    .line 38
    sget v6, Lcom/canhub/cropper/R$styleable;->CropImageView_cropBorderCornerOffset:I

    iget v7, v4, Lcom/canhub/cropper/CropImageOptions;->borderCornerOffset:F

    invoke-virtual {v2, v6, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v33

    .line 39
    sget v6, Lcom/canhub/cropper/R$styleable;->CropImageView_cropBorderCornerLength:I

    iget v7, v4, Lcom/canhub/cropper/CropImageOptions;->borderCornerLength:F

    invoke-virtual {v2, v6, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v34

    .line 40
    sget v6, Lcom/canhub/cropper/R$styleable;->CropImageView_cropBorderCornerColor:I

    iget v7, v4, Lcom/canhub/cropper/CropImageOptions;->borderCornerColor:I

    invoke-virtual {v2, v6, v7}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v35

    .line 41
    sget v6, Lcom/canhub/cropper/R$styleable;->CropImageView_cropGuidelinesThickness:I

    iget v7, v4, Lcom/canhub/cropper/CropImageOptions;->guidelinesThickness:F

    invoke-virtual {v2, v6, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v37

    .line 42
    sget v6, Lcom/canhub/cropper/R$styleable;->CropImageView_cropGuidelinesColor:I

    iget v7, v4, Lcom/canhub/cropper/CropImageOptions;->guidelinesColor:I

    invoke-virtual {v2, v6, v7}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v38

    .line 43
    sget v6, Lcom/canhub/cropper/R$styleable;->CropImageView_cropBackgroundColor:I

    iget v7, v4, Lcom/canhub/cropper/CropImageOptions;->backgroundColor:I

    invoke-virtual {v2, v6, v7}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v39

    .line 44
    sget v6, Lcom/canhub/cropper/R$styleable;->CropImageView_cropMinCropWindowWidth:I

    iget v7, v4, Lcom/canhub/cropper/CropImageOptions;->minCropWindowWidth:I

    int-to-float v7, v7

    invoke-virtual {v2, v6, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v6

    float-to-int v6, v6

    .line 45
    sget v7, Lcom/canhub/cropper/R$styleable;->CropImageView_cropMinCropWindowHeight:I

    iget v8, v4, Lcom/canhub/cropper/CropImageOptions;->minCropWindowHeight:I

    int-to-float v8, v8

    invoke-virtual {v2, v7, v8}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    float-to-int v7, v7

    .line 46
    sget v8, Lcom/canhub/cropper/R$styleable;->CropImageView_cropMinCropResultWidthPX:I

    iget v9, v4, Lcom/canhub/cropper/CropImageOptions;->minCropResultWidth:I

    int-to-float v9, v9

    invoke-virtual {v2, v8, v9}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v8

    float-to-int v8, v8

    .line 47
    sget v9, Lcom/canhub/cropper/R$styleable;->CropImageView_cropMinCropResultHeightPX:I

    iget v10, v4, Lcom/canhub/cropper/CropImageOptions;->minCropResultHeight:I

    int-to-float v10, v10

    invoke-virtual {v2, v9, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v9

    float-to-int v10, v9

    .line 48
    sget v9, Lcom/canhub/cropper/R$styleable;->CropImageView_cropMaxCropResultWidthPX:I

    iget v5, v4, Lcom/canhub/cropper/CropImageOptions;->maxCropResultWidth:I

    int-to-float v5, v5

    invoke-virtual {v2, v9, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    float-to-int v5, v5

    .line 49
    sget v9, Lcom/canhub/cropper/R$styleable;->CropImageView_cropMaxCropResultHeightPX:I

    iget v3, v4, Lcom/canhub/cropper/CropImageOptions;->maxCropResultHeight:I

    int-to-float v3, v3

    invoke-virtual {v2, v9, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    float-to-int v3, v3

    .line 50
    sget v9, Lcom/canhub/cropper/R$styleable;->CropImageView_cropFlipHorizontally:I

    iget-boolean v1, v4, Lcom/canhub/cropper/CropImageOptions;->flipHorizontally:Z

    invoke-virtual {v2, v9, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v62

    .line 51
    sget v1, Lcom/canhub/cropper/R$styleable;->CropImageView_cropFlipHorizontally:I

    iget-boolean v9, v4, Lcom/canhub/cropper/CropImageOptions;->flipVertically:Z

    invoke-virtual {v2, v1, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v63

    .line 52
    sget v1, Lcom/canhub/cropper/R$styleable;->CropImageView_cropperLabelTextSize:I

    iget v9, v4, Lcom/canhub/cropper/CropImageOptions;->cropperLabelTextSize:F

    invoke-virtual {v2, v1, v9}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v70

    .line 53
    sget v1, Lcom/canhub/cropper/R$styleable;->CropImageView_cropperLabelTextColor:I

    iget v9, v4, Lcom/canhub/cropper/CropImageOptions;->cropperLabelTextColor:I

    invoke-virtual {v2, v1, v9}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v71

    .line 54
    sget v1, Lcom/canhub/cropper/R$styleable;->CropImageView_cropShowLabel:I

    iget-boolean v9, v4, Lcom/canhub/cropper/CropImageOptions;->showCropLabel:Z

    invoke-virtual {v2, v1, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v19

    .line 55
    sget v1, Lcom/canhub/cropper/R$styleable;->CropImageView_cropMaxZoom:I

    iget v9, v4, Lcom/canhub/cropper/CropImageOptions;->maxZoom:I

    invoke-virtual {v2, v1, v9}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v25

    .line 56
    sget v1, Lcom/canhub/cropper/R$styleable;->CropImageView_cropShowCropOverlay:I

    iget-boolean v9, v4, Lcom/canhub/cropper/CropImageOptions;->showCropOverlay:Z

    invoke-virtual {v2, v1, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 57
    sget v9, Lcom/canhub/cropper/R$styleable;->CropImageView_cropShowProgressBar:I

    move/from16 v20, v8

    iget-boolean v8, v4, Lcom/canhub/cropper/CropImageOptions;->showProgressBar:Z

    invoke-virtual {v2, v9, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v27

    .line 58
    sget v8, Lcom/canhub/cropper/R$styleable;->CropImageView_cropperLabelText:I

    invoke-virtual {v2, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v72

    .line 59
    sget v8, Lcom/canhub/cropper/R$styleable;->CropImageView_cropFixAspectRatio:I

    iget-boolean v4, v4, Lcom/canhub/cropper/CropImageOptions;->fixAspectRatio:Z

    invoke-virtual {v2, v8, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-nez v4, :cond_4

    sget v4, Lcom/canhub/cropper/R$styleable;->CropImageView_cropAspectRatioX:I

    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_3

    sget v4, Lcom/canhub/cropper/R$styleable;->CropImageView_cropAspectRatioX:I

    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v4, 0x1

    .line 60
    :goto_3
    new-instance v82, Lcom/canhub/cropper/CropImageOptions;

    const/4 v9, 0x0

    const/4 v8, 0x0

    move/from16 v43, v10

    move v10, v8

    const/16 v21, 0x0

    const/16 v46, 0x0

    const/16 v47, 0x0

    const/16 v48, 0x0

    const/16 v49, 0x0

    const/16 v50, 0x0

    const/16 v51, 0x0

    const/16 v52, 0x0

    const/16 v53, 0x0

    const/16 v54, 0x0

    const/16 v55, 0x0

    const/16 v56, 0x0

    const/16 v57, 0x0

    const/16 v58, 0x0

    const/16 v59, 0x0

    const/16 v60, 0x0

    const/16 v61, 0x0

    const/16 v64, 0x0

    const/16 v65, 0x0

    const/16 v66, 0x0

    const/16 v67, 0x0

    const/16 v68, 0x0

    const/16 v69, 0x0

    const/16 v73, 0x0

    const/16 v74, 0x0

    const/16 v75, 0x0

    const/16 v76, 0x0

    const/16 v77, 0x0

    const/16 v78, 0x1003

    const v79, 0x1f9fffe0

    const/16 v80, 0x1f

    const/16 v81, 0x0

    move/from16 v42, v20

    move-object/from16 v8, v82

    move/from16 v18, v1

    move/from16 v20, v27

    move/from16 v27, v4

    move/from16 v40, v6

    move/from16 v41, v7

    move/from16 v44, v5

    move/from16 v45, v3

    invoke-direct/range {v8 .. v81}, Lcom/canhub/cropper/CropImageOptions;-><init>(ZZLcom/canhub/cropper/CropImageView$CropShape;Lcom/canhub/cropper/CropImageView$CropCornerShape;FFFLcom/canhub/cropper/CropImageView$Guidelines;Lcom/canhub/cropper/CropImageView$ScaleType;ZZZIZZZIFZIIFIFFFIIFIIIIIIIILjava/lang/CharSequence;ILjava/lang/Integer;Landroid/net/Uri;Landroid/graphics/Bitmap$CompressFormat;IIILcom/canhub/cropper/CropImageView$RequestSizeOptions;ZLandroid/graphics/Rect;IZZZIZZLjava/lang/CharSequence;IZZLjava/lang/String;Ljava/util/List;FILjava/lang/String;ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    move-object/from16 v5, v82

    goto/16 :goto_4

    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    throw v0

    .line 62
    :cond_5
    new-instance v1, Lcom/canhub/cropper/CropImageOptions;

    move-object v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    const/16 v47, 0x0

    const/16 v48, 0x0

    const/16 v49, 0x0

    const/16 v50, 0x0

    const/16 v51, 0x0

    const/16 v52, 0x0

    const/16 v53, 0x0

    const/16 v54, 0x0

    const/16 v55, 0x0

    const/16 v56, 0x0

    const/16 v57, 0x0

    const/16 v58, 0x0

    const/16 v59, 0x0

    const/16 v60, 0x0

    const/16 v61, 0x0

    const/16 v62, 0x0

    const/16 v63, 0x0

    const/16 v64, 0x0

    const/16 v65, 0x0

    const/16 v66, 0x0

    const/16 v67, 0x0

    const/16 v68, 0x0

    const/16 v69, 0x0

    const/16 v70, 0x0

    const/16 v71, 0x0

    const/16 v72, 0x0

    const/16 v73, -0x1

    const/16 v74, -0x1

    const/16 v75, 0x1f

    const/16 v76, 0x0

    invoke-direct/range {v3 .. v76}, Lcom/canhub/cropper/CropImageOptions;-><init>(ZZLcom/canhub/cropper/CropImageView$CropShape;Lcom/canhub/cropper/CropImageView$CropCornerShape;FFFLcom/canhub/cropper/CropImageView$Guidelines;Lcom/canhub/cropper/CropImageView$ScaleType;ZZZIZZZIFZIIFIFFFIIFIIIIIIIILjava/lang/CharSequence;ILjava/lang/Integer;Landroid/net/Uri;Landroid/graphics/Bitmap$CompressFormat;IIILcom/canhub/cropper/CropImageView$RequestSizeOptions;ZLandroid/graphics/Rect;IZZZIZZLjava/lang/CharSequence;IZZLjava/lang/String;Ljava/util/List;FILjava/lang/String;ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v5, v1

    .line 63
    :cond_6
    :goto_4
    iget-object v1, v5, Lcom/canhub/cropper/CropImageOptions;->scaleType:Lcom/canhub/cropper/CropImageView$ScaleType;

    iput-object v1, v0, Lcom/canhub/cropper/CropImageView;->u:Lcom/canhub/cropper/CropImageView$ScaleType;

    .line 64
    iget-boolean v1, v5, Lcom/canhub/cropper/CropImageOptions;->autoZoomEnabled:Z

    iput-boolean v1, v0, Lcom/canhub/cropper/CropImageView;->Q:Z

    .line 65
    iget v1, v5, Lcom/canhub/cropper/CropImageOptions;->maxZoom:I

    iput v1, v0, Lcom/canhub/cropper/CropImageView;->k0:I

    .line 66
    iget v1, v5, Lcom/canhub/cropper/CropImageOptions;->cropperLabelTextSize:F

    iput v1, v0, Lcom/canhub/cropper/CropImageView;->z:F

    .line 67
    iget-boolean v1, v5, Lcom/canhub/cropper/CropImageOptions;->showCropLabel:Z

    iput-boolean v1, v0, Lcom/canhub/cropper/CropImageView;->x:Z

    .line 68
    iget-boolean v1, v5, Lcom/canhub/cropper/CropImageOptions;->showCropOverlay:Z

    iput-boolean v1, v0, Lcom/canhub/cropper/CropImageView;->w:Z

    .line 69
    iget-boolean v1, v5, Lcom/canhub/cropper/CropImageOptions;->showProgressBar:Z

    iput-boolean v1, v0, Lcom/canhub/cropper/CropImageView;->O:Z

    .line 70
    iget-boolean v1, v5, Lcom/canhub/cropper/CropImageOptions;->flipHorizontally:Z

    iput-boolean v1, v0, Lcom/canhub/cropper/CropImageView;->p:Z

    .line 71
    iget-boolean v1, v5, Lcom/canhub/cropper/CropImageOptions;->flipVertically:Z

    iput-boolean v1, v0, Lcom/canhub/cropper/CropImageView;->q:Z

    .line 72
    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 73
    sget v2, Lcom/canhub/cropper/R$layout;->crop_image_view:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 74
    sget v2, Lcom/canhub/cropper/R$id;->ImageView_image:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const-string v3, "v.findViewById(R.id.ImageView_image)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/canhub/cropper/CropImageView;->e:Landroid/widget/ImageView;

    .line 75
    sget-object v3, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 76
    sget v2, Lcom/canhub/cropper/R$id;->CropOverlayView:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/canhub/cropper/CropOverlayView;

    iput-object v2, v0, Lcom/canhub/cropper/CropImageView;->f:Lcom/canhub/cropper/CropOverlayView;

    .line 77
    invoke-virtual {v2, v0}, Lcom/canhub/cropper/CropOverlayView;->setCropWindowChangeListener(Lcom/canhub/cropper/CropOverlayView$CropWindowChangeListener;)V

    .line 78
    invoke-virtual {v2, v5}, Lcom/canhub/cropper/CropOverlayView;->setInitialAttributeValues(Lcom/canhub/cropper/CropImageOptions;)V

    .line 79
    sget v2, Lcom/canhub/cropper/R$id;->CropProgressBar:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "v.findViewById(R.id.CropProgressBar)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, v0, Lcom/canhub/cropper/CropImageView;->i:Landroid/widget/ProgressBar;

    .line 80
    iget v2, v5, Lcom/canhub/cropper/CropImageOptions;->progressBarColor:I

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setIndeterminateTintList(Landroid/content/res/ColorStateList;)V

    .line 81
    invoke-virtual/range {p0 .. p0}, Lcom/canhub/cropper/CropImageView;->g()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 2
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/canhub/cropper/CropImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static synthetic croppedImageAsync$default(Lcom/canhub/cropper/CropImageView;Landroid/graphics/Bitmap$CompressFormat;IIILcom/canhub/cropper/CropImageView$RequestSizeOptions;Landroid/net/Uri;ILjava/lang/Object;)V
    .locals 4

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    sget-object p1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    const/16 p2, 0x5a

    :cond_1
    move p8, p2

    and-int/lit8 p2, p7, 0x4

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    move v1, v0

    goto :goto_0

    :cond_2
    move v1, p3

    :goto_0
    and-int/lit8 p2, p7, 0x8

    if-eqz p2, :cond_3

    goto :goto_1

    :cond_3
    move v0, p4

    :goto_1
    and-int/lit8 p2, p7, 0x10

    if-eqz p2, :cond_4

    sget-object p5, Lcom/canhub/cropper/CropImageView$RequestSizeOptions;->RESIZE_INSIDE:Lcom/canhub/cropper/CropImageView$RequestSizeOptions;

    :cond_4
    move-object v2, p5

    and-int/lit8 p2, p7, 0x20

    if-eqz p2, :cond_5

    const/4 p6, 0x0

    :cond_5
    move-object v3, p6

    move-object p2, p0

    move-object p3, p1

    move p4, p8

    move p5, v1

    move p6, v0

    move-object p7, v2

    move-object p8, v3

    invoke-virtual/range {p2 .. p8}, Lcom/canhub/cropper/CropImageView;->croppedImageAsync(Landroid/graphics/Bitmap$CompressFormat;IIILcom/canhub/cropper/CropImageView$RequestSizeOptions;Landroid/net/Uri;)V

    return-void
.end method

.method public static synthetic getCroppedImage$default(Lcom/canhub/cropper/CropImageView;IILcom/canhub/cropper/CropImageView$RequestSizeOptions;ILjava/lang/Object;)Landroid/graphics/Bitmap;
    .locals 1

    and-int/lit8 p5, p4, 0x1

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move p1, v0

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    move p2, v0

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    sget-object p3, Lcom/canhub/cropper/CropImageView$RequestSizeOptions;->RESIZE_INSIDE:Lcom/canhub/cropper/CropImageView$RequestSizeOptions;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/canhub/cropper/CropImageView;->getCroppedImage(IILcom/canhub/cropper/CropImageView$RequestSizeOptions;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic isSaveBitmapToInstanceState$annotations()V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "This functionality is deprecated, please remove it altogether or create an issue and explain WHY you need this."
    .end annotation

    return-void
.end method


# virtual methods
.method public final -croppedImage()Landroid/graphics/Bitmap;
    .locals 2
    .annotation build Lkotlin/jvm/JvmName;
        name = "-croppedImage"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const/4 v0, 0x0

    sget-object v1, Lcom/canhub/cropper/CropImageView$RequestSizeOptions;->NONE:Lcom/canhub/cropper/CropImageView$RequestSizeOptions;

    invoke-virtual {p0, v0, v0, v1}, Lcom/canhub/cropper/CropImageView;->getCroppedImage(IILcom/canhub/cropper/CropImageView$RequestSizeOptions;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public final a(FFZZ)V
    .locals 9

    iget-object v0, p0, Lcom/canhub/cropper/CropImageView;->m:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_c

    const/4 v1, 0x0

    cmpl-float v2, p1, v1

    if-lez v2, :cond_c

    cmpl-float v2, p2, v1

    if-lez v2, :cond_c

    iget-object v2, p0, Lcom/canhub/cropper/CropImageView;->g:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/canhub/cropper/CropImageView;->h:Landroid/graphics/Matrix;

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    iget-object v2, p0, Lcom/canhub/cropper/CropImageView;->f:Lcom/canhub/cropper/CropOverlayView;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/canhub/cropper/CropOverlayView;->getCropWindowRect()Landroid/graphics/RectF;

    move-result-object v2

    iget-object v3, p0, Lcom/canhub/cropper/CropImageView;->h:Landroid/graphics/Matrix;

    invoke-virtual {v3, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget-object v3, p0, Lcom/canhub/cropper/CropImageView;->g:Landroid/graphics/Matrix;

    invoke-virtual {v3}, Landroid/graphics/Matrix;->reset()V

    iget-object v3, p0, Lcom/canhub/cropper/CropImageView;->g:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    sub-float v4, p1, v4

    const/4 v5, 0x2

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    sub-float v0, p2, v0

    div-float/2addr v0, v5

    invoke-virtual {v3, v4, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-virtual {p0}, Lcom/canhub/cropper/CropImageView;->d()V

    iget v0, p0, Lcom/canhub/cropper/CropImageView;->o:I

    if-lez v0, :cond_0

    iget-object v3, p0, Lcom/canhub/cropper/CropImageView;->g:Landroid/graphics/Matrix;

    int-to-float v0, v0

    sget-object v4, Lcom/canhub/cropper/BitmapUtils;->INSTANCE:Lcom/canhub/cropper/BitmapUtils;

    iget-object v6, p0, Lcom/canhub/cropper/CropImageView;->j:[F

    invoke-virtual {v4, v6}, Lcom/canhub/cropper/BitmapUtils;->getRectCenterX([F)F

    move-result v6

    iget-object v7, p0, Lcom/canhub/cropper/CropImageView;->j:[F

    invoke-virtual {v4, v7}, Lcom/canhub/cropper/BitmapUtils;->getRectCenterY([F)F

    move-result v4

    invoke-virtual {v3, v0, v6, v4}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    invoke-virtual {p0}, Lcom/canhub/cropper/CropImageView;->d()V

    :cond_0
    sget-object v0, Lcom/canhub/cropper/BitmapUtils;->INSTANCE:Lcom/canhub/cropper/BitmapUtils;

    iget-object v3, p0, Lcom/canhub/cropper/CropImageView;->j:[F

    invoke-virtual {v0, v3}, Lcom/canhub/cropper/BitmapUtils;->getRectWidth([F)F

    move-result v3

    div-float v3, p1, v3

    iget-object v4, p0, Lcom/canhub/cropper/CropImageView;->j:[F

    invoke-virtual {v0, v4}, Lcom/canhub/cropper/BitmapUtils;->getRectHeight([F)F

    move-result v4

    div-float v4, p2, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iget-object v4, p0, Lcom/canhub/cropper/CropImageView;->u:Lcom/canhub/cropper/CropImageView$ScaleType;

    sget-object v6, Lcom/canhub/cropper/CropImageView$ScaleType;->FIT_CENTER:Lcom/canhub/cropper/CropImageView$ScaleType;

    if-eq v4, v6, :cond_3

    sget-object v6, Lcom/canhub/cropper/CropImageView$ScaleType;->CENTER_INSIDE:Lcom/canhub/cropper/CropImageView$ScaleType;

    const/high16 v7, 0x3f800000    # 1.0f

    if-ne v4, v6, :cond_1

    cmpg-float v6, v3, v7

    if-ltz v6, :cond_3

    :cond_1
    cmpl-float v6, v3, v7

    if-lez v6, :cond_2

    iget-boolean v6, p0, Lcom/canhub/cropper/CropImageView;->Q:Z

    if-eqz v6, :cond_2

    goto :goto_0

    :cond_2
    sget-object v3, Lcom/canhub/cropper/CropImageView$ScaleType;->CENTER_CROP:Lcom/canhub/cropper/CropImageView$ScaleType;

    if-ne v4, v3, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/canhub/cropper/CropImageView;->j:[F

    invoke-virtual {v0, v4}, Lcom/canhub/cropper/BitmapUtils;->getRectWidth([F)F

    move-result v4

    div-float/2addr v3, v4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    iget-object v6, p0, Lcom/canhub/cropper/CropImageView;->j:[F

    invoke-virtual {v0, v6}, Lcom/canhub/cropper/BitmapUtils;->getRectHeight([F)F

    move-result v6

    div-float/2addr v4, v6

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iput v3, p0, Lcom/canhub/cropper/CropImageView;->z0:F

    goto :goto_1

    :cond_3
    :goto_0
    iget-object v4, p0, Lcom/canhub/cropper/CropImageView;->g:Landroid/graphics/Matrix;

    iget-object v6, p0, Lcom/canhub/cropper/CropImageView;->j:[F

    invoke-virtual {v0, v6}, Lcom/canhub/cropper/BitmapUtils;->getRectCenterX([F)F

    move-result v6

    iget-object v7, p0, Lcom/canhub/cropper/CropImageView;->j:[F

    invoke-virtual {v0, v7}, Lcom/canhub/cropper/BitmapUtils;->getRectCenterY([F)F

    move-result v7

    invoke-virtual {v4, v3, v3, v6, v7}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    invoke-virtual {p0}, Lcom/canhub/cropper/CropImageView;->d()V

    :cond_4
    :goto_1
    iget-boolean v3, p0, Lcom/canhub/cropper/CropImageView;->p:Z

    if-eqz v3, :cond_5

    iget v3, p0, Lcom/canhub/cropper/CropImageView;->z0:F

    neg-float v3, v3

    goto :goto_2

    :cond_5
    iget v3, p0, Lcom/canhub/cropper/CropImageView;->z0:F

    :goto_2
    iget-boolean v4, p0, Lcom/canhub/cropper/CropImageView;->q:Z

    if-eqz v4, :cond_6

    iget v4, p0, Lcom/canhub/cropper/CropImageView;->z0:F

    neg-float v4, v4

    goto :goto_3

    :cond_6
    iget v4, p0, Lcom/canhub/cropper/CropImageView;->z0:F

    :goto_3
    iget-object v6, p0, Lcom/canhub/cropper/CropImageView;->g:Landroid/graphics/Matrix;

    iget-object v7, p0, Lcom/canhub/cropper/CropImageView;->j:[F

    invoke-virtual {v0, v7}, Lcom/canhub/cropper/BitmapUtils;->getRectCenterX([F)F

    move-result v7

    iget-object v8, p0, Lcom/canhub/cropper/CropImageView;->j:[F

    invoke-virtual {v0, v8}, Lcom/canhub/cropper/BitmapUtils;->getRectCenterY([F)F

    move-result v8

    invoke-virtual {v6, v3, v4, v7, v8}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    invoke-virtual {p0}, Lcom/canhub/cropper/CropImageView;->d()V

    iget-object v6, p0, Lcom/canhub/cropper/CropImageView;->g:Landroid/graphics/Matrix;

    invoke-virtual {v6, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget-object v6, p0, Lcom/canhub/cropper/CropImageView;->u:Lcom/canhub/cropper/CropImageView$ScaleType;

    sget-object v7, Lcom/canhub/cropper/CropImageView$ScaleType;->CENTER_CROP:Lcom/canhub/cropper/CropImageView$ScaleType;

    if-ne v6, v7, :cond_7

    if-eqz p3, :cond_7

    if-nez p4, :cond_7

    iput v1, p0, Lcom/canhub/cropper/CropImageView;->A0:F

    iput v1, p0, Lcom/canhub/cropper/CropImageView;->B0:F

    goto/16 :goto_6

    :cond_7
    if-eqz p3, :cond_a

    iget-object p3, p0, Lcom/canhub/cropper/CropImageView;->j:[F

    invoke-virtual {v0, p3}, Lcom/canhub/cropper/BitmapUtils;->getRectWidth([F)F

    move-result p3

    cmpl-float p3, p1, p3

    if-lez p3, :cond_8

    move p1, v1

    goto :goto_4

    :cond_8
    div-float/2addr p1, v5

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result p3

    sub-float/2addr p1, p3

    iget-object p3, p0, Lcom/canhub/cropper/CropImageView;->j:[F

    invoke-virtual {v0, p3}, Lcom/canhub/cropper/BitmapUtils;->getRectLeft([F)F

    move-result p3

    neg-float p3, p3

    invoke-static {p1, p3}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p3

    int-to-float p3, p3

    iget-object v6, p0, Lcom/canhub/cropper/CropImageView;->j:[F

    invoke-virtual {v0, v6}, Lcom/canhub/cropper/BitmapUtils;->getRectRight([F)F

    move-result v6

    sub-float/2addr p3, v6

    invoke-static {p1, p3}, Ljava/lang/Math;->max(FF)F

    move-result p1

    div-float/2addr p1, v3

    :goto_4
    iput p1, p0, Lcom/canhub/cropper/CropImageView;->A0:F

    iget-object p1, p0, Lcom/canhub/cropper/CropImageView;->j:[F

    invoke-virtual {v0, p1}, Lcom/canhub/cropper/BitmapUtils;->getRectHeight([F)F

    move-result p1

    cmpl-float p1, p2, p1

    if-lez p1, :cond_9

    goto :goto_5

    :cond_9
    div-float/2addr p2, v5

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result p1

    sub-float/2addr p2, p1

    iget-object p1, p0, Lcom/canhub/cropper/CropImageView;->j:[F

    invoke-virtual {v0, p1}, Lcom/canhub/cropper/BitmapUtils;->getRectTop([F)F

    move-result p1

    neg-float p1, p1

    invoke-static {p2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p2

    int-to-float p2, p2

    iget-object p3, p0, Lcom/canhub/cropper/CropImageView;->j:[F

    invoke-virtual {v0, p3}, Lcom/canhub/cropper/BitmapUtils;->getRectBottom([F)F

    move-result p3

    sub-float/2addr p2, p3

    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    div-float v1, p1, v4

    :goto_5
    iput v1, p0, Lcom/canhub/cropper/CropImageView;->B0:F

    goto :goto_6

    :cond_a
    iget p3, p0, Lcom/canhub/cropper/CropImageView;->A0:F

    mul-float/2addr p3, v3

    iget v0, v2, Landroid/graphics/RectF;->left:F

    neg-float v0, v0

    invoke-static {p3, v0}, Ljava/lang/Math;->max(FF)F

    move-result p3

    iget v0, v2, Landroid/graphics/RectF;->right:F

    neg-float v0, v0

    add-float/2addr v0, p1

    invoke-static {p3, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    div-float/2addr p1, v3

    iput p1, p0, Lcom/canhub/cropper/CropImageView;->A0:F

    iget p1, p0, Lcom/canhub/cropper/CropImageView;->B0:F

    mul-float/2addr p1, v4

    iget p3, v2, Landroid/graphics/RectF;->top:F

    neg-float p3, p3

    invoke-static {p1, p3}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iget p3, v2, Landroid/graphics/RectF;->bottom:F

    neg-float p3, p3

    add-float/2addr p3, p2

    invoke-static {p1, p3}, Ljava/lang/Math;->min(FF)F

    move-result p1

    div-float/2addr p1, v4

    iput p1, p0, Lcom/canhub/cropper/CropImageView;->B0:F

    :goto_6
    iget-object p1, p0, Lcom/canhub/cropper/CropImageView;->g:Landroid/graphics/Matrix;

    iget p2, p0, Lcom/canhub/cropper/CropImageView;->A0:F

    mul-float/2addr p2, v3

    iget p3, p0, Lcom/canhub/cropper/CropImageView;->B0:F

    mul-float/2addr p3, v4

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget p1, p0, Lcom/canhub/cropper/CropImageView;->A0:F

    mul-float/2addr p1, v3

    iget p2, p0, Lcom/canhub/cropper/CropImageView;->B0:F

    mul-float/2addr p2, v4

    invoke-virtual {v2, p1, p2}, Landroid/graphics/RectF;->offset(FF)V

    iget-object p1, p0, Lcom/canhub/cropper/CropImageView;->f:Lcom/canhub/cropper/CropOverlayView;

    invoke-virtual {p1, v2}, Lcom/canhub/cropper/CropOverlayView;->setCropWindowRect(Landroid/graphics/RectF;)V

    invoke-virtual {p0}, Lcom/canhub/cropper/CropImageView;->d()V

    iget-object p1, p0, Lcom/canhub/cropper/CropImageView;->f:Lcom/canhub/cropper/CropOverlayView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    if-eqz p4, :cond_b

    iget-object p1, p0, Lcom/canhub/cropper/CropImageView;->l:Lcom/canhub/cropper/CropImageAnimation;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/canhub/cropper/CropImageView;->j:[F

    iget-object p3, p0, Lcom/canhub/cropper/CropImageView;->g:Landroid/graphics/Matrix;

    invoke-virtual {p1, p2, p3}, Lcom/canhub/cropper/CropImageAnimation;->setEndState([FLandroid/graphics/Matrix;)V

    iget-object p1, p0, Lcom/canhub/cropper/CropImageView;->e:Landroid/widget/ImageView;

    iget-object p2, p0, Lcom/canhub/cropper/CropImageView;->l:Lcom/canhub/cropper/CropImageAnimation;

    invoke-virtual {p1, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_7

    :cond_b
    iget-object p1, p0, Lcom/canhub/cropper/CropImageView;->e:Landroid/widget/ImageView;

    iget-object p2, p0, Lcom/canhub/cropper/CropImageView;->g:Landroid/graphics/Matrix;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    :goto_7
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/canhub/cropper/CropImageView;->h(Z)V

    :cond_c
    return-void
.end method

.method public final b()V
    .locals 3

    iget-object v0, p0, Lcom/canhub/cropper/CropImageView;->m:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/canhub/cropper/CropImageView;->t:I

    if-gtz v1, :cond_0

    iget-object v1, p0, Lcom/canhub/cropper/CropImageView;->x0:Landroid/net/Uri;

    if-eqz v1, :cond_1

    :cond_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/canhub/cropper/CropImageView;->m:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    iput v1, p0, Lcom/canhub/cropper/CropImageView;->t:I

    iput-object v0, p0, Lcom/canhub/cropper/CropImageView;->x0:Landroid/net/Uri;

    const/4 v2, 0x1

    iput v2, p0, Lcom/canhub/cropper/CropImageView;->y0:I

    iput v1, p0, Lcom/canhub/cropper/CropImageView;->o:I

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lcom/canhub/cropper/CropImageView;->z0:F

    const/4 v2, 0x0

    iput v2, p0, Lcom/canhub/cropper/CropImageView;->A0:F

    iput v2, p0, Lcom/canhub/cropper/CropImageView;->B0:F

    iget-object v2, p0, Lcom/canhub/cropper/CropImageView;->g:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    iput-object v0, p0, Lcom/canhub/cropper/CropImageView;->C0:Landroid/graphics/RectF;

    iput v1, p0, Lcom/canhub/cropper/CropImageView;->D0:I

    iget-object v1, p0, Lcom/canhub/cropper/CropImageView;->e:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0}, Lcom/canhub/cropper/CropImageView;->f()V

    return-void
.end method

.method public final c(ZZ)V
    .locals 12

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/canhub/cropper/CropImageView;->m:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_b

    if-lez v0, :cond_b

    if-lez v1, :cond_b

    iget-object v2, p0, Lcom/canhub/cropper/CropImageView;->f:Lcom/canhub/cropper/CropOverlayView;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/canhub/cropper/CropOverlayView;->getCropWindowRect()Landroid/graphics/RectF;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz p1, :cond_1

    iget p2, v2, Landroid/graphics/RectF;->left:F

    cmpg-float p2, p2, v4

    if-ltz p2, :cond_0

    iget p2, v2, Landroid/graphics/RectF;->top:F

    cmpg-float p2, p2, v4

    if-ltz p2, :cond_0

    iget p2, v2, Landroid/graphics/RectF;->right:F

    int-to-float v4, v0

    cmpl-float p2, p2, v4

    if-gtz p2, :cond_0

    iget p2, v2, Landroid/graphics/RectF;->bottom:F

    int-to-float v2, v1

    cmpl-float p2, p2, v2

    if-lez p2, :cond_a

    :cond_0
    int-to-float p2, v0

    int-to-float v0, v1

    invoke-virtual {p0, p2, v0, v3, v3}, Lcom/canhub/cropper/CropImageView;->a(FFZZ)V

    goto/16 :goto_2

    :cond_1
    iget-boolean v5, p0, Lcom/canhub/cropper/CropImageView;->Q:Z

    const/high16 v6, 0x3f800000    # 1.0f

    if-nez v5, :cond_2

    iget v5, p0, Lcom/canhub/cropper/CropImageView;->z0:F

    cmpl-float v5, v5, v6

    if-lez v5, :cond_a

    :cond_2
    iget v5, p0, Lcom/canhub/cropper/CropImageView;->z0:F

    iget v7, p0, Lcom/canhub/cropper/CropImageView;->k0:I

    int-to-float v7, v7

    cmpg-float v5, v5, v7

    if-gez v5, :cond_3

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v5

    int-to-float v7, v0

    const/high16 v8, 0x3f000000    # 0.5f

    mul-float v9, v7, v8

    cmpg-float v5, v5, v9

    if-gez v5, :cond_3

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v5

    int-to-float v9, v1

    mul-float/2addr v8, v9

    cmpg-float v5, v5, v8

    if-gez v5, :cond_3

    iget v5, p0, Lcom/canhub/cropper/CropImageView;->k0:I

    int-to-float v5, v5

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v8

    iget v10, p0, Lcom/canhub/cropper/CropImageView;->z0:F

    div-float/2addr v8, v10

    const v10, 0x3f23d70a    # 0.64f

    div-float/2addr v8, v10

    div-float/2addr v7, v8

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v8

    iget v11, p0, Lcom/canhub/cropper/CropImageView;->z0:F

    div-float/2addr v8, v11

    div-float/2addr v8, v10

    div-float/2addr v9, v8

    invoke-static {v7, v9}, Ljava/lang/Math;->min(FF)F

    move-result v7

    invoke-static {v5, v7}, Ljava/lang/Math;->min(FF)F

    move-result v5

    goto :goto_0

    :cond_3
    move v5, v4

    :goto_0
    iget v7, p0, Lcom/canhub/cropper/CropImageView;->z0:F

    cmpl-float v7, v7, v6

    if-lez v7, :cond_5

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v7

    int-to-float v8, v0

    const v9, 0x3f266666    # 0.65f

    mul-float v10, v8, v9

    cmpl-float v7, v7, v10

    if-gtz v7, :cond_4

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v7

    int-to-float v10, v1

    mul-float/2addr v10, v9

    cmpl-float v7, v7, v10

    if-lez v7, :cond_5

    :cond_4
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v5

    iget v7, p0, Lcom/canhub/cropper/CropImageView;->z0:F

    div-float/2addr v5, v7

    const v7, 0x3f028f5c    # 0.51f

    div-float/2addr v5, v7

    div-float/2addr v8, v5

    int-to-float v5, v1

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    iget v9, p0, Lcom/canhub/cropper/CropImageView;->z0:F

    div-float/2addr v2, v9

    div-float/2addr v2, v7

    div-float/2addr v5, v2

    invoke-static {v8, v5}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v6, v2}, Ljava/lang/Math;->max(FF)F

    move-result v5

    :cond_5
    iget-boolean v2, p0, Lcom/canhub/cropper/CropImageView;->Q:Z

    if-nez v2, :cond_6

    goto :goto_1

    :cond_6
    move v6, v5

    :goto_1
    cmpl-float v2, v6, v4

    if-lez v2, :cond_a

    iget v2, p0, Lcom/canhub/cropper/CropImageView;->z0:F

    cmpg-float v2, v6, v2

    const/4 v4, 0x1

    if-nez v2, :cond_7

    move v3, v4

    :cond_7
    if-nez v3, :cond_a

    if-eqz p2, :cond_9

    iget-object v2, p0, Lcom/canhub/cropper/CropImageView;->l:Lcom/canhub/cropper/CropImageAnimation;

    if-nez v2, :cond_8

    new-instance v2, Lcom/canhub/cropper/CropImageAnimation;

    iget-object v3, p0, Lcom/canhub/cropper/CropImageView;->e:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/canhub/cropper/CropImageView;->f:Lcom/canhub/cropper/CropOverlayView;

    invoke-direct {v2, v3, v5}, Lcom/canhub/cropper/CropImageAnimation;-><init>(Landroid/widget/ImageView;Lcom/canhub/cropper/CropOverlayView;)V

    iput-object v2, p0, Lcom/canhub/cropper/CropImageView;->l:Lcom/canhub/cropper/CropImageAnimation;

    :cond_8
    iget-object v2, p0, Lcom/canhub/cropper/CropImageView;->l:Lcom/canhub/cropper/CropImageAnimation;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/canhub/cropper/CropImageView;->j:[F

    iget-object v5, p0, Lcom/canhub/cropper/CropImageView;->g:Landroid/graphics/Matrix;

    invoke-virtual {v2, v3, v5}, Lcom/canhub/cropper/CropImageAnimation;->setStartState([FLandroid/graphics/Matrix;)V

    :cond_9
    iput v6, p0, Lcom/canhub/cropper/CropImageView;->z0:F

    int-to-float v0, v0

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1, v4, p2}, Lcom/canhub/cropper/CropImageView;->a(FFZZ)V

    :cond_a
    :goto_2
    iget-object p0, p0, Lcom/canhub/cropper/CropImageView;->u0:Lcom/canhub/cropper/CropImageView$OnSetCropWindowChangeListener;

    if-eqz p0, :cond_b

    if-nez p1, :cond_b

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p0}, Lcom/canhub/cropper/CropImageView$OnSetCropWindowChangeListener;->onCropWindowChanged()V

    :cond_b
    return-void
.end method

.method public final clearAspectRatio()V
    .locals 2

    iget-object v0, p0, Lcom/canhub/cropper/CropImageView;->f:Lcom/canhub/cropper/CropOverlayView;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/canhub/cropper/CropOverlayView;->setAspectRatioX(I)V

    iget-object v0, p0, Lcom/canhub/cropper/CropImageView;->f:Lcom/canhub/cropper/CropOverlayView;

    invoke-virtual {v0, v1}, Lcom/canhub/cropper/CropOverlayView;->setAspectRatioY(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/canhub/cropper/CropImageView;->setFixedAspectRatio(Z)V

    return-void
.end method

.method public final clearImage()V
    .locals 1

    invoke-virtual {p0}, Lcom/canhub/cropper/CropImageView;->b()V

    iget-object p0, p0, Lcom/canhub/cropper/CropImageView;->f:Lcom/canhub/cropper/CropOverlayView;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/canhub/cropper/CropOverlayView;->setInitialCropWindowRect(Landroid/graphics/Rect;)V

    :goto_0
    return-void
.end method

.method public final croppedImageAsync(Landroid/graphics/Bitmap$CompressFormat;IIILcom/canhub/cropper/CropImageView$RequestSizeOptions;Landroid/net/Uri;)V
    .locals 7
    .param p1    # Landroid/graphics/Bitmap$CompressFormat;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcom/canhub/cropper/CropImageView$RequestSizeOptions;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Landroid/net/Uri;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "saveCompressFormat"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "options"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/canhub/cropper/CropImageView;->w0:Lcom/canhub/cropper/CropImageView$OnCropImageCompleteListener;

    if-eqz v0, :cond_0

    move-object v0, p0

    move v1, p3

    move v2, p4

    move-object v3, p5

    move-object v4, p1

    move v5, p2

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/canhub/cropper/CropImageView;->startCropWorkerTask(IILcom/canhub/cropper/CropImageView$RequestSizeOptions;Landroid/graphics/Bitmap$CompressFormat;ILandroid/net/Uri;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "mOnCropImageCompleteListener is not set"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final d()V
    .locals 11

    iget-object v0, p0, Lcom/canhub/cropper/CropImageView;->j:[F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, v0, v1

    const/4 v3, 0x1

    aput v2, v0, v3

    iget-object v4, p0, Lcom/canhub/cropper/CropImageView;->m:Landroid/graphics/Bitmap;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    const/4 v5, 0x2

    aput v4, v0, v5

    iget-object v0, p0, Lcom/canhub/cropper/CropImageView;->j:[F

    const/4 v4, 0x3

    aput v2, v0, v4

    iget-object v6, p0, Lcom/canhub/cropper/CropImageView;->m:Landroid/graphics/Bitmap;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    const/4 v7, 0x4

    aput v6, v0, v7

    iget-object v0, p0, Lcom/canhub/cropper/CropImageView;->j:[F

    iget-object v6, p0, Lcom/canhub/cropper/CropImageView;->m:Landroid/graphics/Bitmap;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    const/4 v8, 0x5

    aput v6, v0, v8

    iget-object v0, p0, Lcom/canhub/cropper/CropImageView;->j:[F

    const/4 v6, 0x6

    aput v2, v0, v6

    iget-object v9, p0, Lcom/canhub/cropper/CropImageView;->m:Landroid/graphics/Bitmap;

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    int-to-float v9, v9

    const/4 v10, 0x7

    aput v9, v0, v10

    iget-object v0, p0, Lcom/canhub/cropper/CropImageView;->g:Landroid/graphics/Matrix;

    iget-object v9, p0, Lcom/canhub/cropper/CropImageView;->j:[F

    invoke-virtual {v0, v9}, Landroid/graphics/Matrix;->mapPoints([F)V

    iget-object v0, p0, Lcom/canhub/cropper/CropImageView;->k:[F

    aput v2, v0, v1

    aput v2, v0, v3

    const/high16 v1, 0x42c80000    # 100.0f

    aput v1, v0, v5

    aput v2, v0, v4

    aput v1, v0, v7

    aput v1, v0, v8

    aput v2, v0, v6

    aput v1, v0, v10

    iget-object p0, p0, Lcom/canhub/cropper/CropImageView;->g:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    return-void
.end method

.method public final e(Landroid/graphics/Bitmap;ILandroid/net/Uri;II)V
    .locals 1

    iget-object v0, p0, Lcom/canhub/cropper/CropImageView;->m:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/canhub/cropper/CropImageView;->b()V

    iput-object p1, p0, Lcom/canhub/cropper/CropImageView;->m:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/canhub/cropper/CropImageView;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iput-object p3, p0, Lcom/canhub/cropper/CropImageView;->x0:Landroid/net/Uri;

    iput p2, p0, Lcom/canhub/cropper/CropImageView;->t:I

    iput p4, p0, Lcom/canhub/cropper/CropImageView;->y0:I

    iput p5, p0, Lcom/canhub/cropper/CropImageView;->o:I

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p2

    int-to-float p2, p2

    const/4 p3, 0x1

    const/4 p4, 0x0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/canhub/cropper/CropImageView;->a(FFZZ)V

    iget-object p1, p0, Lcom/canhub/cropper/CropImageView;->f:Lcom/canhub/cropper/CropOverlayView;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/canhub/cropper/CropOverlayView;->resetCropOverlayView()V

    invoke-virtual {p0}, Lcom/canhub/cropper/CropImageView;->f()V

    :cond_1
    return-void
.end method

.method public final expectedImageSize()Landroid/util/Size;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/canhub/cropper/CropImageView;->getCropRect()Landroid/graphics/Rect;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/canhub/cropper/CropImageView;->getRotatedDegrees()I

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/canhub/cropper/CropImageView;->getRotatedDegrees()I

    move-result p0

    const/16 v1, 0xb4

    if-ne p0, v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Landroid/util/Size;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-direct {p0, v1, v0}, Landroid/util/Size;-><init>(II)V

    goto :goto_1

    :cond_2
    :goto_0
    new-instance p0, Landroid/util/Size;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-direct {p0, v1, v0}, Landroid/util/Size;-><init>(II)V

    :goto_1
    return-object p0
.end method

.method public final f()V
    .locals 2

    iget-object v0, p0, Lcom/canhub/cropper/CropImageView;->f:Lcom/canhub/cropper/CropOverlayView;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/canhub/cropper/CropImageView;->w:Z

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/canhub/cropper/CropImageView;->m:Landroid/graphics/Bitmap;

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x4

    :goto_0
    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public final flipImageHorizontally()V
    .locals 4

    iget-boolean v0, p0, Lcom/canhub/cropper/CropImageView;->p:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/canhub/cropper/CropImageView;->p:Z

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v2, v1, v3}, Lcom/canhub/cropper/CropImageView;->a(FFZZ)V

    return-void
.end method

.method public final flipImageVertically()V
    .locals 4

    iget-boolean v0, p0, Lcom/canhub/cropper/CropImageView;->q:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/canhub/cropper/CropImageView;->q:Z

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v2, v1, v3}, Lcom/canhub/cropper/CropImageView;->a(FFZZ)V

    return-void
.end method

.method public final g()V
    .locals 2

    iget-boolean v0, p0, Lcom/canhub/cropper/CropImageView;->O:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/canhub/cropper/CropImageView;->m:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/canhub/cropper/CropImageView;->F0:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/canhub/cropper/CropImageView;->G0:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    iget-object p0, p0, Lcom/canhub/cropper/CropImageView;->i:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x4

    :goto_1
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final getAspectRatio()Landroid/util/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Landroid/util/Pair;

    iget-object v1, p0, Lcom/canhub/cropper/CropImageView;->f:Lcom/canhub/cropper/CropOverlayView;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/canhub/cropper/CropOverlayView;->getAspectRatioX()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object p0, p0, Lcom/canhub/cropper/CropImageView;->f:Lcom/canhub/cropper/CropOverlayView;

    invoke-virtual {p0}, Lcom/canhub/cropper/CropOverlayView;->getAspectRatioY()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final getCornerShape()Lcom/canhub/cropper/CropImageView$CropCornerShape;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/canhub/cropper/CropImageView;->f:Lcom/canhub/cropper/CropOverlayView;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/canhub/cropper/CropOverlayView;->getCornerShape()Lcom/canhub/cropper/CropImageView$CropCornerShape;

    move-result-object p0

    return-object p0
.end method

.method public final getCropLabelText()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/canhub/cropper/CropImageView;->y:Ljava/lang/String;

    return-object p0
.end method

.method public final getCropLabelTextColor()I
    .locals 0

    iget p0, p0, Lcom/canhub/cropper/CropImageView;->J:I

    return p0
.end method

.method public final getCropLabelTextSize()F
    .locals 0

    iget p0, p0, Lcom/canhub/cropper/CropImageView;->z:F

    return p0
.end method

.method public final getCropPoints()[F
    .locals 8
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/canhub/cropper/CropImageView;->f:Lcom/canhub/cropper/CropOverlayView;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/canhub/cropper/CropOverlayView;->getCropWindowRect()Landroid/graphics/RectF;

    move-result-object v0

    const/16 v1, 0x8

    new-array v2, v1, [F

    iget v3, v0, Landroid/graphics/RectF;->left:F

    const/4 v4, 0x0

    aput v3, v2, v4

    iget v5, v0, Landroid/graphics/RectF;->top:F

    const/4 v6, 0x1

    aput v5, v2, v6

    iget v6, v0, Landroid/graphics/RectF;->right:F

    const/4 v7, 0x2

    aput v6, v2, v7

    const/4 v7, 0x3

    aput v5, v2, v7

    const/4 v5, 0x4

    aput v6, v2, v5

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    const/4 v5, 0x5

    aput v0, v2, v5

    const/4 v5, 0x6

    aput v3, v2, v5

    const/4 v3, 0x7

    aput v0, v2, v3

    iget-object v0, p0, Lcom/canhub/cropper/CropImageView;->g:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/canhub/cropper/CropImageView;->h:Landroid/graphics/Matrix;

    invoke-virtual {v0, v3}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    iget-object v0, p0, Lcom/canhub/cropper/CropImageView;->h:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    new-array v0, v1, [F

    :goto_0
    if-ge v4, v1, :cond_0

    aget v3, v2, v4

    iget v5, p0, Lcom/canhub/cropper/CropImageView;->y0:I

    int-to-float v5, v5

    mul-float/2addr v3, v5

    aput v3, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final getCropRect()Landroid/graphics/Rect;
    .locals 7
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget v0, p0, Lcom/canhub/cropper/CropImageView;->y0:I

    iget-object v1, p0, Lcom/canhub/cropper/CropImageView;->m:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/canhub/cropper/CropImageView;->getCropPoints()[F

    move-result-object v2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    mul-int/2addr v3, v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int v4, v1, v0

    sget-object v0, Lcom/canhub/cropper/BitmapUtils;->INSTANCE:Lcom/canhub/cropper/BitmapUtils;

    iget-object v1, p0, Lcom/canhub/cropper/CropImageView;->f:Lcom/canhub/cropper/CropOverlayView;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/canhub/cropper/CropOverlayView;->isFixAspectRatio()Z

    move-result v5

    iget-object v1, p0, Lcom/canhub/cropper/CropImageView;->f:Lcom/canhub/cropper/CropOverlayView;

    invoke-virtual {v1}, Lcom/canhub/cropper/CropOverlayView;->getAspectRatioX()I

    move-result v6

    iget-object p0, p0, Lcom/canhub/cropper/CropImageView;->f:Lcom/canhub/cropper/CropOverlayView;

    invoke-virtual {p0}, Lcom/canhub/cropper/CropOverlayView;->getAspectRatioY()I

    move-result p0

    move-object v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, p0

    invoke-virtual/range {v0 .. v6}, Lcom/canhub/cropper/BitmapUtils;->getRectFromPoints([FIIZII)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public final getCropShape()Lcom/canhub/cropper/CropImageView$CropShape;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/canhub/cropper/CropImageView;->f:Lcom/canhub/cropper/CropOverlayView;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/canhub/cropper/CropOverlayView;->getCropShape()Lcom/canhub/cropper/CropImageView$CropShape;

    move-result-object p0

    return-object p0
.end method

.method public final getCropWindowRect()Landroid/graphics/RectF;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/canhub/cropper/CropImageView;->f:Lcom/canhub/cropper/CropOverlayView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/canhub/cropper/CropOverlayView;->getCropWindowRect()Landroid/graphics/RectF;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final getCroppedImage()Landroid/graphics/Bitmap;
    .locals 6
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/canhub/cropper/CropImageView;->getCroppedImage$default(Lcom/canhub/cropper/CropImageView;IILcom/canhub/cropper/CropImageView$RequestSizeOptions;ILjava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public final getCroppedImage(I)Landroid/graphics/Bitmap;
    .locals 6
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 2
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    invoke-static/range {v0 .. v5}, Lcom/canhub/cropper/CropImageView;->getCroppedImage$default(Lcom/canhub/cropper/CropImageView;IILcom/canhub/cropper/CropImageView$RequestSizeOptions;ILjava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public final getCroppedImage(II)Landroid/graphics/Bitmap;
    .locals 6
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 3
    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-static/range {v0 .. v5}, Lcom/canhub/cropper/CropImageView;->getCroppedImage$default(Lcom/canhub/cropper/CropImageView;IILcom/canhub/cropper/CropImageView$RequestSizeOptions;ILjava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public final getCroppedImage(IILcom/canhub/cropper/CropImageView$RequestSizeOptions;)Landroid/graphics/Bitmap;
    .locals 19
    .param p3    # Lcom/canhub/cropper/CropImageView$RequestSizeOptions;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    const-string v2, "options"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v4, v0, Lcom/canhub/cropper/CropImageView;->m:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_4

    .line 5
    sget-object v2, Lcom/canhub/cropper/CropImageView$RequestSizeOptions;->NONE:Lcom/canhub/cropper/CropImageView$RequestSizeOptions;

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    move/from16 v14, p1

    goto :goto_0

    :cond_0
    move v14, v3

    :goto_0
    if-eq v1, v2, :cond_1

    move/from16 v2, p2

    goto :goto_1

    :cond_1
    move v2, v3

    .line 6
    :goto_1
    iget-object v3, v0, Lcom/canhub/cropper/CropImageView;->x0:Landroid/net/Uri;

    if-eqz v3, :cond_3

    iget v3, v0, Lcom/canhub/cropper/CropImageView;->y0:I

    const/4 v5, 0x1

    if-gt v3, v5, :cond_2

    sget-object v3, Lcom/canhub/cropper/CropImageView$RequestSizeOptions;->SAMPLING:Lcom/canhub/cropper/CropImageView$RequestSizeOptions;

    if-ne v1, v3, :cond_3

    .line 7
    :cond_2
    sget-object v5, Lcom/canhub/cropper/BitmapUtils;->INSTANCE:Lcom/canhub/cropper/BitmapUtils;

    .line 8
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v3, "context"

    invoke-static {v6, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    iget-object v7, v0, Lcom/canhub/cropper/CropImageView;->x0:Landroid/net/Uri;

    .line 10
    invoke-virtual/range {p0 .. p0}, Lcom/canhub/cropper/CropImageView;->getCropPoints()[F

    move-result-object v8

    .line 11
    iget v9, v0, Lcom/canhub/cropper/CropImageView;->o:I

    .line 12
    iget-object v3, v0, Lcom/canhub/cropper/CropImageView;->m:Landroid/graphics/Bitmap;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget v4, v0, Lcom/canhub/cropper/CropImageView;->y0:I

    mul-int v10, v3, v4

    .line 13
    iget-object v3, v0, Lcom/canhub/cropper/CropImageView;->m:Landroid/graphics/Bitmap;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    iget v4, v0, Lcom/canhub/cropper/CropImageView;->y0:I

    mul-int v11, v3, v4

    .line 14
    iget-object v3, v0, Lcom/canhub/cropper/CropImageView;->f:Lcom/canhub/cropper/CropOverlayView;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lcom/canhub/cropper/CropOverlayView;->isFixAspectRatio()Z

    move-result v12

    .line 15
    iget-object v3, v0, Lcom/canhub/cropper/CropImageView;->f:Lcom/canhub/cropper/CropOverlayView;

    invoke-virtual {v3}, Lcom/canhub/cropper/CropOverlayView;->getAspectRatioX()I

    move-result v13

    .line 16
    iget-object v3, v0, Lcom/canhub/cropper/CropImageView;->f:Lcom/canhub/cropper/CropOverlayView;

    invoke-virtual {v3}, Lcom/canhub/cropper/CropOverlayView;->getAspectRatioY()I

    move-result v3

    .line 17
    iget-boolean v4, v0, Lcom/canhub/cropper/CropImageView;->p:Z

    .line 18
    iget-boolean v0, v0, Lcom/canhub/cropper/CropImageView;->q:Z

    move/from16 p1, v14

    move v14, v3

    move/from16 v15, p1

    move/from16 v16, v2

    move/from16 v17, v4

    move/from16 v18, v0

    .line 19
    invoke-virtual/range {v5 .. v18}, Lcom/canhub/cropper/BitmapUtils;->cropBitmap(Landroid/content/Context;Landroid/net/Uri;[FIIIZIIIIZZ)Lcom/canhub/cropper/BitmapUtils$BitmapSampled;

    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lcom/canhub/cropper/BitmapUtils$BitmapSampled;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_2

    :cond_3
    move/from16 p1, v14

    .line 21
    sget-object v3, Lcom/canhub/cropper/BitmapUtils;->INSTANCE:Lcom/canhub/cropper/BitmapUtils;

    .line 22
    invoke-virtual/range {p0 .. p0}, Lcom/canhub/cropper/CropImageView;->getCropPoints()[F

    move-result-object v5

    .line 23
    iget v6, v0, Lcom/canhub/cropper/CropImageView;->o:I

    .line 24
    iget-object v7, v0, Lcom/canhub/cropper/CropImageView;->f:Lcom/canhub/cropper/CropOverlayView;

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v7}, Lcom/canhub/cropper/CropOverlayView;->isFixAspectRatio()Z

    move-result v7

    .line 25
    iget-object v8, v0, Lcom/canhub/cropper/CropImageView;->f:Lcom/canhub/cropper/CropOverlayView;

    invoke-virtual {v8}, Lcom/canhub/cropper/CropOverlayView;->getAspectRatioX()I

    move-result v8

    .line 26
    iget-object v9, v0, Lcom/canhub/cropper/CropImageView;->f:Lcom/canhub/cropper/CropOverlayView;

    invoke-virtual {v9}, Lcom/canhub/cropper/CropOverlayView;->getAspectRatioY()I

    move-result v9

    .line 27
    iget-boolean v10, v0, Lcom/canhub/cropper/CropImageView;->p:Z

    .line 28
    iget-boolean v11, v0, Lcom/canhub/cropper/CropImageView;->q:Z

    .line 29
    invoke-virtual/range {v3 .. v11}, Lcom/canhub/cropper/BitmapUtils;->cropBitmapObjectHandleOOM(Landroid/graphics/Bitmap;[FIZIIZZ)Lcom/canhub/cropper/BitmapUtils$BitmapSampled;

    move-result-object v0

    .line 30
    invoke-virtual {v0}, Lcom/canhub/cropper/BitmapUtils$BitmapSampled;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 31
    :goto_2
    sget-object v3, Lcom/canhub/cropper/BitmapUtils;->INSTANCE:Lcom/canhub/cropper/BitmapUtils;

    move/from16 v4, p1

    invoke-virtual {v3, v0, v4, v2, v1}, Lcom/canhub/cropper/BitmapUtils;->resizeBitmap(Landroid/graphics/Bitmap;IILcom/canhub/cropper/CropImageView$RequestSizeOptions;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_4
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getCustomOutputUri()Landroid/net/Uri;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/canhub/cropper/CropImageView;->H0:Landroid/net/Uri;

    return-object p0
.end method

.method public final getGuidelines()Lcom/canhub/cropper/CropImageView$Guidelines;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/canhub/cropper/CropImageView;->f:Lcom/canhub/cropper/CropOverlayView;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/canhub/cropper/CropOverlayView;->getGuidelines()Lcom/canhub/cropper/CropImageView$Guidelines;

    move-result-object p0

    return-object p0
.end method

.method public final getImageResource()I
    .locals 0

    iget p0, p0, Lcom/canhub/cropper/CropImageView;->t:I

    return p0
.end method

.method public final getImageUri()Landroid/net/Uri;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/canhub/cropper/CropImageView;->x0:Landroid/net/Uri;

    return-object p0
.end method

.method public final getMaxZoom()I
    .locals 0

    iget p0, p0, Lcom/canhub/cropper/CropImageView;->k0:I

    return p0
.end method

.method public final getRotatedDegrees()I
    .locals 0

    iget p0, p0, Lcom/canhub/cropper/CropImageView;->o:I

    return p0
.end method

.method public final getScaleType()Lcom/canhub/cropper/CropImageView$ScaleType;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/canhub/cropper/CropImageView;->u:Lcom/canhub/cropper/CropImageView$ScaleType;

    return-object p0
.end method

.method public final getWholeImageRect()Landroid/graphics/Rect;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget v0, p0, Lcom/canhub/cropper/CropImageView;->y0:I

    iget-object p0, p0, Lcom/canhub/cropper/CropImageView;->m:Landroid/graphics/Bitmap;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    mul-int/2addr v1, v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    mul-int/2addr p0, v0

    new-instance v0, Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public final h(Z)V
    .locals 5

    iget-object v0, p0, Lcom/canhub/cropper/CropImageView;->m:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    iget v0, p0, Lcom/canhub/cropper/CropImageView;->y0:I

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    sget-object v2, Lcom/canhub/cropper/BitmapUtils;->INSTANCE:Lcom/canhub/cropper/BitmapUtils;

    iget-object v3, p0, Lcom/canhub/cropper/CropImageView;->k:[F

    invoke-virtual {v2, v3}, Lcom/canhub/cropper/BitmapUtils;->getRectWidth([F)F

    move-result v3

    div-float/2addr v0, v3

    iget v3, p0, Lcom/canhub/cropper/CropImageView;->y0:I

    int-to-float v3, v3

    mul-float/2addr v3, v1

    iget-object v1, p0, Lcom/canhub/cropper/CropImageView;->k:[F

    invoke-virtual {v2, v1}, Lcom/canhub/cropper/BitmapUtils;->getRectHeight([F)F

    move-result v1

    div-float/2addr v3, v1

    iget-object v1, p0, Lcom/canhub/cropper/CropImageView;->f:Lcom/canhub/cropper/CropOverlayView;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v1, v2, v4, v0, v3}, Lcom/canhub/cropper/CropOverlayView;->setCropWindowLimits(FFFF)V

    :cond_0
    iget-object v0, p0, Lcom/canhub/cropper/CropImageView;->f:Lcom/canhub/cropper/CropOverlayView;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/canhub/cropper/CropImageView;->j:[F

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    invoke-virtual {v0, p1, v1, p0}, Lcom/canhub/cropper/CropOverlayView;->setBounds([FII)V

    return-void
.end method

.method public final isAutoZoomEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/canhub/cropper/CropImageView;->Q:Z

    return p0
.end method

.method public final isFixAspectRatio()Z
    .locals 0

    iget-object p0, p0, Lcom/canhub/cropper/CropImageView;->f:Lcom/canhub/cropper/CropOverlayView;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/canhub/cropper/CropOverlayView;->isFixAspectRatio()Z

    move-result p0

    return p0
.end method

.method public final isFlippedHorizontally()Z
    .locals 0

    iget-boolean p0, p0, Lcom/canhub/cropper/CropImageView;->p:Z

    return p0
.end method

.method public final isFlippedVertically()Z
    .locals 0

    iget-boolean p0, p0, Lcom/canhub/cropper/CropImageView;->q:Z

    return p0
.end method

.method public final isSaveBitmapToInstanceState()Z
    .locals 0

    iget-boolean p0, p0, Lcom/canhub/cropper/CropImageView;->v:Z

    return p0
.end method

.method public final isShowCropLabel()Z
    .locals 0

    iget-boolean p0, p0, Lcom/canhub/cropper/CropImageView;->x:Z

    return p0
.end method

.method public final isShowCropOverlay()Z
    .locals 0

    iget-boolean p0, p0, Lcom/canhub/cropper/CropImageView;->w:Z

    return p0
.end method

.method public final isShowProgressBar()Z
    .locals 0

    iget-boolean p0, p0, Lcom/canhub/cropper/CropImageView;->O:Z

    return p0
.end method

.method public onCropWindowChanged(Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/canhub/cropper/CropImageView;->c(ZZ)V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/canhub/cropper/CropImageView;->t0:Lcom/canhub/cropper/CropImageView$OnSetCropOverlayMovedListener;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/canhub/cropper/CropImageView;->getCropRect()Landroid/graphics/Rect;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/canhub/cropper/CropImageView$OnSetCropOverlayMovedListener;->onCropOverlayMoved(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/canhub/cropper/CropImageView;->q0:Lcom/canhub/cropper/CropImageView$OnSetCropOverlayReleasedListener;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/canhub/cropper/CropImageView;->getCropRect()Landroid/graphics/Rect;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/canhub/cropper/CropImageView$OnSetCropOverlayReleasedListener;->onCropOverlayReleased(Landroid/graphics/Rect;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final onImageCroppingAsyncComplete$cropper_release(Lcom/canhub/cropper/BitmapCroppingWorkerJob$Result;)V
    .locals 13
    .param p1    # Lcom/canhub/cropper/BitmapCroppingWorkerJob$Result;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/canhub/cropper/CropImageView;->G0:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Lcom/canhub/cropper/CropImageView;->g()V

    iget-object v0, p0, Lcom/canhub/cropper/CropImageView;->w0:Lcom/canhub/cropper/CropImageView$OnCropImageCompleteListener;

    if-eqz v0, :cond_0

    new-instance v12, Lcom/canhub/cropper/CropImageView$CropResult;

    iget-object v2, p0, Lcom/canhub/cropper/CropImageView;->m:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/canhub/cropper/CropImageView;->x0:Landroid/net/Uri;

    invoke-virtual {p1}, Lcom/canhub/cropper/BitmapCroppingWorkerJob$Result;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {p1}, Lcom/canhub/cropper/BitmapCroppingWorkerJob$Result;->getUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {p1}, Lcom/canhub/cropper/BitmapCroppingWorkerJob$Result;->getError()Ljava/lang/Exception;

    move-result-object v6

    invoke-virtual {p0}, Lcom/canhub/cropper/CropImageView;->getCropPoints()[F

    move-result-object v7

    invoke-virtual {p0}, Lcom/canhub/cropper/CropImageView;->getCropRect()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {p0}, Lcom/canhub/cropper/CropImageView;->getWholeImageRect()Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {p0}, Lcom/canhub/cropper/CropImageView;->getRotatedDegrees()I

    move-result v10

    invoke-virtual {p1}, Lcom/canhub/cropper/BitmapCroppingWorkerJob$Result;->getSampleSize()I

    move-result v11

    move-object v1, v12

    invoke-direct/range {v1 .. v11}, Lcom/canhub/cropper/CropImageView$CropResult;-><init>(Landroid/graphics/Bitmap;Landroid/net/Uri;Landroid/graphics/Bitmap;Landroid/net/Uri;Ljava/lang/Exception;[FLandroid/graphics/Rect;Landroid/graphics/Rect;II)V

    invoke-interface {v0, p0, v12}, Lcom/canhub/cropper/CropImageView$OnCropImageCompleteListener;->onCropImageComplete(Lcom/canhub/cropper/CropImageView;Lcom/canhub/cropper/CropImageView$CropResult;)V

    :cond_0
    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 2

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    iget p1, p0, Lcom/canhub/cropper/CropImageView;->r:I

    const/4 v0, 0x1

    if-lez p1, :cond_5

    iget p1, p0, Lcom/canhub/cropper/CropImageView;->s:I

    if-lez p1, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget v1, p0, Lcom/canhub/cropper/CropImageView;->r:I

    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v1, p0, Lcom/canhub/cropper/CropImageView;->s:I

    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/canhub/cropper/CropImageView;->m:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_4

    sub-int/2addr p4, p2

    int-to-float p1, p4

    sub-int/2addr p5, p3

    int-to-float p2, p5

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/canhub/cropper/CropImageView;->a(FFZZ)V

    iget-object p4, p0, Lcom/canhub/cropper/CropImageView;->C0:Landroid/graphics/RectF;

    if-eqz p4, :cond_3

    iget p5, p0, Lcom/canhub/cropper/CropImageView;->D0:I

    iget v1, p0, Lcom/canhub/cropper/CropImageView;->n:I

    if-eq p5, v1, :cond_0

    iput p5, p0, Lcom/canhub/cropper/CropImageView;->o:I

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/canhub/cropper/CropImageView;->a(FFZZ)V

    iput p3, p0, Lcom/canhub/cropper/CropImageView;->D0:I

    :cond_0
    iget-object p1, p0, Lcom/canhub/cropper/CropImageView;->g:Landroid/graphics/Matrix;

    iget-object p2, p0, Lcom/canhub/cropper/CropImageView;->C0:Landroid/graphics/RectF;

    invoke-virtual {p1, p2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget-object p1, p0, Lcom/canhub/cropper/CropImageView;->f:Lcom/canhub/cropper/CropOverlayView;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, p4}, Lcom/canhub/cropper/CropOverlayView;->setCropWindowRect(Landroid/graphics/RectF;)V

    :goto_0
    invoke-virtual {p0, p3, p3}, Lcom/canhub/cropper/CropImageView;->c(ZZ)V

    iget-object p1, p0, Lcom/canhub/cropper/CropImageView;->f:Lcom/canhub/cropper/CropOverlayView;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/canhub/cropper/CropOverlayView;->fixCurrentCropWindowRect()V

    :cond_2
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/canhub/cropper/CropImageView;->C0:Landroid/graphics/RectF;

    goto :goto_1

    :cond_3
    iget-boolean p1, p0, Lcom/canhub/cropper/CropImageView;->E0:Z

    if-eqz p1, :cond_6

    iput-boolean p3, p0, Lcom/canhub/cropper/CropImageView;->E0:Z

    invoke-virtual {p0, p3, p3}, Lcom/canhub/cropper/CropImageView;->c(ZZ)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0, v0}, Lcom/canhub/cropper/CropImageView;->h(Z)V

    goto :goto_1

    :cond_5
    invoke-virtual {p0, v0}, Lcom/canhub/cropper/CropImageView;->h(Z)V

    :cond_6
    :goto_1
    return-void
.end method

.method public onMeasure(II)V
    .locals 12

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    iget-object v2, p0, Lcom/canhub/cropper/CropImageView;->m:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_8

    if-nez p2, :cond_0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    :cond_0
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    const-wide/high16 v4, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    if-ge p1, v3, :cond_1

    int-to-double v6, p1

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-double v8, v3

    div-double/2addr v6, v8

    goto :goto_0

    :cond_1
    move-wide v6, v4

    :goto_0
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-ge p2, v3, :cond_2

    int-to-double v8, p2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-double v10, v3

    div-double/2addr v8, v10

    goto :goto_1

    :cond_2
    move-wide v8, v4

    :goto_1
    cmpg-double v3, v6, v4

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-nez v3, :cond_3

    move v3, v10

    goto :goto_2

    :cond_3
    move v3, v11

    :goto_2
    if-eqz v3, :cond_6

    cmpg-double v3, v8, v4

    if-nez v3, :cond_4

    goto :goto_3

    :cond_4
    move v10, v11

    :goto_3
    if-nez v10, :cond_5

    goto :goto_4

    :cond_5
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    goto :goto_5

    :cond_6
    :goto_4
    cmpg-double v3, v6, v8

    if-gtz v3, :cond_7

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-double v2, v2

    mul-double/2addr v2, v6

    double-to-int v2, v2

    move v3, p1

    goto :goto_5

    :cond_7
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-double v2, v2

    mul-double/2addr v2, v8

    double-to-int v3, v2

    move v2, p2

    :goto_5
    sget-object v4, Lcom/canhub/cropper/CropImageView;->Companion:Lcom/canhub/cropper/CropImageView$Companion;

    invoke-virtual {v4, v0, p1, v3}, Lcom/canhub/cropper/CropImageView$Companion;->getOnMeasureSpec$cropper_release(III)I

    move-result p1

    invoke-virtual {v4, v1, p2, v2}, Lcom/canhub/cropper/CropImageView$Companion;->getOnMeasureSpec$cropper_release(III)I

    move-result p2

    iput p1, p0, Lcom/canhub/cropper/CropImageView;->r:I

    iput p2, p0, Lcom/canhub/cropper/CropImageView;->s:I

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    goto :goto_6

    :cond_8
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    :goto_6
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 9
    .param p1    # Landroid/os/Parcelable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Landroid/os/Bundle;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/canhub/cropper/CropImageView;->F0:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/canhub/cropper/CropImageView;->x0:Landroid/net/Uri;

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/canhub/cropper/CropImageView;->m:Landroid/graphics/Bitmap;

    if-nez v0, :cond_e

    iget v0, p0, Lcom/canhub/cropper/CropImageView;->t:I

    if-nez v0, :cond_e

    move-object v0, p1

    check-cast v0, Landroid/os/Bundle;

    const-string v2, "LOADED_IMAGE_URI"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    instance-of v3, v2, Landroid/net/Uri;

    if-nez v3, :cond_0

    move-object v2, v1

    :cond_0
    check-cast v2, Landroid/net/Uri;

    if-eqz v2, :cond_4

    const-string v3, "LOADED_IMAGE_STATE_BITMAP_KEY"

    invoke-virtual {v0, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    sget-object v4, Lcom/canhub/cropper/BitmapUtils;->INSTANCE:Lcom/canhub/cropper/BitmapUtils;

    invoke-virtual {v4}, Lcom/canhub/cropper/BitmapUtils;->getMStateBitmap()Landroid/util/Pair;

    move-result-object v5

    if-eqz v5, :cond_2

    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-static {v6, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_1
    move-object v3, v1

    :goto_0
    move-object v5, v3

    goto :goto_1

    :cond_2
    move-object v5, v1

    :goto_1
    invoke-virtual {v4, v1}, Lcom/canhub/cropper/BitmapUtils;->setMStateBitmap(Landroid/util/Pair;)V

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_3

    const/4 v6, 0x0

    const-string v3, "LOADED_SAMPLE_SIZE"

    invoke-virtual {v0, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x0

    move-object v3, p0

    move-object v4, v5

    move v5, v6

    move-object v6, v2

    invoke-virtual/range {v3 .. v8}, Lcom/canhub/cropper/CropImageView;->e(Landroid/graphics/Bitmap;ILandroid/net/Uri;II)V

    :cond_3
    iget-object v3, p0, Lcom/canhub/cropper/CropImageView;->x0:Landroid/net/Uri;

    if-nez v3, :cond_7

    invoke-virtual {p0, v2}, Lcom/canhub/cropper/CropImageView;->setImageUriAsync(Landroid/net/Uri;)V

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_2

    :cond_4
    const-string v2, "LOADED_IMAGE_RESOURCE"

    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_5

    invoke-virtual {p0, v2}, Lcom/canhub/cropper/CropImageView;->setImageResource(I)V

    goto :goto_2

    :cond_5
    const-string v2, "LOADING_IMAGE_URI"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    instance-of v3, v2, Landroid/net/Uri;

    if-nez v3, :cond_6

    move-object v2, v1

    :cond_6
    check-cast v2, Landroid/net/Uri;

    if-eqz v2, :cond_7

    invoke-virtual {p0, v2}, Lcom/canhub/cropper/CropImageView;->setImageUriAsync(Landroid/net/Uri;)V

    :cond_7
    :goto_2
    const-string v2, "DEGREES_ROTATED"

    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/canhub/cropper/CropImageView;->D0:I

    iput v2, p0, Lcom/canhub/cropper/CropImageView;->o:I

    const-string v2, "INITIAL_CROP_RECT"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    instance-of v3, v2, Landroid/graphics/Rect;

    if-nez v3, :cond_8

    move-object v2, v1

    :cond_8
    check-cast v2, Landroid/graphics/Rect;

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-gtz v3, :cond_9

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-lez v3, :cond_a

    :cond_9
    iget-object v3, p0, Lcom/canhub/cropper/CropImageView;->f:Lcom/canhub/cropper/CropOverlayView;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3, v2}, Lcom/canhub/cropper/CropOverlayView;->setInitialCropWindowRect(Landroid/graphics/Rect;)V

    :cond_a
    const-string v2, "CROP_WINDOW_RECT"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    instance-of v3, v2, Landroid/graphics/RectF;

    if-nez v3, :cond_b

    move-object v2, v1

    :cond_b
    check-cast v2, Landroid/graphics/RectF;

    if-eqz v2, :cond_d

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_c

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v3

    cmpl-float v3, v3, v4

    if-lez v3, :cond_d

    :cond_c
    iput-object v2, p0, Lcom/canhub/cropper/CropImageView;->C0:Landroid/graphics/RectF;

    :cond_d
    iget-object v2, p0, Lcom/canhub/cropper/CropImageView;->f:Lcom/canhub/cropper/CropOverlayView;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v3, "CROP_SHAPE"

    invoke-virtual {v0, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v3}, Lcom/canhub/cropper/CropImageView$CropShape;->valueOf(Ljava/lang/String;)Lcom/canhub/cropper/CropImageView$CropShape;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/canhub/cropper/CropOverlayView;->setCropShape(Lcom/canhub/cropper/CropImageView$CropShape;)V

    const-string v2, "CROP_AUTO_ZOOM_ENABLED"

    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/canhub/cropper/CropImageView;->Q:Z

    const-string v2, "CROP_MAX_ZOOM"

    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/canhub/cropper/CropImageView;->k0:I

    const-string v2, "CROP_FLIP_HORIZONTALLY"

    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/canhub/cropper/CropImageView;->p:Z

    const-string v2, "CROP_FLIP_VERTICALLY"

    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/canhub/cropper/CropImageView;->q:Z

    const-string v2, "SHOW_CROP_LABEL"

    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/canhub/cropper/CropImageView;->x:Z

    iget-object v2, p0, Lcom/canhub/cropper/CropImageView;->f:Lcom/canhub/cropper/CropOverlayView;

    invoke-virtual {v2, v0}, Lcom/canhub/cropper/CropOverlayView;->setCropperTextLabelVisibility(Z)V

    :cond_e
    check-cast p1, Landroid/os/Bundle;

    const-string v0, "instanceState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    instance-of v0, p1, Landroid/os/Parcelable;

    if-nez v0, :cond_f

    goto :goto_3

    :cond_f
    move-object v1, p1

    :goto_3
    invoke-super {p0, v1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_4

    :cond_10
    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :goto_4
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 7
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/canhub/cropper/CropImageView;->x0:Landroid/net/Uri;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/canhub/cropper/CropImageView;->m:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/canhub/cropper/CropImageView;->t:I

    if-ge v0, v1, :cond_0

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-boolean v2, p0, Lcom/canhub/cropper/CropImageView;->v:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/canhub/cropper/CropImageView;->x0:Landroid/net/Uri;

    if-nez v2, :cond_1

    iget v2, p0, Lcom/canhub/cropper/CropImageView;->t:I

    if-ge v2, v1, :cond_1

    sget-object v1, Lcom/canhub/cropper/BitmapUtils;->INSTANCE:Lcom/canhub/cropper/BitmapUtils;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "context"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/canhub/cropper/CropImageView;->m:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/canhub/cropper/CropImageView;->H0:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3, v4}, Lcom/canhub/cropper/BitmapUtils;->writeTempStateStoreBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/canhub/cropper/CropImageView;->x0:Landroid/net/Uri;

    :goto_0
    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/canhub/cropper/CropImageView;->m:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_2

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "randomUUID().toString()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lcom/canhub/cropper/BitmapUtils;->INSTANCE:Lcom/canhub/cropper/BitmapUtils;

    new-instance v4, Landroid/util/Pair;

    new-instance v5, Ljava/lang/ref/WeakReference;

    iget-object v6, p0, Lcom/canhub/cropper/CropImageView;->m:Landroid/graphics/Bitmap;

    invoke-direct {v5, v6}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v4, v2, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Lcom/canhub/cropper/BitmapUtils;->setMStateBitmap(Landroid/util/Pair;)V

    const-string v3, "LOADED_IMAGE_STATE_BITMAP_KEY"

    invoke-virtual {v0, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v2, p0, Lcom/canhub/cropper/CropImageView;->F0:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/canhub/cropper/BitmapLoadingWorkerJob;

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_4

    const-string v3, "LOADING_IMAGE_URI"

    invoke-virtual {v2}, Lcom/canhub/cropper/BitmapLoadingWorkerJob;->getUri$cropper_release()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_4
    const-string v2, "instanceState"

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v2, "LOADED_IMAGE_URI"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "LOADED_IMAGE_RESOURCE"

    iget v2, p0, Lcom/canhub/cropper/CropImageView;->t:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "LOADED_SAMPLE_SIZE"

    iget v2, p0, Lcom/canhub/cropper/CropImageView;->y0:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "DEGREES_ROTATED"

    iget v2, p0, Lcom/canhub/cropper/CropImageView;->o:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/canhub/cropper/CropImageView;->f:Lcom/canhub/cropper/CropOverlayView;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/canhub/cropper/CropOverlayView;->getInitialCropWindowRect()Landroid/graphics/Rect;

    move-result-object v1

    const-string v2, "INITIAL_CROP_RECT"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    sget-object v1, Lcom/canhub/cropper/BitmapUtils;->INSTANCE:Lcom/canhub/cropper/BitmapUtils;

    invoke-virtual {v1}, Lcom/canhub/cropper/BitmapUtils;->getRECT()Landroid/graphics/RectF;

    move-result-object v2

    iget-object v3, p0, Lcom/canhub/cropper/CropImageView;->f:Lcom/canhub/cropper/CropOverlayView;

    invoke-virtual {v3}, Lcom/canhub/cropper/CropOverlayView;->getCropWindowRect()Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v2, p0, Lcom/canhub/cropper/CropImageView;->g:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/canhub/cropper/CropImageView;->h:Landroid/graphics/Matrix;

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    iget-object v2, p0, Lcom/canhub/cropper/CropImageView;->h:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Lcom/canhub/cropper/BitmapUtils;->getRECT()Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    const-string v2, "CROP_WINDOW_RECT"

    invoke-virtual {v1}, Lcom/canhub/cropper/BitmapUtils;->getRECT()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v1, p0, Lcom/canhub/cropper/CropImageView;->f:Lcom/canhub/cropper/CropOverlayView;

    invoke-virtual {v1}, Lcom/canhub/cropper/CropOverlayView;->getCropShape()Lcom/canhub/cropper/CropImageView$CropShape;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CROP_SHAPE"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "CROP_AUTO_ZOOM_ENABLED"

    iget-boolean v2, p0, Lcom/canhub/cropper/CropImageView;->Q:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "CROP_MAX_ZOOM"

    iget v2, p0, Lcom/canhub/cropper/CropImageView;->k0:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "CROP_FLIP_HORIZONTALLY"

    iget-boolean v2, p0, Lcom/canhub/cropper/CropImageView;->p:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "CROP_FLIP_VERTICALLY"

    iget-boolean v2, p0, Lcom/canhub/cropper/CropImageView;->q:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "SHOW_CROP_LABEL"

    iget-boolean p0, p0, Lcom/canhub/cropper/CropImageView;->x:Z

    invoke-virtual {v0, v1, p0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public final onSetImageUriAsyncComplete$cropper_release(Lcom/canhub/cropper/BitmapLoadingWorkerJob$Result;)V
    .locals 7
    .param p1    # Lcom/canhub/cropper/BitmapLoadingWorkerJob$Result;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/canhub/cropper/CropImageView;->F0:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Lcom/canhub/cropper/CropImageView;->g()V

    invoke-virtual {p1}, Lcom/canhub/cropper/BitmapLoadingWorkerJob$Result;->getError()Ljava/lang/Exception;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/canhub/cropper/BitmapLoadingWorkerJob$Result;->getDegreesRotated()I

    move-result v0

    iput v0, p0, Lcom/canhub/cropper/CropImageView;->n:I

    invoke-virtual {p1}, Lcom/canhub/cropper/BitmapLoadingWorkerJob$Result;->getFlipHorizontally()Z

    move-result v0

    iput-boolean v0, p0, Lcom/canhub/cropper/CropImageView;->p:Z

    invoke-virtual {p1}, Lcom/canhub/cropper/BitmapLoadingWorkerJob$Result;->getFlipVertically()Z

    move-result v0

    iput-boolean v0, p0, Lcom/canhub/cropper/CropImageView;->q:Z

    invoke-virtual {p1}, Lcom/canhub/cropper/BitmapLoadingWorkerJob$Result;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/canhub/cropper/BitmapLoadingWorkerJob$Result;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {p1}, Lcom/canhub/cropper/BitmapLoadingWorkerJob$Result;->getLoadSampleSize()I

    move-result v5

    invoke-virtual {p1}, Lcom/canhub/cropper/BitmapLoadingWorkerJob$Result;->getDegreesRotated()I

    move-result v6

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/canhub/cropper/CropImageView;->e(Landroid/graphics/Bitmap;ILandroid/net/Uri;II)V

    :cond_0
    iget-object v0, p0, Lcom/canhub/cropper/CropImageView;->v0:Lcom/canhub/cropper/CropImageView$OnSetImageUriCompleteListener;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/canhub/cropper/BitmapLoadingWorkerJob$Result;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1}, Lcom/canhub/cropper/BitmapLoadingWorkerJob$Result;->getError()Ljava/lang/Exception;

    move-result-object p1

    invoke-interface {v0, p0, v1, p1}, Lcom/canhub/cropper/CropImageView$OnSetImageUriCompleteListener;->onSetImageUriComplete(Lcom/canhub/cropper/CropImageView;Landroid/net/Uri;Ljava/lang/Exception;)V

    :cond_1
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    if-lez p3, :cond_0

    if-lez p4, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/canhub/cropper/CropImageView;->E0:Z

    return-void
.end method

.method public final resetCropRect()V
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/canhub/cropper/CropImageView;->z0:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/canhub/cropper/CropImageView;->A0:F

    iput v0, p0, Lcom/canhub/cropper/CropImageView;->B0:F

    iget v0, p0, Lcom/canhub/cropper/CropImageView;->n:I

    iput v0, p0, Lcom/canhub/cropper/CropImageView;->o:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/canhub/cropper/CropImageView;->p:Z

    iput-boolean v0, p0, Lcom/canhub/cropper/CropImageView;->q:Z

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0, v1, v2, v0, v0}, Lcom/canhub/cropper/CropImageView;->a(FFZZ)V

    iget-object p0, p0, Lcom/canhub/cropper/CropImageView;->f:Lcom/canhub/cropper/CropOverlayView;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/canhub/cropper/CropOverlayView;->resetCropWindowRect()V

    return-void
.end method

.method public final rotateImage(I)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Lcom/canhub/cropper/CropImageView;->m:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_8

    if-gez v1, :cond_0

    rem-int/lit16 v1, v1, 0x168

    add-int/lit16 v1, v1, 0x168

    goto :goto_0

    :cond_0
    rem-int/lit16 v1, v1, 0x168

    :goto_0
    iget-object v2, v0, Lcom/canhub/cropper/CropImageView;->f:Lcom/canhub/cropper/CropOverlayView;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/canhub/cropper/CropOverlayView;->isFixAspectRatio()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_4

    const/16 v2, 0x2e

    if-gt v2, v1, :cond_1

    const/16 v2, 0x87

    if-ge v1, v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    move v2, v4

    :goto_1
    if-nez v2, :cond_3

    const/16 v2, 0xd8

    if-gt v2, v1, :cond_2

    const/16 v2, 0x131

    if-ge v1, v2, :cond_2

    move v2, v3

    goto :goto_2

    :cond_2
    move v2, v4

    :goto_2
    if-eqz v2, :cond_4

    :cond_3
    move v2, v3

    goto :goto_3

    :cond_4
    move v2, v4

    :goto_3
    sget-object v5, Lcom/canhub/cropper/BitmapUtils;->INSTANCE:Lcom/canhub/cropper/BitmapUtils;

    invoke-virtual {v5}, Lcom/canhub/cropper/BitmapUtils;->getRECT()Landroid/graphics/RectF;

    move-result-object v6

    iget-object v7, v0, Lcom/canhub/cropper/CropImageView;->f:Lcom/canhub/cropper/CropOverlayView;

    invoke-virtual {v7}, Lcom/canhub/cropper/CropOverlayView;->getCropWindowRect()Landroid/graphics/RectF;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    invoke-virtual {v5}, Lcom/canhub/cropper/BitmapUtils;->getRECT()Landroid/graphics/RectF;

    move-result-object v6

    if-eqz v2, :cond_5

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    goto :goto_4

    :cond_5
    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    :goto_4
    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    invoke-virtual {v5}, Lcom/canhub/cropper/BitmapUtils;->getRECT()Landroid/graphics/RectF;

    move-result-object v8

    if-eqz v2, :cond_6

    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v8

    goto :goto_5

    :cond_6
    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v8

    :goto_5
    div-float/2addr v8, v7

    if-eqz v2, :cond_7

    iget-boolean v2, v0, Lcom/canhub/cropper/CropImageView;->p:Z

    iget-boolean v7, v0, Lcom/canhub/cropper/CropImageView;->q:Z

    iput-boolean v7, v0, Lcom/canhub/cropper/CropImageView;->p:Z

    iput-boolean v2, v0, Lcom/canhub/cropper/CropImageView;->q:Z

    :cond_7
    iget-object v2, v0, Lcom/canhub/cropper/CropImageView;->g:Landroid/graphics/Matrix;

    iget-object v7, v0, Lcom/canhub/cropper/CropImageView;->h:Landroid/graphics/Matrix;

    invoke-virtual {v2, v7}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    invoke-virtual {v5}, Lcom/canhub/cropper/BitmapUtils;->getPOINTS()[F

    move-result-object v2

    invoke-virtual {v5}, Lcom/canhub/cropper/BitmapUtils;->getRECT()Landroid/graphics/RectF;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/RectF;->centerX()F

    move-result v7

    aput v7, v2, v4

    invoke-virtual {v5}, Lcom/canhub/cropper/BitmapUtils;->getPOINTS()[F

    move-result-object v2

    invoke-virtual {v5}, Lcom/canhub/cropper/BitmapUtils;->getRECT()Landroid/graphics/RectF;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/RectF;->centerY()F

    move-result v7

    aput v7, v2, v3

    invoke-virtual {v5}, Lcom/canhub/cropper/BitmapUtils;->getPOINTS()[F

    move-result-object v2

    const/4 v7, 0x2

    const/4 v9, 0x0

    aput v9, v2, v7

    invoke-virtual {v5}, Lcom/canhub/cropper/BitmapUtils;->getPOINTS()[F

    move-result-object v2

    const/4 v10, 0x3

    aput v9, v2, v10

    invoke-virtual {v5}, Lcom/canhub/cropper/BitmapUtils;->getPOINTS()[F

    move-result-object v2

    const/4 v11, 0x4

    const/high16 v12, 0x3f800000    # 1.0f

    aput v12, v2, v11

    invoke-virtual {v5}, Lcom/canhub/cropper/BitmapUtils;->getPOINTS()[F

    move-result-object v2

    const/4 v13, 0x5

    aput v9, v2, v13

    iget-object v2, v0, Lcom/canhub/cropper/CropImageView;->h:Landroid/graphics/Matrix;

    invoke-virtual {v5}, Lcom/canhub/cropper/BitmapUtils;->getPOINTS()[F

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/graphics/Matrix;->mapPoints([F)V

    iget v2, v0, Lcom/canhub/cropper/CropImageView;->o:I

    add-int/2addr v2, v1

    rem-int/lit16 v2, v2, 0x168

    iput v2, v0, Lcom/canhub/cropper/CropImageView;->o:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/canhub/cropper/CropImageView;->a(FFZZ)V

    iget-object v1, v0, Lcom/canhub/cropper/CropImageView;->g:Landroid/graphics/Matrix;

    invoke-virtual {v5}, Lcom/canhub/cropper/BitmapUtils;->getPOINTS2()[F

    move-result-object v2

    invoke-virtual {v5}, Lcom/canhub/cropper/BitmapUtils;->getPOINTS()[F

    move-result-object v9

    invoke-virtual {v1, v2, v9}, Landroid/graphics/Matrix;->mapPoints([F[F)V

    iget v1, v0, Lcom/canhub/cropper/CropImageView;->z0:F

    invoke-virtual {v5}, Lcom/canhub/cropper/BitmapUtils;->getPOINTS2()[F

    move-result-object v2

    aget v2, v2, v11

    invoke-virtual {v5}, Lcom/canhub/cropper/BitmapUtils;->getPOINTS2()[F

    move-result-object v9

    aget v9, v9, v7

    sub-float/2addr v2, v9

    float-to-double v14, v2

    move/from16 p1, v8

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    invoke-static {v14, v15, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    invoke-virtual {v5}, Lcom/canhub/cropper/BitmapUtils;->getPOINTS2()[F

    move-result-object v9

    aget v9, v9, v13

    invoke-virtual {v5}, Lcom/canhub/cropper/BitmapUtils;->getPOINTS2()[F

    move-result-object v16

    aget v16, v16, v10

    sub-float v9, v9, v16

    float-to-double v10, v9

    invoke-static {v10, v11, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    add-double/2addr v14, v9

    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v9

    double-to-float v9, v9

    div-float/2addr v1, v9

    iput v1, v0, Lcom/canhub/cropper/CropImageView;->z0:F

    invoke-static {v1, v12}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, v0, Lcom/canhub/cropper/CropImageView;->z0:F

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v0, v1, v9, v3, v4}, Lcom/canhub/cropper/CropImageView;->a(FFZZ)V

    iget-object v1, v0, Lcom/canhub/cropper/CropImageView;->g:Landroid/graphics/Matrix;

    invoke-virtual {v5}, Lcom/canhub/cropper/BitmapUtils;->getPOINTS2()[F

    move-result-object v9

    invoke-virtual {v5}, Lcom/canhub/cropper/BitmapUtils;->getPOINTS()[F

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Landroid/graphics/Matrix;->mapPoints([F[F)V

    invoke-virtual {v5}, Lcom/canhub/cropper/BitmapUtils;->getPOINTS2()[F

    move-result-object v1

    const/4 v9, 0x4

    aget v1, v1, v9

    invoke-virtual {v5}, Lcom/canhub/cropper/BitmapUtils;->getPOINTS2()[F

    move-result-object v9

    const/4 v2, 0x2

    aget v2, v9, v2

    sub-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    invoke-virtual {v5}, Lcom/canhub/cropper/BitmapUtils;->getPOINTS2()[F

    move-result-object v9

    aget v9, v9, v13

    invoke-virtual {v5}, Lcom/canhub/cropper/BitmapUtils;->getPOINTS2()[F

    move-result-object v10

    const/4 v11, 0x3

    aget v10, v10, v11

    sub-float/2addr v9, v10

    float-to-double v9, v9

    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    add-double/2addr v1, v7

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v1, v1

    mul-float/2addr v6, v1

    mul-float v8, p1, v1

    invoke-virtual {v5}, Lcom/canhub/cropper/BitmapUtils;->getRECT()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v5}, Lcom/canhub/cropper/BitmapUtils;->getPOINTS2()[F

    move-result-object v2

    aget v2, v2, v4

    sub-float/2addr v2, v6

    invoke-virtual {v5}, Lcom/canhub/cropper/BitmapUtils;->getPOINTS2()[F

    move-result-object v7

    aget v7, v7, v3

    sub-float/2addr v7, v8

    invoke-virtual {v5}, Lcom/canhub/cropper/BitmapUtils;->getPOINTS2()[F

    move-result-object v9

    aget v9, v9, v4

    add-float/2addr v9, v6

    invoke-virtual {v5}, Lcom/canhub/cropper/BitmapUtils;->getPOINTS2()[F

    move-result-object v6

    aget v6, v6, v3

    add-float/2addr v6, v8

    invoke-virtual {v1, v2, v7, v9, v6}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, v0, Lcom/canhub/cropper/CropImageView;->f:Lcom/canhub/cropper/CropOverlayView;

    invoke-virtual {v1}, Lcom/canhub/cropper/CropOverlayView;->resetCropOverlayView()V

    iget-object v1, v0, Lcom/canhub/cropper/CropImageView;->f:Lcom/canhub/cropper/CropOverlayView;

    invoke-virtual {v5}, Lcom/canhub/cropper/BitmapUtils;->getRECT()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/canhub/cropper/CropOverlayView;->setCropWindowRect(Landroid/graphics/RectF;)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/canhub/cropper/CropImageView;->a(FFZZ)V

    invoke-virtual {v0, v4, v4}, Lcom/canhub/cropper/CropImageView;->c(ZZ)V

    iget-object v0, v0, Lcom/canhub/cropper/CropImageView;->f:Lcom/canhub/cropper/CropOverlayView;

    invoke-virtual {v0}, Lcom/canhub/cropper/CropOverlayView;->fixCurrentCropWindowRect()V

    :cond_8
    return-void
.end method

.method public final setAspectRatio(II)V
    .locals 1

    iget-object v0, p0, Lcom/canhub/cropper/CropImageView;->f:Lcom/canhub/cropper/CropOverlayView;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lcom/canhub/cropper/CropOverlayView;->setAspectRatioX(I)V

    iget-object p1, p0, Lcom/canhub/cropper/CropImageView;->f:Lcom/canhub/cropper/CropOverlayView;

    invoke-virtual {p1, p2}, Lcom/canhub/cropper/CropOverlayView;->setAspectRatioY(I)V

    iget-object p0, p0, Lcom/canhub/cropper/CropImageView;->f:Lcom/canhub/cropper/CropOverlayView;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/canhub/cropper/CropOverlayView;->setFixedAspectRatio(Z)V

    return-void
.end method

.method public final setAutoZoomEnabled(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/canhub/cropper/CropImageView;->Q:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/canhub/cropper/CropImageView;->Q:Z

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Lcom/canhub/cropper/CropImageView;->c(ZZ)V

    iget-object p0, p0, Lcom/canhub/cropper/CropImageView;->f:Lcom/canhub/cropper/CropOverlayView;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public final setCenterMoveEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/canhub/cropper/CropImageView;->f:Lcom/canhub/cropper/CropOverlayView;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lcom/canhub/cropper/CropOverlayView;->setCenterMoveEnabled(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Lcom/canhub/cropper/CropImageView;->c(ZZ)V

    iget-object p0, p0, Lcom/canhub/cropper/CropImageView;->f:Lcom/canhub/cropper/CropOverlayView;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public final setCornerShape(Lcom/canhub/cropper/CropImageView$CropCornerShape;)V
    .locals 0
    .param p1    # Lcom/canhub/cropper/CropImageView$CropCornerShape;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/canhub/cropper/CropImageView;->f:Lcom/canhub/cropper/CropOverlayView;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/canhub/cropper/CropOverlayView;->setCropCornerShape(Lcom/canhub/cropper/CropImageView$CropCornerShape;)V

    return-void
.end method

.method public final setCropLabelText(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "cropLabelText"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/canhub/cropper/CropImageView;->y:Ljava/lang/String;

    iget-object p0, p0, Lcom/canhub/cropper/CropImageView;->f:Lcom/canhub/cropper/CropOverlayView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/canhub/cropper/CropOverlayView;->setCropLabelText(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final setCropLabelTextColor(I)V
    .locals 0

    iput p1, p0, Lcom/canhub/cropper/CropImageView;->J:I

    iget-object p0, p0, Lcom/canhub/cropper/CropImageView;->f:Lcom/canhub/cropper/CropOverlayView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/canhub/cropper/CropOverlayView;->setCropLabelTextColor(I)V

    :cond_0
    return-void
.end method

.method public final setCropLabelTextSize(F)V
    .locals 1

    invoke-virtual {p0}, Lcom/canhub/cropper/CropImageView;->getCropLabelTextSize()F

    move-result v0

    iput v0, p0, Lcom/canhub/cropper/CropImageView;->z:F

    iget-object p0, p0, Lcom/canhub/cropper/CropImageView;->f:Lcom/canhub/cropper/CropOverlayView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/canhub/cropper/CropOverlayView;->setCropLabelTextSize(F)V

    :cond_0
    return-void
.end method

.method public final setCropRect(Landroid/graphics/Rect;)V
    .locals 0
    .param p1    # Landroid/graphics/Rect;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/canhub/cropper/CropImageView;->f:Lcom/canhub/cropper/CropOverlayView;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/canhub/cropper/CropOverlayView;->setInitialCropWindowRect(Landroid/graphics/Rect;)V

    return-void
.end method

.method public final setCropShape(Lcom/canhub/cropper/CropImageView$CropShape;)V
    .locals 0
    .param p1    # Lcom/canhub/cropper/CropImageView$CropShape;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/canhub/cropper/CropImageView;->f:Lcom/canhub/cropper/CropOverlayView;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/canhub/cropper/CropOverlayView;->setCropShape(Lcom/canhub/cropper/CropImageView$CropShape;)V

    return-void
.end method

.method public final setCustomOutputUri(Landroid/net/Uri;)V
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/canhub/cropper/CropImageView;->H0:Landroid/net/Uri;

    return-void
.end method

.method public final setFixedAspectRatio(Z)V
    .locals 0

    iget-object p0, p0, Lcom/canhub/cropper/CropImageView;->f:Lcom/canhub/cropper/CropOverlayView;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/canhub/cropper/CropOverlayView;->setFixedAspectRatio(Z)V

    return-void
.end method

.method public final setFlippedHorizontally(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/canhub/cropper/CropImageView;->p:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/canhub/cropper/CropImageView;->p:Z

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/canhub/cropper/CropImageView;->a(FFZZ)V

    :cond_0
    return-void
.end method

.method public final setFlippedVertically(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/canhub/cropper/CropImageView;->q:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/canhub/cropper/CropImageView;->q:Z

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/canhub/cropper/CropImageView;->a(FFZZ)V

    :cond_0
    return-void
.end method

.method public final setGuidelines(Lcom/canhub/cropper/CropImageView$Guidelines;)V
    .locals 0
    .param p1    # Lcom/canhub/cropper/CropImageView$Guidelines;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/canhub/cropper/CropImageView;->f:Lcom/canhub/cropper/CropOverlayView;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/canhub/cropper/CropOverlayView;->setGuidelines(Lcom/canhub/cropper/CropImageView$Guidelines;)V

    return-void
.end method

.method public final setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 8
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/canhub/cropper/CropImageView;->f:Lcom/canhub/cropper/CropOverlayView;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/canhub/cropper/CropOverlayView;->setInitialCropWindowRect(Landroid/graphics/Rect;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    .line 2
    invoke-virtual/range {v2 .. v7}, Lcom/canhub/cropper/CropImageView;->e(Landroid/graphics/Bitmap;ILandroid/net/Uri;II)V

    return-void
.end method

.method public final setImageBitmap(Landroid/graphics/Bitmap;Landroidx/exifinterface/media/ExifInterface;)V
    .locals 7
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroidx/exifinterface/media/ExifInterface;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 3
    sget-object v0, Lcom/canhub/cropper/BitmapUtils;->INSTANCE:Lcom/canhub/cropper/BitmapUtils;

    invoke-virtual {v0, p1, p2}, Lcom/canhub/cropper/BitmapUtils;->orientateBitmapByExif(Landroid/graphics/Bitmap;Landroidx/exifinterface/media/ExifInterface;)Lcom/canhub/cropper/BitmapUtils$RotateBitmapResult;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Lcom/canhub/cropper/BitmapUtils$RotateBitmapResult;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p2

    .line 5
    invoke-virtual {p1}, Lcom/canhub/cropper/BitmapUtils$RotateBitmapResult;->getDegrees()I

    move-result v0

    .line 6
    invoke-virtual {p1}, Lcom/canhub/cropper/BitmapUtils$RotateBitmapResult;->getFlipHorizontally()Z

    move-result v1

    iput-boolean v1, p0, Lcom/canhub/cropper/CropImageView;->p:Z

    .line 7
    invoke-virtual {p1}, Lcom/canhub/cropper/BitmapUtils$RotateBitmapResult;->getFlipVertically()Z

    move-result v1

    iput-boolean v1, p0, Lcom/canhub/cropper/CropImageView;->q:Z

    .line 8
    invoke-virtual {p1}, Lcom/canhub/cropper/BitmapUtils$RotateBitmapResult;->getDegrees()I

    move-result p1

    iput p1, p0, Lcom/canhub/cropper/CropImageView;->n:I

    move-object v2, p2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    move-object v2, p1

    :goto_0
    move v6, v0

    .line 9
    iget-object p1, p0, Lcom/canhub/cropper/CropImageView;->f:Lcom/canhub/cropper/CropOverlayView;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/canhub/cropper/CropOverlayView;->setInitialCropWindowRect(Landroid/graphics/Rect;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v1, p0

    .line 10
    invoke-virtual/range {v1 .. v6}, Lcom/canhub/cropper/CropImageView;->e(Landroid/graphics/Bitmap;ILandroid/net/Uri;II)V

    return-void
.end method

.method public final setImageCropOptions(Lcom/canhub/cropper/CropImageOptions;)V
    .locals 1
    .param p1    # Lcom/canhub/cropper/CropImageOptions;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "options"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/canhub/cropper/CropImageOptions;->scaleType:Lcom/canhub/cropper/CropImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/canhub/cropper/CropImageView;->setScaleType(Lcom/canhub/cropper/CropImageView$ScaleType;)V

    iget-object v0, p1, Lcom/canhub/cropper/CropImageOptions;->customOutputUri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/canhub/cropper/CropImageView;->H0:Landroid/net/Uri;

    iget-object v0, p0, Lcom/canhub/cropper/CropImageView;->f:Lcom/canhub/cropper/CropOverlayView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/canhub/cropper/CropOverlayView;->setInitialAttributeValues(Lcom/canhub/cropper/CropImageOptions;)V

    :cond_0
    iget-boolean v0, p1, Lcom/canhub/cropper/CropImageOptions;->multiTouchEnabled:Z

    invoke-virtual {p0, v0}, Lcom/canhub/cropper/CropImageView;->setMultiTouchEnabled(Z)V

    iget-boolean v0, p1, Lcom/canhub/cropper/CropImageOptions;->centerMoveEnabled:Z

    invoke-virtual {p0, v0}, Lcom/canhub/cropper/CropImageView;->setCenterMoveEnabled(Z)V

    iget-boolean v0, p1, Lcom/canhub/cropper/CropImageOptions;->showCropOverlay:Z

    invoke-virtual {p0, v0}, Lcom/canhub/cropper/CropImageView;->setShowCropOverlay(Z)V

    iget-boolean v0, p1, Lcom/canhub/cropper/CropImageOptions;->showProgressBar:Z

    invoke-virtual {p0, v0}, Lcom/canhub/cropper/CropImageView;->setShowProgressBar(Z)V

    iget-boolean v0, p1, Lcom/canhub/cropper/CropImageOptions;->autoZoomEnabled:Z

    invoke-virtual {p0, v0}, Lcom/canhub/cropper/CropImageView;->setAutoZoomEnabled(Z)V

    iget v0, p1, Lcom/canhub/cropper/CropImageOptions;->maxZoom:I

    invoke-virtual {p0, v0}, Lcom/canhub/cropper/CropImageView;->setMaxZoom(I)V

    iget-boolean v0, p1, Lcom/canhub/cropper/CropImageOptions;->flipHorizontally:Z

    invoke-virtual {p0, v0}, Lcom/canhub/cropper/CropImageView;->setFlippedHorizontally(Z)V

    iget-boolean v0, p1, Lcom/canhub/cropper/CropImageOptions;->flipVertically:Z

    invoke-virtual {p0, v0}, Lcom/canhub/cropper/CropImageView;->setFlippedVertically(Z)V

    iget-boolean v0, p1, Lcom/canhub/cropper/CropImageOptions;->autoZoomEnabled:Z

    iput-boolean v0, p0, Lcom/canhub/cropper/CropImageView;->Q:Z

    iget-boolean v0, p1, Lcom/canhub/cropper/CropImageOptions;->showCropOverlay:Z

    iput-boolean v0, p0, Lcom/canhub/cropper/CropImageView;->w:Z

    iget-boolean v0, p1, Lcom/canhub/cropper/CropImageOptions;->showProgressBar:Z

    iput-boolean v0, p0, Lcom/canhub/cropper/CropImageView;->O:Z

    iget-object p0, p0, Lcom/canhub/cropper/CropImageView;->i:Landroid/widget/ProgressBar;

    iget p1, p1, Lcom/canhub/cropper/CropImageOptions;->progressBarColor:I

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar;->setIndeterminateTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public final setImageResource(I)V
    .locals 7

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/canhub/cropper/CropImageView;->f:Lcom/canhub/cropper/CropOverlayView;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/canhub/cropper/CropOverlayView;->setInitialCropWindowRect(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, p0

    move v3, p1

    invoke-virtual/range {v1 .. v6}, Lcom/canhub/cropper/CropImageView;->e(Landroid/graphics/Bitmap;ILandroid/net/Uri;II)V

    :cond_0
    return-void
.end method

.method public final setImageUriAsync(Landroid/net/Uri;)V
    .locals 4
    .param p1    # Landroid/net/Uri;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/canhub/cropper/CropImageView;->F0:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/canhub/cropper/BitmapLoadingWorkerJob;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/canhub/cropper/BitmapLoadingWorkerJob;->cancel()V

    :cond_0
    invoke-virtual {p0}, Lcom/canhub/cropper/CropImageView;->b()V

    iget-object v0, p0, Lcom/canhub/cropper/CropImageView;->f:Lcom/canhub/cropper/CropOverlayView;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/canhub/cropper/CropOverlayView;->setInitialCropWindowRect(Landroid/graphics/Rect;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    new-instance v1, Lcom/canhub/cropper/BitmapLoadingWorkerJob;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "context"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v2, p0, p1}, Lcom/canhub/cropper/BitmapLoadingWorkerJob;-><init>(Landroid/content/Context;Lcom/canhub/cropper/CropImageView;Landroid/net/Uri;)V

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/canhub/cropper/CropImageView;->F0:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/canhub/cropper/BitmapLoadingWorkerJob;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/canhub/cropper/BitmapLoadingWorkerJob;->start()V

    :cond_1
    invoke-virtual {p0}, Lcom/canhub/cropper/CropImageView;->g()V

    :cond_2
    return-void
.end method

.method public final setMaxCropResultSize(II)V
    .locals 0

    iget-object p0, p0, Lcom/canhub/cropper/CropImageView;->f:Lcom/canhub/cropper/CropOverlayView;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p1, p2}, Lcom/canhub/cropper/CropOverlayView;->setMaxCropResultSize(II)V

    return-void
.end method

.method public final setMaxZoom(I)V
    .locals 1

    iget v0, p0, Lcom/canhub/cropper/CropImageView;->k0:I

    if-eq v0, p1, :cond_0

    if-lez p1, :cond_0

    iput p1, p0, Lcom/canhub/cropper/CropImageView;->k0:I

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Lcom/canhub/cropper/CropImageView;->c(ZZ)V

    iget-object p0, p0, Lcom/canhub/cropper/CropImageView;->f:Lcom/canhub/cropper/CropOverlayView;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public final setMinCropResultSize(II)V
    .locals 0

    iget-object p0, p0, Lcom/canhub/cropper/CropImageView;->f:Lcom/canhub/cropper/CropOverlayView;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p1, p2}, Lcom/canhub/cropper/CropOverlayView;->setMinCropResultSize(II)V

    return-void
.end method

.method public final setMultiTouchEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/canhub/cropper/CropImageView;->f:Lcom/canhub/cropper/CropOverlayView;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lcom/canhub/cropper/CropOverlayView;->setMultiTouchEnabled(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Lcom/canhub/cropper/CropImageView;->c(ZZ)V

    iget-object p0, p0, Lcom/canhub/cropper/CropImageView;->f:Lcom/canhub/cropper/CropOverlayView;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public final setOnCropImageCompleteListener(Lcom/canhub/cropper/CropImageView$OnCropImageCompleteListener;)V
    .locals 0
    .param p1    # Lcom/canhub/cropper/CropImageView$OnCropImageCompleteListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/canhub/cropper/CropImageView;->w0:Lcom/canhub/cropper/CropImageView$OnCropImageCompleteListener;

    return-void
.end method

.method public final setOnCropWindowChangedListener(Lcom/canhub/cropper/CropImageView$OnSetCropWindowChangeListener;)V
    .locals 0
    .param p1    # Lcom/canhub/cropper/CropImageView$OnSetCropWindowChangeListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/canhub/cropper/CropImageView;->u0:Lcom/canhub/cropper/CropImageView$OnSetCropWindowChangeListener;

    return-void
.end method

.method public final setOnSetCropOverlayMovedListener(Lcom/canhub/cropper/CropImageView$OnSetCropOverlayMovedListener;)V
    .locals 0
    .param p1    # Lcom/canhub/cropper/CropImageView$OnSetCropOverlayMovedListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/canhub/cropper/CropImageView;->t0:Lcom/canhub/cropper/CropImageView$OnSetCropOverlayMovedListener;

    return-void
.end method

.method public final setOnSetCropOverlayReleasedListener(Lcom/canhub/cropper/CropImageView$OnSetCropOverlayReleasedListener;)V
    .locals 0
    .param p1    # Lcom/canhub/cropper/CropImageView$OnSetCropOverlayReleasedListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/canhub/cropper/CropImageView;->q0:Lcom/canhub/cropper/CropImageView$OnSetCropOverlayReleasedListener;

    return-void
.end method

.method public final setOnSetImageUriCompleteListener(Lcom/canhub/cropper/CropImageView$OnSetImageUriCompleteListener;)V
    .locals 0
    .param p1    # Lcom/canhub/cropper/CropImageView$OnSetImageUriCompleteListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/canhub/cropper/CropImageView;->v0:Lcom/canhub/cropper/CropImageView$OnSetImageUriCompleteListener;

    return-void
.end method

.method public final setRotatedDegrees(I)V
    .locals 1

    iget v0, p0, Lcom/canhub/cropper/CropImageView;->o:I

    if-eq v0, p1, :cond_0

    sub-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/canhub/cropper/CropImageView;->rotateImage(I)V

    :cond_0
    return-void
.end method

.method public final setSaveBitmapToInstanceState(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/canhub/cropper/CropImageView;->v:Z

    return-void
.end method

.method public final setScaleType(Lcom/canhub/cropper/CropImageView$ScaleType;)V
    .locals 1
    .param p1    # Lcom/canhub/cropper/CropImageView$ScaleType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "scaleType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/canhub/cropper/CropImageView;->u:Lcom/canhub/cropper/CropImageView$ScaleType;

    if-eq p1, v0, :cond_1

    iput-object p1, p0, Lcom/canhub/cropper/CropImageView;->u:Lcom/canhub/cropper/CropImageView$ScaleType;

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/canhub/cropper/CropImageView;->z0:F

    const/4 p1, 0x0

    iput p1, p0, Lcom/canhub/cropper/CropImageView;->B0:F

    iput p1, p0, Lcom/canhub/cropper/CropImageView;->A0:F

    iget-object p1, p0, Lcom/canhub/cropper/CropImageView;->f:Lcom/canhub/cropper/CropOverlayView;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/canhub/cropper/CropOverlayView;->resetCropOverlayView()V

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_1
    return-void
.end method

.method public final setShowCropLabel(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/canhub/cropper/CropImageView;->x:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/canhub/cropper/CropImageView;->x:Z

    iget-object p0, p0, Lcom/canhub/cropper/CropImageView;->f:Lcom/canhub/cropper/CropOverlayView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/canhub/cropper/CropOverlayView;->setCropperTextLabelVisibility(Z)V

    :cond_0
    return-void
.end method

.method public final setShowCropOverlay(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/canhub/cropper/CropImageView;->w:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/canhub/cropper/CropImageView;->w:Z

    invoke-virtual {p0}, Lcom/canhub/cropper/CropImageView;->f()V

    :cond_0
    return-void
.end method

.method public final setShowProgressBar(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/canhub/cropper/CropImageView;->O:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/canhub/cropper/CropImageView;->O:Z

    invoke-virtual {p0}, Lcom/canhub/cropper/CropImageView;->g()V

    :cond_0
    return-void
.end method

.method public final setSnapRadius(F)V
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    iget-object p0, p0, Lcom/canhub/cropper/CropImageView;->f:Lcom/canhub/cropper/CropOverlayView;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/canhub/cropper/CropOverlayView;->setSnapRadius(F)V

    :cond_0
    return-void
.end method

.method public final startCropWorkerTask(IILcom/canhub/cropper/CropImageView$RequestSizeOptions;Landroid/graphics/Bitmap$CompressFormat;ILandroid/net/Uri;)V
    .locals 25
    .param p3    # Lcom/canhub/cropper/CropImageView$RequestSizeOptions;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroid/graphics/Bitmap$CompressFormat;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Landroid/net/Uri;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    move-object/from16 v0, p0

    move-object/from16 v15, p3

    const-string v1, "options"

    invoke-static {v15, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "saveCompressFormat"

    move-object/from16 v14, p4

    invoke-static {v14, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, v0, Lcom/canhub/cropper/CropImageView;->m:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_7

    iget-object v1, v0, Lcom/canhub/cropper/CropImageView;->G0:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/canhub/cropper/BitmapCroppingWorkerJob;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/canhub/cropper/BitmapCroppingWorkerJob;->cancel()V

    :cond_1
    iget v1, v0, Lcom/canhub/cropper/CropImageView;->y0:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-gt v1, v2, :cond_3

    sget-object v1, Lcom/canhub/cropper/CropImageView$RequestSizeOptions;->SAMPLING:Lcom/canhub/cropper/CropImageView$RequestSizeOptions;

    if-ne v15, v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance v1, Landroid/util/Pair;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v1, v2, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    :goto_1
    new-instance v1, Landroid/util/Pair;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget v4, v0, Lcom/canhub/cropper/CropImageView;->y0:I

    mul-int/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    iget v6, v0, Lcom/canhub/cropper/CropImageView;->y0:I

    mul-int/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v1, v2, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_2
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    new-instance v13, Ljava/lang/ref/WeakReference;

    new-instance v12, Lcom/canhub/cropper/BitmapCroppingWorkerJob;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v6, "context"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v6, Ljava/lang/ref/WeakReference;

    invoke-direct {v6, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v7, v0, Lcom/canhub/cropper/CropImageView;->x0:Landroid/net/Uri;

    invoke-virtual/range {p0 .. p0}, Lcom/canhub/cropper/CropImageView;->getCropPoints()[F

    move-result-object v8

    iget v9, v0, Lcom/canhub/cropper/CropImageView;->o:I

    const-string v10, "orgWidth"

    invoke-static {v2, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v10

    const-string v2, "orgHeight"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v11

    iget-object v1, v0, Lcom/canhub/cropper/CropImageView;->f:Lcom/canhub/cropper/CropOverlayView;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/canhub/cropper/CropOverlayView;->isFixAspectRatio()Z

    move-result v16

    iget-object v1, v0, Lcom/canhub/cropper/CropImageView;->f:Lcom/canhub/cropper/CropOverlayView;

    invoke-virtual {v1}, Lcom/canhub/cropper/CropOverlayView;->getAspectRatioX()I

    move-result v17

    iget-object v1, v0, Lcom/canhub/cropper/CropImageView;->f:Lcom/canhub/cropper/CropOverlayView;

    invoke-virtual {v1}, Lcom/canhub/cropper/CropOverlayView;->getAspectRatioY()I

    move-result v18

    sget-object v1, Lcom/canhub/cropper/CropImageView$RequestSizeOptions;->NONE:Lcom/canhub/cropper/CropImageView$RequestSizeOptions;

    if-eq v15, v1, :cond_4

    move/from16 v19, p1

    goto :goto_3

    :cond_4
    move/from16 v19, v3

    :goto_3
    if-eq v15, v1, :cond_5

    move/from16 v20, p2

    goto :goto_4

    :cond_5
    move/from16 v20, v3

    :goto_4
    iget-boolean v3, v0, Lcom/canhub/cropper/CropImageView;->p:Z

    iget-boolean v2, v0, Lcom/canhub/cropper/CropImageView;->q:Z

    if-nez p6, :cond_6

    iget-object v1, v0, Lcom/canhub/cropper/CropImageView;->H0:Landroid/net/Uri;

    move-object/from16 v21, v1

    goto :goto_5

    :cond_6
    move-object/from16 v21, p6

    :goto_5
    move-object v1, v12

    move/from16 v22, v2

    move-object v2, v4

    move/from16 v23, v3

    move-object v3, v6

    move-object v4, v7

    move-object v6, v8

    move v7, v9

    move v8, v10

    move v9, v11

    move/from16 v10, v16

    move/from16 v11, v17

    move-object v0, v12

    move/from16 v12, v18

    move-object/from16 v24, v13

    move/from16 v13, v19

    move/from16 v14, v20

    move/from16 v15, v23

    move/from16 v16, v22

    move-object/from16 v17, p3

    move-object/from16 v18, p4

    move/from16 v19, p5

    move-object/from16 v20, v21

    invoke-direct/range {v1 .. v20}, Lcom/canhub/cropper/BitmapCroppingWorkerJob;-><init>(Landroid/content/Context;Ljava/lang/ref/WeakReference;Landroid/net/Uri;Landroid/graphics/Bitmap;[FIIIZIIIIZZLcom/canhub/cropper/CropImageView$RequestSizeOptions;Landroid/graphics/Bitmap$CompressFormat;ILandroid/net/Uri;)V

    move-object/from16 v1, v24

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/canhub/cropper/CropImageView;->G0:Ljava/lang/ref/WeakReference;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Lcom/canhub/cropper/BitmapCroppingWorkerJob;

    invoke-virtual {v1}, Lcom/canhub/cropper/BitmapCroppingWorkerJob;->start()V

    invoke-virtual/range {p0 .. p0}, Lcom/canhub/cropper/CropImageView;->g()V

    :cond_7
    return-void
.end method
