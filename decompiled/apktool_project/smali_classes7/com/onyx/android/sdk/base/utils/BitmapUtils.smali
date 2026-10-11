.class public final Lcom/onyx/android/sdk/base/utils/BitmapUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBitmapUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BitmapUtils.kt\ncom/onyx/android/sdk/base/utils/BitmapUtils\n+ 2 Any.kt\ncom/onyx/android/sdk/base/extension/AnyKt\n*L\n1#1,817:1\n32#2,5:818\n*S KotlinDebug\n*F\n+ 1 BitmapUtils.kt\ncom/onyx/android/sdk/base/utils/BitmapUtils\n*L\n780#1:818,5\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00de\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010 \n\u0002\u0008\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0011\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0012\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0015\n\u0002\u0008\u0019\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0004\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u001b\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u000b\u0008\u0002\u00a2\u0006\u0006\u0008\u00b9\u0001\u0010\u00ba\u0001J\"\u0010\u0008\u001a\u00020\u00072\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u000e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004H\u0002J\u001a\u0010\n\u001a\u00020\u00072\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\t\u001a\u00020\u0005H\u0002J\u0006\u0010\u000c\u001a\u00020\u000bJ\u000e\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\u000bJ\u0012\u0010\u0010\u001a\u0004\u0018\u00010\u00072\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002J\u0014\u0010\u0013\u001a\u0004\u0018\u00010\u00072\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0011H\u0007J\u0014\u0010\u0014\u001a\u0004\u0018\u00010\u00072\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0011H\u0007J\u001a\u0010\u0016\u001a\u00020\u000b2\u0006\u0010\u0015\u001a\u00020\u00072\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0007J\"\u0010\u0016\u001a\u00020\u000b2\u0006\u0010\u0015\u001a\u00020\u00072\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0017\u001a\u00020\u000bH\u0007J\u001a\u0010\u001c\u001a\u0004\u0018\u00010\u00072\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u00182\u0006\u0010\u001b\u001a\u00020\u001aJ$\u0010 \u001a\u0004\u0018\u00010\u00072\u0006\u0010\u001d\u001a\u00020\u001a2\u0008\u0008\u0002\u0010\u001e\u001a\u00020\u001a2\u0008\u0008\u0002\u0010\u001f\u001a\u00020\u001aJ\u0016\u0010$\u001a\u00020!2\u0006\u0010\"\u001a\u00020!2\u0006\u0010#\u001a\u00020!J \u0010(\u001a\u00020\u00072\u0006\u0010%\u001a\u00020\u00072\u0006\u0010&\u001a\u00020\u001a2\u0006\u0010\'\u001a\u00020\u001aH\u0007J\u0018\u0010-\u001a\u00020\u000b2\u0008\u0010*\u001a\u0004\u0018\u00010)2\u0006\u0010,\u001a\u00020+J\u0016\u0010/\u001a\u00020\u000b2\u0006\u0010.\u001a\u00020\u00022\u0006\u0010,\u001a\u00020+J \u00103\u001a\u0004\u0018\u00010\u00072\u0006\u00101\u001a\u0002002\u0006\u0010.\u001a\u00020\u00022\u0006\u00102\u001a\u00020!J\u0018\u0010-\u001a\u00020\u000b2\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010,\u001a\u00020+J\u0018\u00104\u001a\u00020\u000b2\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010,\u001a\u00020+J\u0010\u00105\u001a\u00020\u001a2\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002J\u0010\u00106\u001a\u00020\u000e2\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0007J\u0010\u00107\u001a\u00020\u000e2\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0007J\u0016\u00107\u001a\u00020\u000e2\u000e\u00109\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000708J\u0012\u0010:\u001a\u00020\u001a2\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0007H\u0007J\u0012\u0010;\u001a\u00020\u000b2\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0007H\u0007J\u0012\u0010<\u001a\u00020\u000b2\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0007H\u0007J.\u0010B\u001a\u00020!2\u0006\u0010=\u001a\u00020\u001a2\u0006\u0010>\u001a\u00020\u001a2\u0006\u0010?\u001a\u00020\u001a2\u0006\u0010@\u001a\u00020\u001a2\u0006\u0010A\u001a\u00020\u000bJT\u0010I\u001a\u0004\u0018\u00010\u00072\u0008\u0010C\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u001f\u001a\u00020\u001a2\u0006\u0010D\u001a\u00020\u001a2\u0006\u0010E\u001a\u00020\u000b2\u0006\u0010F\u001a\u00020\u000b2\u0006\u0010\u0017\u001a\u00020\u000b2\u0006\u0010G\u001a\u00020\u000b2\u0006\u0010H\u001a\u00020\u001a2\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002J\u0016\u0010L\u001a\u00020\u000e2\u0006\u0010*\u001a\u00020J2\u0006\u0010K\u001a\u00020\u001aJ\u0016\u0010N\u001a\u00020\u000e2\u0006\u0010*\u001a\u00020J2\u0006\u0010K\u001a\u00020MJ\u0016\u0010O\u001a\u00020\u000e2\u0006\u0010*\u001a\u00020J2\u0006\u0010K\u001a\u00020MJ\u001e\u0010S\u001a\u00020\u001a2\u0006\u0010P\u001a\u00020\u00052\u0006\u0010Q\u001a\u00020\u001a2\u0006\u0010R\u001a\u00020\u001aJ&\u0010S\u001a\u00020\u001a2\u0006\u0010\u001e\u001a\u00020\u001a2\u0006\u0010\u001f\u001a\u00020\u001a2\u0006\u0010Q\u001a\u00020\u001a2\u0006\u0010R\u001a\u00020\u001aJ\u0016\u0010S\u001a\u00020\u001a2\u0006\u0010\u001e\u001a\u00020\u001a2\u0006\u0010Q\u001a\u00020\u001aJ\"\u0010V\u001a\u0004\u0018\u00010\u00072\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010T\u001a\u00020\u001a2\u0006\u0010U\u001a\u00020\u001aJ*\u0010V\u001a\u0004\u0018\u00010\u00072\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010T\u001a\u00020\u001a2\u0006\u0010U\u001a\u00020\u001a2\u0006\u0010W\u001a\u00020\u000bJ\u001a\u0010X\u001a\u0004\u0018\u00010\u00072\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010T\u001a\u00020\u001aJ\u001a\u0010Y\u001a\u0004\u0018\u00010\u00072\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010T\u001a\u00020\u001aJ \u0010\\\u001a\u00020\u001a2\u0006\u0010\u0015\u001a\u00020\u00072\u0006\u0010Z\u001a\u00020\u001a2\u0006\u0010[\u001a\u00020\u001aH\u0007J\u0016\u0010]\u001a\u00020\u001a2\u0006\u0010Z\u001a\u00020\u001a2\u0006\u0010[\u001a\u00020\u001aJ\u0006\u0010^\u001a\u00020\u001aJ6\u0010h\u001a\u0004\u0018\u00010\u00072\u0006\u0010`\u001a\u00020_2\u0006\u0010b\u001a\u00020a2\u0006\u0010c\u001a\u00020a2\u0008\u0010e\u001a\u0004\u0018\u00010d2\n\u0008\u0002\u0010g\u001a\u0004\u0018\u00010fJ>\u0010h\u001a\u0004\u0018\u00010\u00072\u0006\u00101\u001a\u0002002\u0006\u0010\u001d\u001a\u00020\u001a2\u0006\u0010b\u001a\u00020a2\u0006\u0010c\u001a\u00020a2\u0008\u0010e\u001a\u0004\u0018\u00010d2\n\u0008\u0002\u0010g\u001a\u0004\u0018\u00010fJ\u001a\u0010i\u001a\u0004\u0018\u00010\u00072\u0008\u00101\u001a\u0004\u0018\u0001002\u0006\u0010\u001d\u001a\u00020\u001aJ6\u0010p\u001a\u00020\u000e2\u0006\u0010k\u001a\u00020j2\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u00072\u0008\u0010l\u001a\u0004\u0018\u00010!2\u0008\u0010m\u001a\u0004\u0018\u00010!2\u0008\u0010o\u001a\u0004\u0018\u00010nJ(\u0010r\u001a\u00020\u000e2\u0006\u0010k\u001a\u00020j2\u0006\u0010\u0015\u001a\u00020\u00072\u0006\u0010q\u001a\u00020!2\u0008\u0010o\u001a\u0004\u0018\u00010nJ\u000e\u0010s\u001a\u00020\u000e2\u0006\u0010`\u001a\u00020_J*\u0010i\u001a\u0004\u0018\u00010\u00072\u0008\u00101\u001a\u0004\u0018\u0001002\u0006\u0010\u001d\u001a\u00020\u001a2\u0006\u0010\u001e\u001a\u00020\u001a2\u0006\u0010\u001f\u001a\u00020\u001aJ;\u0010i\u001a\u0004\u0018\u00010\u00072\u0008\u00101\u001a\u0004\u0018\u0001002\u0006\u0010\u001d\u001a\u00020\u001a2\u0006\u0010\u001e\u001a\u00020\u001a2\u0006\u0010\u001f\u001a\u00020\u001a2\u0008\u0010t\u001a\u0004\u0018\u00010\u001a\u00a2\u0006\u0004\u0008i\u0010uJ,\u0010|\u001a\u0004\u0018\u00010\u00072\u0008\u0010w\u001a\u0004\u0018\u00010v2\u0006\u0010x\u001a\u00020\u001a2\u0006\u0010y\u001a\u00020\u001a2\u0008\u0010{\u001a\u0004\u0018\u00010zJ\u000e\u0010\u007f\u001a\u00020~2\u0006\u0010}\u001a\u00020vJ\u001b\u0010\u0080\u0001\u001a\u0004\u0018\u00010\u00072\u0008\u00101\u001a\u0004\u0018\u0001002\u0006\u0010\u001d\u001a\u00020\u001aJ%\u0010\u0082\u0001\u001a\u0004\u0018\u00010_2\u0007\u0010\u0081\u0001\u001a\u00020\u001a2\u0008\u0010t\u001a\u0004\u0018\u00010\u001a\u00a2\u0006\u0006\u0008\u0082\u0001\u0010\u0083\u0001J&\u0010\u0082\u0001\u001a\u0004\u0018\u00010_2\u0008\u0010`\u001a\u0004\u0018\u00010_2\u0008\u0010t\u001a\u0004\u0018\u00010\u001a\u00a2\u0006\u0006\u0008\u0082\u0001\u0010\u0084\u0001J\u000f\u0010\u0085\u0001\u001a\u00020\u000e2\u0006\u0010o\u001a\u00020nJ\u0007\u0010\u0086\u0001\u001a\u00020nJ*\u0010\u008a\u0001\u001a\u00020\u001a2\u0007\u0010\u0087\u0001\u001a\u00020~2\u0007\u0010\u0088\u0001\u001a\u00020\u001a2\u0007\u0010\u0089\u0001\u001a\u00020\u001a2\u0006\u0010\u001e\u001a\u00020\u001aJ3\u0010\u008c\u0001\u001a\u00020\u000e2\u0007\u0010\u0087\u0001\u001a\u00020~2\u0007\u0010\u0088\u0001\u001a\u00020\u001a2\u0007\u0010\u0089\u0001\u001a\u00020\u001a2\u0007\u0010\u008b\u0001\u001a\u00020\u001a2\u0006\u0010\u001e\u001a\u00020\u001aJ\u0010\u0010\u008e\u0001\u001a\u00020\u000b2\u0007\u0010\u008d\u0001\u001a\u00020\u0002J\u0019\u0010\u0091\u0001\u001a\u00020\u00022\u0007\u0010\u008f\u0001\u001a\u00020\u00022\u0007\u0010\u0090\u0001\u001a\u00020\u001aJ\u0019\u0010\u0094\u0001\u001a\u00020+2\u0007\u0010\u0092\u0001\u001a\u00020+2\u0007\u0010\u0093\u0001\u001a\u00020+J\u0012\u0010\u0096\u0001\u001a\u0004\u0018\u00010\u00072\u0007\u0010\u0095\u0001\u001a\u00020aJ\u0010\u0010\u0097\u0001\u001a\u00020\u00072\u0007\u0010\u0095\u0001\u001a\u00020aJ\u0014\u0010V\u001a\u0004\u0018\u00010\u00072\n\u0010\u0099\u0001\u001a\u0005\u0018\u00010\u0098\u0001J\u0019\u0010\u009b\u0001\u001a\u00020\u000e2\u0007\u0010\u001e\u001a\u00030\u009a\u00012\u0007\u0010\u001f\u001a\u00030\u009a\u0001J\"\u0010\u009f\u0001\u001a\u00020d2\u0007\u0010\u009c\u0001\u001a\u00020\u00072\u0006\u0010c\u001a\u00020a2\u0008\u0010\u009e\u0001\u001a\u00030\u009d\u0001J#\u0010\u009f\u0001\u001a\u00020d2\u0008\u0010\u00a1\u0001\u001a\u00030\u00a0\u00012\u0006\u0010c\u001a\u00020a2\u0008\u0010\u009e\u0001\u001a\u00030\u009d\u0001J\"\u0010\u009f\u0001\u001a\u00020d2\u0007\u0010\u00a2\u0001\u001a\u00020a2\u0006\u0010c\u001a\u00020a2\u0008\u0010\u009e\u0001\u001a\u00030\u009d\u0001R \u0010\u00a6\u0001\u001a\u000b \u00a3\u0001*\u0004\u0018\u00010\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00a4\u0001\u0010\u00a5\u0001R\u0016\u0010\u00a8\u0001\u001a\u00020+8\u0002X\u0082\u0004\u00a2\u0006\u0007\n\u0005\u0008}\u0010\u00a7\u0001R\u0017\u0010\u00a9\u0001\u001a\u00020\u001a8\u0006X\u0086T\u00a2\u0006\u0008\n\u0006\u0008\u00a9\u0001\u0010\u00aa\u0001R\u0017\u0010\u00ab\u0001\u001a\u00020\u001a8\u0006X\u0086T\u00a2\u0006\u0008\n\u0006\u0008\u00ab\u0001\u0010\u00aa\u0001R\u0017\u0010\u00ac\u0001\u001a\u00020\u001a8\u0006X\u0086T\u00a2\u0006\u0008\n\u0006\u0008\u00ac\u0001\u0010\u00aa\u0001R\u0017\u0010\u00ad\u0001\u001a\u00020\u001a8\u0006X\u0086T\u00a2\u0006\u0008\n\u0006\u0008\u00ad\u0001\u0010\u00aa\u0001R\u0017\u0010\u00ae\u0001\u001a\u00020\u001a8\u0006X\u0086T\u00a2\u0006\u0008\n\u0006\u0008\u00ae\u0001\u0010\u00aa\u0001R\u001b\u0010o\u001a\u00020n8\u0006\u00a2\u0006\u0010\n\u0006\u0008\u00af\u0001\u0010\u00b0\u0001\u001a\u0006\u0008\u00b1\u0001\u0010\u00b2\u0001R\u001b\u0010\u00b6\u0001\u001a\u00020f8\u0006\u00a2\u0006\u000f\n\u0005\u0008\u0008\u0010\u00b3\u0001\u001a\u0006\u0008\u00b4\u0001\u0010\u00b5\u0001R\u0018\u0010\r\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00b7\u0001\u0010\u00b8\u0001\u00a8\u0006\u00bb\u0001"
    }
    d2 = {
        "Lcom/onyx/android/sdk/base/utils/BitmapUtils;",
        "",
        "",
        "path",
        "Lio/reactivex/rxjava3/functions/Consumer;",
        "Landroid/graphics/BitmapFactory$Options;",
        "optionsCallback",
        "Landroid/graphics/Bitmap;",
        "d",
        "outOptions",
        "g",
        "",
        "isAntiAlias",
        "antiAlias",
        "",
        "setAntiAlias",
        "loadBitmapFromFile",
        "Landroid/view/View;",
        "view",
        "loadBitmapFromView",
        "loadBitmapFromDrawingCache",
        "bitmap",
        "saveBitmap",
        "overrideFilePermission",
        "Landroid/content/res/Resources;",
        "res",
        "",
        "id",
        "decodeResourceSafely",
        "drawableId",
        "width",
        "height",
        "decodeVectorBitmap",
        "Landroid/graphics/Rect;",
        "srcRect",
        "dstRect",
        "getScaleFitCenterRect",
        "origin",
        "newWidth",
        "newHeight",
        "createScaledBitmap",
        "Ljava/io/InputStream;",
        "stream",
        "Lcom/onyx/android/sdk/base/data/Size;",
        "size",
        "decodeBitmapSize",
        "fileName",
        "decodeAssetResBitmapSize",
        "Landroid/content/Context;",
        "context",
        "bitmapRect",
        "decodeAssetResToBitmap",
        "decodeBitmapSizeSupportExif",
        "getImageOrientation",
        "clear",
        "recycle",
        "",
        "bitmaps",
        "getSizeInBytes",
        "isValid",
        "isRecycled",
        "renderTargetHeight",
        "renderTargetWidth",
        "sourceHeight",
        "sourceWidth",
        "zoomToWidth",
        "getScaleInSideAndCenterRect",
        "targetString",
        "textSize",
        "boldText",
        "saveToDisk",
        "needRotation",
        "rotationAngle",
        "buildBitmapFromText",
        "Ljava/io/FileOutputStream;",
        "value",
        "writeWord",
        "",
        "writeDword",
        "writeLong",
        "options",
        "reqWidth",
        "reqHeight",
        "calculateInSampleSize",
        "targetWidth",
        "targetHeight",
        "decodeBitmap",
        "isWhiteBG",
        "decodeWidthRatioBitmap",
        "scaleToWidthRatioBitmap",
        "defaultValue",
        "limitValue",
        "calculateBitmapSampleSize",
        "getMaxImageSize",
        "getMaxTextureSize",
        "Landroid/graphics/drawable/Drawable;",
        "drawable",
        "Landroid/graphics/RectF;",
        "originRectF",
        "displayRectF",
        "Landroid/graphics/Matrix;",
        "matrix",
        "Landroid/graphics/ColorFilter;",
        "colorFilter",
        "getBitmapFromVectorDrawableBySize",
        "getBitmapFromVectorDrawable",
        "Landroid/graphics/Canvas;",
        "canvas",
        "src",
        "dst",
        "Landroid/graphics/Paint;",
        "paint",
        "safelyDrawBitmap",
        "rect",
        "drawCenterBitmap",
        "invert",
        "tintColor",
        "(Landroid/content/Context;IIILjava/lang/Integer;)Landroid/graphics/Bitmap;",
        "",
        "data",
        "imageWidth",
        "imageHeight",
        "Landroid/graphics/Bitmap$Config;",
        "config",
        "createBitmap",
        "b",
        "",
        "my_bb_to_int_le",
        "loadBitmapFromResources",
        "redId",
        "getTintDrawable",
        "(ILjava/lang/Integer;)Landroid/graphics/drawable/Drawable;",
        "(Landroid/graphics/drawable/Drawable;Ljava/lang/Integer;)Landroid/graphics/drawable/Drawable;",
        "updateBitmapPaint",
        "createBitmapPaint",
        "pixels",
        "x",
        "y",
        "getPixel",
        "color",
        "setPixel",
        "filePath",
        "isJpegImage",
        "srcFile",
        "maxImageSize",
        "scaleImageFileWithMaxSizeLimit",
        "pageSize",
        "defaultThumbSize",
        "getThumbnailSize",
        "rectF",
        "createBitmapOrNull",
        "ensureBitmapNotNull",
        "Landroid/net/Uri;",
        "uri",
        "",
        "checkBitmapDecodeSize",
        "decodedBitmap",
        "",
        "rotation",
        "calculateRotationMatrix",
        "Lcom/onyx/android/sdk/base/data/SizeF;",
        "decodedSizeF",
        "layoutRectF",
        "kotlin.jvm.PlatformType",
        "a",
        "Ljava/lang/String;",
        "TAG",
        "Lcom/onyx/android/sdk/base/data/Size;",
        "ENSURE_BITMAP_NOT_NULL_SIZE",
        "MASK",
        "I",
        "MAX_BITMAP_PIXEL_DECODE_WIDTH",
        "MAX_BITMAP_PIXEL_DECODE_HEIGHT",
        "MAX_BITMAP_PIXEL_DECODE_SIZE",
        "MAX_BITMAP_EXPORT_SIZE",
        "c",
        "Landroid/graphics/Paint;",
        "getPaint",
        "()Landroid/graphics/Paint;",
        "Landroid/graphics/ColorFilter;",
        "getINVERTED_COLOR_FILTER",
        "()Landroid/graphics/ColorFilter;",
        "INVERTED_COLOR_FILTER",
        "e",
        "Z",
        "<init>",
        "()V",
        "sdk-base_release"
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
        "SMAP\nBitmapUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BitmapUtils.kt\ncom/onyx/android/sdk/base/utils/BitmapUtils\n+ 2 Any.kt\ncom/onyx/android/sdk/base/extension/AnyKt\n*L\n1#1,817:1\n32#2,5:818\n*S KotlinDebug\n*F\n+ 1 BitmapUtils.kt\ncom/onyx/android/sdk/base/utils/BitmapUtils\n*L\n780#1:818,5\n*E\n"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/onyx/android/sdk/base/utils/BitmapUtils;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final MASK:I = 0xff

.field public static final MAX_BITMAP_EXPORT_SIZE:I = 0x10000000

.field public static final MAX_BITMAP_PIXEL_DECODE_HEIGHT:I = 0x800

.field public static final MAX_BITMAP_PIXEL_DECODE_SIZE:I = 0x400000

.field public static final MAX_BITMAP_PIXEL_DECODE_WIDTH:I = 0x800

.field public static final a:Ljava/lang/String;

.field public static final b:Lcom/onyx/android/sdk/base/data/Size;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final c:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final d:Landroid/graphics/ColorFilter;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static e:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/onyx/android/sdk/base/utils/BitmapUtils;

    invoke-direct {v0}, Lcom/onyx/android/sdk/base/utils/BitmapUtils;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/base/utils/BitmapUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/BitmapUtils;

    const-class v0, Lcom/onyx/android/sdk/base/utils/BitmapUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/onyx/android/sdk/base/utils/BitmapUtils;->a:Ljava/lang/String;

    new-instance v0, Lcom/onyx/android/sdk/base/data/Size;

    const/16 v1, 0xa

    invoke-direct {v0, v1, v1}, Lcom/onyx/android/sdk/base/data/Size;-><init>(II)V

    sput-object v0, Lcom/onyx/android/sdk/base/utils/BitmapUtils;->b:Lcom/onyx/android/sdk/base/data/Size;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/base/utils/BitmapUtils;->c:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/ColorMatrixColorFilter;

    new-instance v1, Landroid/graphics/ColorMatrix;

    const/16 v2, 0x14

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-direct {v1, v2}, Landroid/graphics/ColorMatrix;-><init>([F)V

    invoke-direct {v0, v1}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    sput-object v0, Lcom/onyx/android/sdk/base/utils/BitmapUtils;->d:Landroid/graphics/ColorFilter;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/onyx/android/sdk/base/utils/BitmapUtils;->e:Z

    return-void

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        0x0
        0x0
        0x0
        0x437f0000    # 255.0f
        0x0
        -0x40800000    # -1.0f
        0x0
        0x0
        0x437f0000    # 255.0f
        0x0
        0x0
        -0x40800000    # -1.0f
        0x0
        0x437f0000    # 255.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(ILandroid/graphics/BitmapFactory$Options;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/base/utils/BitmapUtils;->h(ILandroid/graphics/BitmapFactory$Options;)V

    return-void
.end method

.method public static synthetic b(ILandroid/graphics/BitmapFactory$Options;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/base/utils/BitmapUtils;->f(ILandroid/graphics/BitmapFactory$Options;)V

    return-void
.end method

.method public static synthetic c(IILandroid/graphics/BitmapFactory$Options;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/android/sdk/base/utils/BitmapUtils;->e(IILandroid/graphics/BitmapFactory$Options;)V

    return-void
.end method

.method public static synthetic decodeVectorBitmap$default(Lcom/onyx/android/sdk/base/utils/BitmapUtils;IIIILjava/lang/Object;)Landroid/graphics/Bitmap;
    .locals 1

    and-int/lit8 p5, p4, 0x2

    const/4 v0, -0x1

    if-eqz p5, :cond_0

    move p2, v0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    move p3, v0

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/android/sdk/base/utils/BitmapUtils;->decodeVectorBitmap(III)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static final e(IILandroid/graphics/BitmapFactory$Options;)V
    .locals 1

    const-string v0, "options"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/base/utils/BitmapUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/BitmapUtils;

    invoke-virtual {v0, p2, p0, p1}, Lcom/onyx/android/sdk/base/utils/BitmapUtils;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result p0

    iput p0, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    return-void
.end method

.method public static final f(ILandroid/graphics/BitmapFactory$Options;)V
    .locals 2

    const-string v0, "options"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/base/utils/BitmapUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/BitmapUtils;

    iget v1, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-virtual {v0, v1, p0}, Lcom/onyx/android/sdk/base/utils/BitmapUtils;->calculateInSampleSize(II)I

    move-result p0

    iput p0, p1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    return-void
.end method

.method public static synthetic getBitmapFromVectorDrawableBySize$default(Lcom/onyx/android/sdk/base/utils/BitmapUtils;Landroid/content/Context;ILandroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix;Landroid/graphics/ColorFilter;ILjava/lang/Object;)Landroid/graphics/Bitmap;
    .locals 7

    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_0

    const/4 p6, 0x0

    :cond_0
    move-object v6, p6

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 2
    invoke-virtual/range {v0 .. v6}, Lcom/onyx/android/sdk/base/utils/BitmapUtils;->getBitmapFromVectorDrawableBySize(Landroid/content/Context;ILandroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix;Landroid/graphics/ColorFilter;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getBitmapFromVectorDrawableBySize$default(Lcom/onyx/android/sdk/base/utils/BitmapUtils;Landroid/graphics/drawable/Drawable;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix;Landroid/graphics/ColorFilter;ILjava/lang/Object;)Landroid/graphics/Bitmap;
    .locals 6

    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_0

    const/4 p5, 0x0

    :cond_0
    move-object v5, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 1
    invoke-virtual/range {v0 .. v5}, Lcom/onyx/android/sdk/base/utils/BitmapUtils;->getBitmapFromVectorDrawableBySize(Landroid/graphics/drawable/Drawable;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix;Landroid/graphics/ColorFilter;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static final h(ILandroid/graphics/BitmapFactory$Options;)V
    .locals 2

    const-string v0, "options"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/base/utils/BitmapUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/BitmapUtils;

    iget v1, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-virtual {v0, v1, p0}, Lcom/onyx/android/sdk/base/utils/BitmapUtils;->calculateInSampleSize(II)I

    move-result p0

    iput p0, p1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    return-void
.end method


# virtual methods
.method public final buildBitmapFromText(Ljava/lang/String;IIZZZZILjava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p9    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    new-instance p6, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p6, v0}, Landroid/graphics/Paint;-><init>(I)V

    const/high16 v0, 0x40400000    # 3.0f

    invoke-virtual {p6, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    int-to-float p3, p3

    invoke-virtual {p6, p3}, Landroid/graphics/Paint;->setTextSize(F)V

    const/high16 p3, -0x1000000

    invoke-virtual {p6, p3}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p6, p4}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    invoke-static {p6, p1}, Lcom/onyx/android/sdk/base/extension/PaintKt;->getTextWidth(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result p3

    sget-object p4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p3, p2, p4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p4

    const-string v0, "createBitmap(...)"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, p3, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance p3, Landroid/graphics/Canvas;

    invoke-direct {p3, p4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p6}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    iget v2, v1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    sub-int/2addr p2, v2

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr p2, v1

    div-int/lit8 p2, p2, 0x2

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p6, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v0, v0

    int-to-float p2, p2

    invoke-virtual {p3, p1, v0, p2, p6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    if-eqz p7, :cond_0

    invoke-static {p4, p8}, Lcom/onyx/android/sdk/base/extension/BitmapKt;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p4

    :cond_0
    if-eqz p5, :cond_1

    invoke-virtual {p0, p4, p9}, Lcom/onyx/android/sdk/base/utils/BitmapUtils;->saveBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;)Z

    :cond_1
    return-object p4
.end method

.method public final calculateBitmapSampleSize(Landroid/graphics/Bitmap;II)I
    .locals 0
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/Deprecated;
        message = ""
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "use bitmap.calculateSampleSize"
            imports = {}
        .end subannotation
    .end annotation

    const-string p0, "bitmap"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2, p3}, Lcom/onyx/android/sdk/base/extension/BitmapKt;->calculateSampleSize(Landroid/graphics/Bitmap;II)I

    move-result p0

    return p0
.end method

.method public final calculateInSampleSize(II)I
    .locals 1

    const/4 p0, 0x1

    if-le p1, p2, :cond_0

    .line 6
    div-int/lit8 p1, p1, 0x2

    .line 7
    :goto_0
    div-int v0, p1, p0

    if-le v0, p2, :cond_0

    mul-int/lit8 p0, p0, 0x2

    goto :goto_0

    :cond_0
    return p0
.end method

.method public final calculateInSampleSize(IIII)I
    .locals 1

    const/4 p0, 0x1

    if-gt p2, p4, :cond_0

    if-le p1, p3, :cond_1

    .line 2
    :cond_0
    div-int/lit8 p2, p2, 0x2

    .line 3
    div-int/lit8 p1, p1, 0x2

    .line 4
    :goto_0
    div-int v0, p2, p0

    if-le v0, p4, :cond_1

    .line 5
    div-int v0, p1, p0

    if-le v0, p3, :cond_1

    mul-int/lit8 p0, p0, 0x2

    goto :goto_0

    :cond_1
    return p0
.end method

.method public final calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 1
    .param p1    # Landroid/graphics/BitmapFactory$Options;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "options"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget v0, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget p1, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/onyx/android/sdk/base/utils/BitmapUtils;->calculateInSampleSize(IIII)I

    move-result p0

    return p0
.end method

.method public final calculateRotationMatrix(Landroid/graphics/Bitmap;Landroid/graphics/RectF;F)Landroid/graphics/Matrix;
    .locals 1
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "decodedBitmap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "displayRectF"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/BitmapKt;->boundingRectF(Landroid/graphics/Bitmap;)Landroid/graphics/RectF;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/android/sdk/base/utils/BitmapUtils;->calculateRotationMatrix(Landroid/graphics/RectF;Landroid/graphics/RectF;F)Landroid/graphics/Matrix;

    move-result-object p0

    return-object p0
.end method

.method public final calculateRotationMatrix(Landroid/graphics/RectF;Landroid/graphics/RectF;F)Landroid/graphics/Matrix;
    .locals 6
    .param p1    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "layoutRectF"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "displayRectF"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance p0, Landroid/graphics/Matrix;

    invoke-direct {p0}, Landroid/graphics/Matrix;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p1

    move v1, p3

    .line 5
    invoke-static/range {v0 .. v5}, Lcom/onyx/android/sdk/base/lite/extension/RectFKt;->rotatedSize$default(Landroid/graphics/RectF;FFFILjava/lang/Object;)Landroid/graphics/RectF;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v1, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    invoke-virtual {v0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    .line 8
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v2

    div-float/2addr v2, v1

    .line 9
    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v1

    div-float/2addr v1, v0

    .line 10
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    neg-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result p1

    neg-float p1, p1

    invoke-virtual {p0, v0, p1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 11
    invoke-virtual {p0, p3}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 12
    invoke-virtual {p0, v2, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 13
    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    move-result p1

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerY()F

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-object p0
.end method

.method public final calculateRotationMatrix(Lcom/onyx/android/sdk/base/data/SizeF;Landroid/graphics/RectF;F)Landroid/graphics/Matrix;
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/base/data/SizeF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "decodedSizeF"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "displayRectF"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/SizeF;->getWidth()F

    move-result v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/SizeF;->getHeight()F

    move-result p1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 3
    invoke-virtual {p0, v0, p2, p3}, Lcom/onyx/android/sdk/base/utils/BitmapUtils;->calculateRotationMatrix(Landroid/graphics/RectF;Landroid/graphics/RectF;F)Landroid/graphics/Matrix;

    move-result-object p0

    return-object p0
.end method

.method public final checkBitmapDecodeSize(Ljava/lang/Number;Ljava/lang/Number;)V
    .locals 0
    .param p1    # Ljava/lang/Number;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Number;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "width"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "height"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p1

    mul-int/2addr p0, p1

    const/high16 p1, 0x400000

    if-gt p0, p1, :cond_0

    return-void

    :cond_0
    sget-object p0, Lcom/onyx/android/sdk/base/common/error/OnyxException;->Companion:Lcom/onyx/android/sdk/base/common/error/OnyxException$Companion;

    const-string p1, "Bitmap Too Large"

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/common/error/OnyxException$Companion;->of(Ljava/lang/String;)Lcom/onyx/android/sdk/base/common/error/OnyxException;

    move-result-object p0

    throw p0
.end method

.method public final clear(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 p0, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p1, v1, p0, v0}, Lcom/onyx/android/sdk/base/extension/BitmapKt;->clear$default(Landroid/graphics/Bitmap;IILjava/lang/Object;)V

    return-void
.end method

.method public final createBitmap([BIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/graphics/Bitmap$Config;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    if-eqz p1, :cond_1

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/utils/BitmapUtils;->my_bb_to_int_le([B)[I

    move-result-object p0

    invoke-static {p0, p2, p3, p4}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final createBitmapOrNull(Landroid/graphics/RectF;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string p0, "rectF"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/graphics/RectF;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p0

    invoke-static {p0}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result p0

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    invoke-static {p1}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result p1

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, p1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public final createBitmapPaint()Landroid/graphics/Paint;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/base/utils/BitmapUtils;->updateBitmapPaint(Landroid/graphics/Paint;)V

    return-object v0
.end method

.method public final createScaledBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 0
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/Deprecated;
        message = ""
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "bitmap.createScaledBitmap"
            imports = {}
        .end subannotation
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "origin"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    invoke-static {p1, p2, p3, p0}, Lcom/onyx/android/sdk/base/extension/BitmapKt;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public final d(Ljava/lang/String;Lio/reactivex/rxjava3/functions/Consumer;)Landroid/graphics/Bitmap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/reactivex/rxjava3/functions/Consumer<",
            "Landroid/graphics/BitmapFactory$Options;",
            ">;)",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    new-instance v1, Lcom/onyx/android/sdk/base/data/Size;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v2, v3}, Lcom/onyx/android/sdk/base/data/Size;-><init>(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p0, p1, v1}, Lcom/onyx/android/sdk/base/utils/BitmapUtils;->decodeBitmapSizeSupportExif(Ljava/lang/String;Lcom/onyx/android/sdk/base/data/Size;)Z

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/Size;->getWidth()I

    move-result v2

    iput v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/Size;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    if-eqz p2, :cond_0

    invoke-interface {p2, v0}, Lio/reactivex/rxjava3/functions/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/base/utils/BitmapUtils;->g(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public final decodeAssetResBitmapSize(Ljava/lang/String;Lcom/onyx/android/sdk/base/data/Size;)Z
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/base/data/Size;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "fileName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "size"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/onyx/android/sdk/base/utils/BitmapUtils;->decodeBitmapSize(Ljava/io/InputStream;Lcom/onyx/android/sdk/base/data/Size;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_0
    return p0

    :catchall_0
    move-exception p0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_1
    throw p0
.end method

.method public final decodeAssetResToBitmap(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/Rect;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "fileName"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "bitmapRect"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v1

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p3

    iput p3, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {p1, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-static {p1, p0, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    goto :goto_0

    :catch_1
    move-exception p2

    move-object p1, p0

    :goto_0
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-object p0
.end method

.method public final decodeBitmap(Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 2
    .param p1    # Landroid/net/Uri;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    if-nez p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const/4 v0, 0x0

    if-eqz p0, :cond_1

    return-object v0

    .line 6
    :cond_1
    sget-object p0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getAppContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "r"

    invoke-virtual {p0, p1, v1}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    if-nez p0, :cond_2

    return-object v0

    .line 7
    :cond_2
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p0

    if-nez p0, :cond_3

    return-object v0

    .line 8
    :cond_3
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public final decodeBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/onyx/android/sdk/base/utils/BitmapUtils;->decodeBitmap(Ljava/lang/String;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public final decodeBitmap(Ljava/lang/String;IIZ)Landroid/graphics/Bitmap;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const/4 v0, 0x0

    if-lez p2, :cond_1

    if-gtz p3, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v1, Lcom/sunia/HTREnginev2/ls;

    invoke-direct {v1, p2, p3}, Lcom/sunia/HTREnginev2/ls;-><init>(II)V

    goto :goto_1

    :cond_1
    :goto_0
    move-object v1, v0

    .line 3
    :goto_1
    invoke-virtual {p0, p1, v1}, Lcom/onyx/android/sdk/base/utils/BitmapUtils;->d(Ljava/lang/String;Lio/reactivex/rxjava3/functions/Consumer;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 4
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/utils/BitmapUtils;->isValid(Landroid/graphics/Bitmap;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_2

    .line 5
    :cond_2
    invoke-static {p1, p2, p3, p4}, Lcom/onyx/android/sdk/base/extension/BitmapKt;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_2
    return-object v0
.end method

.method public final decodeBitmapSize(Ljava/io/InputStream;Lcom/onyx/android/sdk/base/data/Size;)Z
    .locals 2
    .param p1    # Ljava/io/InputStream;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/base/data/Size;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "size"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance p0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v1, 0x0

    .line 3
    :try_start_0
    invoke-static {p1, v1, p0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 4
    iget p1, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-virtual {p2, p1}, Lcom/onyx/android/sdk/base/data/Size;->setWidth(I)V

    .line 5
    iget p0, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {p2, p0}, Lcom/onyx/android/sdk/base/data/Size;->setHeight(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 6
    sget-object p1, Lcom/onyx/android/sdk/base/utils/BitmapUtils;->a:Ljava/lang/String;

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final decodeBitmapSize(Ljava/lang/String;Lcom/onyx/android/sdk/base/data/Size;)Z
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/base/data/Size;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "size"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 7
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 8
    :try_start_1
    invoke-virtual {p0, v1, p2}, Lcom/onyx/android/sdk/base/utils/BitmapUtils;->decodeBitmapSize(Ljava/io/InputStream;Lcom/onyx/android/sdk/base/data/Size;)Z

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    sget-object p1, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    invoke-virtual {p1, v1}, Lcom/onyx/android/sdk/base/utils/FileUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p0

    .line 10
    :goto_0
    :try_start_2
    sget-object p1, Lcom/onyx/android/sdk/base/utils/BitmapUtils;->a:Ljava/lang/String;

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 11
    sget-object p0, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/base/utils/FileUtils;->closeQuietly(Ljava/io/Closeable;)V

    const/4 p0, 0x0

    :goto_1
    return p0

    :catchall_2
    move-exception p0

    sget-object p1, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/base/utils/FileUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw p0
.end method

.method public final decodeBitmapSizeSupportExif(Ljava/lang/String;Lcom/onyx/android/sdk/base/data/Size;)Z
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/base/data/Size;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "size"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    :try_start_0
    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/utils/BitmapUtils;->getImageOrientation(Ljava/lang/String;)I

    move-result p0

    const/4 p1, 0x5

    if-eq p0, p1, :cond_0

    const/4 p1, 0x6

    if-eq p0, p1, :cond_0

    const/16 p1, 0x8

    if-eq p0, p1, :cond_0

    iget p0, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-virtual {p2, p0}, Lcom/onyx/android/sdk/base/data/Size;->setWidth(I)V

    iget p0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {p2, p0}, Lcom/onyx/android/sdk/base/data/Size;->setHeight(I)V

    goto :goto_0

    :cond_0
    iget p0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {p2, p0}, Lcom/onyx/android/sdk/base/data/Size;->setWidth(I)V

    iget p0, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-virtual {p2, p0}, Lcom/onyx/android/sdk/base/data/Size;->setHeight(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget-object p1, Lcom/onyx/android/sdk/base/utils/BitmapUtils;->a:Ljava/lang/String;

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final decodeResourceSafely(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    .locals 0
    .param p1    # Landroid/content/res/Resources;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const/4 p0, 0x0

    if-gtz p2, :cond_0

    return-object p0

    :cond_0
    :try_start_0
    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-object p0
.end method

.method public final decodeVectorBitmap(III)Landroid/graphics/Bitmap;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    instance-of p1, p0, Landroid/graphics/drawable/VectorDrawable;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    check-cast p0, Landroid/graphics/drawable/VectorDrawable;

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    if-eqz p0, :cond_1

    invoke-static {p0, p2, p3}, Lcom/onyx/android/sdk/base/extension/DrawableKt;->toBitmap(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v0
.end method

.method public final decodeWidthRatioBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    if-gtz p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/utils/BitmapUtils;->loadBitmapFromFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/sunia/HTREnginev2/ns;

    invoke-direct {v0, p2}, Lcom/sunia/HTREnginev2/ns;-><init>(I)V

    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/base/utils/BitmapUtils;->d(Ljava/lang/String;Lio/reactivex/rxjava3/functions/Consumer;)Landroid/graphics/Bitmap;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final drawCenterBitmap(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    .locals 2
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/Rect;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroid/graphics/Paint;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string p0, "canvas"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "bitmap"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "rect"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/graphics/Rect;->centerX()I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    sub-float/2addr p0, v0

    invoke-virtual {p3}, Landroid/graphics/Rect;->centerY()I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    sub-float/2addr p3, v0

    invoke-virtual {p1, p2, p0, p3, p4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public final ensureBitmapNotNull(Landroid/graphics/RectF;)Landroid/graphics/Bitmap;
    .locals 3
    .param p1    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "rectF"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p0

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/RectF;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-static {p0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result p1

    if-nez p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v2

    :goto_0
    if-eqz p1, :cond_2

    invoke-static {v0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    if-nez v1, :cond_3

    :cond_2
    sget-object p0, Lcom/onyx/android/sdk/base/utils/BitmapUtils;->b:Lcom/onyx/android/sdk/base/data/Size;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/Size;->getWidth()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/Size;->getHeight()I

    move-result p0

    int-to-float v0, p0

    move p0, p1

    :cond_3
    invoke-static {p0}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result p0

    invoke-static {v0}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result p1

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, p1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    const-string p1, "createBitmap(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final g(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 0

    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/utils/BitmapUtils;->getImageOrientation(Ljava/lang/String;)I

    move-result p0

    const/4 p1, 0x3

    if-eq p0, p1, :cond_2

    const/4 p1, 0x6

    if-eq p0, p1, :cond_1

    const/16 p1, 0x8

    if-eq p0, p1, :cond_0

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/16 p0, 0x10e

    invoke-static {p2, p0}, Lcom/onyx/android/sdk/base/extension/BitmapKt;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p2

    goto :goto_0

    :cond_1
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/16 p0, 0x5a

    invoke-static {p2, p0}, Lcom/onyx/android/sdk/base/extension/BitmapKt;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p2

    goto :goto_0

    :cond_2
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/16 p0, 0xb4

    invoke-static {p2, p0}, Lcom/onyx/android/sdk/base/extension/BitmapKt;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p2

    :goto_0
    return-object p2
.end method

.method public final getBitmapFromVectorDrawable(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const/4 p0, 0x0

    if-gtz p2, :cond_0

    return-object p0

    .line 1
    :cond_0
    :try_start_0
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p1, :cond_1

    return-object p0

    .line 2
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p2

    .line 3
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 4
    invoke-static {p2, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 5
    new-instance p2, Landroid/graphics/Canvas;

    invoke-direct {p2, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 6
    invoke-virtual {p2}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 7
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-object p0
.end method

.method public final getBitmapFromVectorDrawable(Landroid/content/Context;III)Landroid/graphics/Bitmap;
    .locals 6
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 9
    invoke-virtual/range {v0 .. v5}, Lcom/onyx/android/sdk/base/utils/BitmapUtils;->getBitmapFromVectorDrawable(Landroid/content/Context;IIILjava/lang/Integer;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public final getBitmapFromVectorDrawable(Landroid/content/Context;IIILjava/lang/Integer;)Landroid/graphics/Bitmap;
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const/4 p1, 0x0

    if-gtz p2, :cond_0

    return-object p1

    .line 10
    :cond_0
    :try_start_0
    invoke-virtual {p0, p2, p5}, Lcom/onyx/android/sdk/base/utils/BitmapUtils;->getTintDrawable(ILjava/lang/Integer;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-nez p0, :cond_1

    return-object p1

    .line 11
    :cond_1
    sget-object p2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p3, p4, p2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 12
    new-instance p2, Landroid/graphics/Canvas;

    invoke-direct {p2, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 p5, 0x0

    .line 13
    invoke-virtual {p0, p5, p5, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 14
    invoke-virtual {p0, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 15
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-object p1
.end method

.method public final getBitmapFromVectorDrawableBySize(Landroid/content/Context;ILandroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix;Landroid/graphics/ColorFilter;)Landroid/graphics/Bitmap;
    .locals 6
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Landroid/graphics/Matrix;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Landroid/graphics/ColorFilter;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "originRectF"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "displayRectF"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-gtz p2, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 10
    :cond_0
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v0, p0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    .line 11
    invoke-virtual/range {v0 .. v5}, Lcom/onyx/android/sdk/base/utils/BitmapUtils;->getBitmapFromVectorDrawableBySize(Landroid/graphics/drawable/Drawable;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix;Landroid/graphics/ColorFilter;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public final getBitmapFromVectorDrawableBySize(Landroid/graphics/drawable/Drawable;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix;Landroid/graphics/ColorFilter;)Landroid/graphics/Bitmap;
    .locals 2
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroid/graphics/Matrix;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Landroid/graphics/ColorFilter;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string p0, "drawable"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "originRectF"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "displayRectF"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v0

    float-to-int v0, v0

    .line 2
    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result p3

    float-to-int p3, p3

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 3
    invoke-static {v0, p3, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 4
    new-instance p3, Landroid/graphics/Canvas;

    invoke-direct {p3, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 5
    invoke-virtual {p3, p4}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 6
    invoke-virtual {p1, p5}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 7
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result p4

    float-to-int p4, p4

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result p2

    float-to-int p2, p2

    const/4 p5, 0x0

    invoke-virtual {p1, p5, p5, p4, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 8
    invoke-virtual {p1, p3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 9
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-object p0
.end method

.method public final getINVERTED_COLOR_FILTER()Landroid/graphics/ColorFilter;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/base/utils/BitmapUtils;->d:Landroid/graphics/ColorFilter;

    return-object p0
.end method

.method public final getImageOrientation(Ljava/lang/String;)I
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 p0, 0x1

    :try_start_0
    new-instance v0, Landroid/media/ExifInterface;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v0, p1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const-string p1, "Orientation"

    invoke-virtual {v0, p1, p0}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    sget-object v0, Lcom/onyx/android/sdk/base/utils/BitmapUtils;->a:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return p0
.end method

.method public final getMaxImageSize(II)I
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/utils/BitmapUtils;->getMaxTextureSize()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    :goto_0
    return p1
.end method

.method public final getMaxTextureSize()I
    .locals 2

    const/4 p0, 0x1

    new-array p0, p0, [I

    const/16 v0, 0xd33

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Landroid/opengl/GLES10;->glGetIntegerv(I[II)V

    aget p0, p0, v1

    return p0
.end method

.method public final getPaint()Landroid/graphics/Paint;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/base/utils/BitmapUtils;->c:Landroid/graphics/Paint;

    return-object p0
.end method

.method public final getPixel([IIII)I
    .locals 0
    .param p1    # [I
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "pixels"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    mul-int/2addr p3, p4

    add-int/2addr p2, p3

    aget p0, p1, p2

    return p0
.end method

.method public final getScaleFitCenterRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 2
    .param p1    # Landroid/graphics/Rect;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Rect;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "srcRect"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "dstRect"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p0, p1

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    cmpl-float p1, p0, p1

    const/4 v0, 0x0

    if-ltz p1, :cond_0

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, p0

    invoke-static {p1}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result p0

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p1

    sub-int/2addr p1, p0

    div-int/lit8 p1, p1, 0x2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    add-int/2addr p0, p1

    invoke-direct {v1, v0, p1, p2, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, p0

    invoke-static {p1}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result p0

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p1

    sub-int/2addr p1, p0

    div-int/lit8 p1, p1, 0x2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    new-instance v1, Landroid/graphics/Rect;

    add-int/2addr p0, p1

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    invoke-direct {v1, p1, v0, p0, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    :goto_0
    return-object v1
.end method

.method public final getScaleInSideAndCenterRect(IIIIZ)Landroid/graphics/Rect;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 p0, 0x0

    if-eqz p5, :cond_0

    add-int/lit8 p2, p2, -0x1

    int-to-float p5, p2

    add-int/lit8 p4, p4, -0x1

    int-to-float p4, p4

    div-float/2addr p5, p4

    add-int/lit8 p1, p1, -0x1

    int-to-float p1, p1

    mul-float/2addr p1, p5

    float-to-int p1, p1

    add-int/lit8 p3, p3, -0x1

    sub-int/2addr p3, p1

    div-int/lit8 p3, p3, 0x2

    new-instance p4, Landroid/graphics/Rect;

    add-int/2addr p1, p3

    invoke-direct {p4, p0, p3, p2, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0

    :cond_0
    add-int/lit8 p1, p1, -0x1

    int-to-float p5, p1

    add-int/lit8 p3, p3, -0x1

    int-to-float p3, p3

    div-float/2addr p5, p3

    add-int/lit8 p2, p2, -0x1

    int-to-float p2, p2

    mul-float/2addr p2, p5

    float-to-int p2, p2

    add-int/lit8 p4, p4, -0x1

    sub-int/2addr p4, p2

    div-int/lit8 p4, p4, 0x2

    new-instance p3, Landroid/graphics/Rect;

    add-int/2addr p2, p4

    invoke-direct {p3, p4, p0, p2, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object p4, p3

    :goto_0
    return-object p4
.end method

.method public final getSizeInBytes(Landroid/graphics/Bitmap;)I
    .locals 0
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result p0

    return p0
.end method

.method public final getThumbnailSize(Lcom/onyx/android/sdk/base/data/Size;Lcom/onyx/android/sdk/base/data/Size;)Lcom/onyx/android/sdk/base/data/Size;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/base/data/Size;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/base/data/Size;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "pageSize"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "defaultThumbSize"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/Size;->isVertical()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/data/Size;->getWidth()I

    move-result p0

    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/data/Size;->getHeight()I

    move-result p2

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/data/Size;->getHeight()I

    move-result p0

    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/data/Size;->getWidth()I

    move-result p2

    :goto_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/Size;->getWidth()I

    move-result v0

    int-to-float v0, v0

    int-to-float p0, p0

    div-float/2addr v0, p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/Size;->getHeight()I

    move-result p0

    int-to-float p0, p0

    int-to-float p2, p2

    div-float/2addr p0, p2

    invoke-static {v0, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    new-instance p2, Lcom/onyx/android/sdk/base/data/Size;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/Size;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, p0

    float-to-int v0, v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/Size;->getHeight()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, p0

    float-to-int p0, p1

    invoke-direct {p2, v0, p0}, Lcom/onyx/android/sdk/base/data/Size;-><init>(II)V

    return-object p2
.end method

.method public final getTintDrawable(ILjava/lang/Integer;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p2    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/base/utils/BitmapUtils;->getTintDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Integer;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public final getTintDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Integer;)Landroid/graphics/drawable/Drawable;
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 3
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, p1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    return-object p0

    :cond_1
    :goto_0
    return-object p1
.end method

.method public final invert(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "drawable"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/base/utils/BitmapUtils;->d:Landroid/graphics/ColorFilter;

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public final isAntiAlias()Z
    .locals 0

    sget-boolean p0, Lcom/onyx/android/sdk/base/utils/BitmapUtils;->e:Z

    return p0
.end method

.method public final isJpegImage(Ljava/lang/String;)Z
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "filePath"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/blankj/utilcode/util/ImageUtils;->getImageType(Ljava/lang/String;)Lcom/blankj/utilcode/util/ImageUtils$ImageType;

    move-result-object p0

    sget-object p1, Lcom/blankj/utilcode/util/ImageUtils$ImageType;->TYPE_JPG:Lcom/blankj/utilcode/util/ImageUtils$ImageType;

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isRecycled(Landroid/graphics/Bitmap;)Z
    .locals 0
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lkotlin/Deprecated;
        message = ""
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "bitmap.isRecycled()"
            imports = {}
        .end subannotation
    .end annotation

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/BitmapKt;->isRecycled(Landroid/graphics/Bitmap;)Z

    move-result p0

    return p0
.end method

.method public final isValid(Landroid/graphics/Bitmap;)Z
    .locals 0
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lkotlin/Deprecated;
        message = ""
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "bitmap.isValid()"
            imports = {}
        .end subannotation
    .end annotation

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/BitmapKt;->isValid(Landroid/graphics/Bitmap;)Z

    move-result p0

    return p0
.end method

.method public final loadBitmapFromDrawingCache(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lkotlin/Deprecated;
        message = ""
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "view.loadBitmapFromDrawingCache()"
            imports = {}
        .end subannotation
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->loadBitmapFromDrawingCache(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public final loadBitmapFromFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    new-instance p0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    sget-object v0, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/base/utils/FileUtils;->fileExist(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p1, p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final loadBitmapFromResources(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/base/utils/BitmapUtils;->getBitmapFromVectorDrawable(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public final loadBitmapFromView(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lkotlin/Deprecated;
        message = ""
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "view.loadBitmap()"
            imports = {}
        .end subannotation
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->loadBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public final my_bb_to_int_le([B)[I
    .locals 5
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "b"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    array-length p0, p1

    div-int/lit8 p0, p0, 0x4

    new-array v0, p0, [I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_0

    mul-int/lit8 v2, v1, 0x4

    aget-byte v3, p1, v2

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v4, v2, 0x1

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    add-int/2addr v3, v4

    add-int/lit8 v4, v2, 0x2

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x3

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    add-int/2addr v3, v2

    aput v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final recycle(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/BitmapKt;->recycle(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public final recycle(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    const-string v0, "bitmaps"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 4
    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/base/utils/BitmapUtils;->recycle(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final safelyDrawBitmap(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    .locals 1
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/Rect;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/graphics/Rect;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Landroid/graphics/Paint;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/base/utils/BitmapUtils;->isValid(Landroid/graphics/Bitmap;)Z

    move-result p0

    if-nez p0, :cond_0

    sget-object p0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "invalid bitmap"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/utils/Debug;->e(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    if-nez p4, :cond_1

    sget-object p0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "null dst"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/utils/Debug;->e(Ljava/lang/Throwable;)V

    return-void

    :cond_1
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method public final saveBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;)Z
    .locals 1
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lkotlin/Deprecated;
        message = ""
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "Bitmap.save()"
            imports = {}
        .end subannotation
    .end annotation

    const-string v0, "bitmap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/onyx/android/sdk/base/utils/BitmapUtils;->saveBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public final saveBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;Z)Z
    .locals 1
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lkotlin/Deprecated;
        message = ""
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "Bitmap.save()"
            imports = {}
        .end subannotation
    .end annotation

    const-string p0, "bitmap"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x2

    const/4 p3, 0x0

    const/4 v0, 0x0

    .line 2
    invoke-static {p1, p2, v0, p0, p3}, Lcom/onyx/android/sdk/base/extension/BitmapKt;->save$default(Landroid/graphics/Bitmap;Ljava/lang/String;IILjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final scaleImageFileWithMaxSizeLimit(Ljava/lang/String;I)Ljava/lang/String;
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "srcFile"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    if-ge v3, p2, :cond_0

    return-object p1

    :cond_0
    int-to-float p2, p2

    int-to-float v3, v3

    div-float/2addr p2, v3

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, p2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p2

    const/4 p2, 0x0

    iput-boolean p2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p2

    float-to-int v0, v3

    float-to-int v2, v2

    invoke-static {p2, v0, v2, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    const-string v1, "createScaledBitmap(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".output"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/utils/BitmapUtils;->isJpegImage(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    goto :goto_0

    :cond_1
    sget-object p0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    :goto_0
    const/16 p1, 0x64

    :try_start_0
    invoke-virtual {v0, p0, p1, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x0

    invoke-static {v2, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    return-object v1

    :catchall_0
    move-exception p0

    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    invoke-static {v2, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final scaleToWidthRatioBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    if-gtz p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/utils/BitmapUtils;->loadBitmapFromFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Lcom/sunia/HTREnginev2/ms;

    invoke-direct {v0, p2}, Lcom/sunia/HTREnginev2/ms;-><init>(I)V

    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/base/utils/BitmapUtils;->d(Ljava/lang/String;Lio/reactivex/rxjava3/functions/Consumer;)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/onyx/android/sdk/base/extension/BitmapKt;->scaleToWidthRatioBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public final setAntiAlias(Z)V
    .locals 0

    sput-boolean p1, Lcom/onyx/android/sdk/base/utils/BitmapUtils;->e:Z

    return-void
.end method

.method public final setPixel([IIIII)V
    .locals 0
    .param p1    # [I
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "pixels"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    mul-int/2addr p3, p5

    add-int/2addr p2, p3

    aput p4, p1, p2

    return-void
.end method

.method public final updateBitmapPaint(Landroid/graphics/Paint;)V
    .locals 1
    .param p1    # Landroid/graphics/Paint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "paint"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/utils/BitmapUtils;->isAntiAlias()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setDither(Z)V

    return-void
.end method

.method public final writeDword(Ljava/io/FileOutputStream;J)V
    .locals 4
    .param p1    # Ljava/io/FileOutputStream;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string p0, "stream"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x4

    new-array p0, p0, [B

    const-wide/16 v0, 0xff

    and-long v2, p2, v0

    long-to-int v2, v2

    int-to-byte v2, v2

    const/4 v3, 0x0

    aput-byte v2, p0, v3

    const/16 v2, 0x8

    shr-long v2, p2, v2

    and-long/2addr v2, v0

    long-to-int v2, v2

    int-to-byte v2, v2

    const/4 v3, 0x1

    aput-byte v2, p0, v3

    const/16 v2, 0x10

    shr-long v2, p2, v2

    and-long/2addr v2, v0

    long-to-int v2, v2

    int-to-byte v2, v2

    const/4 v3, 0x2

    aput-byte v2, p0, v3

    const/16 v2, 0x18

    shr-long/2addr p2, v2

    and-long/2addr p2, v0

    long-to-int p2, p2

    int-to-byte p2, p2

    const/4 p3, 0x3

    aput-byte p2, p0, p3

    invoke-virtual {p1, p0}, Ljava/io/FileOutputStream;->write([B)V

    return-void
.end method

.method public final writeLong(Ljava/io/FileOutputStream;J)V
    .locals 4
    .param p1    # Ljava/io/FileOutputStream;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string p0, "stream"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x4

    new-array p0, p0, [B

    const-wide/16 v0, 0xff

    and-long v2, p2, v0

    long-to-int v2, v2

    int-to-byte v2, v2

    const/4 v3, 0x0

    aput-byte v2, p0, v3

    const/16 v2, 0x8

    shr-long v2, p2, v2

    and-long/2addr v2, v0

    long-to-int v2, v2

    int-to-byte v2, v2

    const/4 v3, 0x1

    aput-byte v2, p0, v3

    const/16 v2, 0x10

    shr-long v2, p2, v2

    and-long/2addr v2, v0

    long-to-int v2, v2

    int-to-byte v2, v2

    const/4 v3, 0x2

    aput-byte v2, p0, v3

    const/16 v2, 0x18

    shr-long/2addr p2, v2

    and-long/2addr p2, v0

    long-to-int p2, p2

    int-to-byte p2, p2

    const/4 p3, 0x3

    aput-byte p2, p0, p3

    invoke-virtual {p1, p0}, Ljava/io/FileOutputStream;->write([B)V

    return-void
.end method

.method public final writeWord(Ljava/io/FileOutputStream;I)V
    .locals 2
    .param p1    # Ljava/io/FileOutputStream;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string p0, "stream"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x2

    new-array p0, p0, [B

    and-int/lit16 v0, p2, 0xff

    int-to-byte v0, v0

    const/4 v1, 0x0

    aput-byte v0, p0, v1

    shr-int/lit8 p2, p2, 0x8

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    const/4 v0, 0x1

    aput-byte p2, p0, v0

    invoke-virtual {p1, p0}, Ljava/io/FileOutputStream;->write([B)V

    return-void
.end method
