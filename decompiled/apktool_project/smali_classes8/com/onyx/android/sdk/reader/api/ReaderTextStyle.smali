.class public final Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Alignment;,
        Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$CharacterIndent;,
        Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Companion;,
        Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$DPUnit;,
        Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$FontEntry;,
        Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$FontSpec;,
        Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$FontVariantLigaturesState;,
        Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Origin;,
        Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$PageMargin;,
        Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;,
        Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$SPUnit;,
        Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$TextSpacingTrim;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0088\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008E\n\u0002\u0010!\n\u0002\u00081\u0018\u0000 \u00b6\u00012\u00020\u0001:\u0018\u00b7\u0001\u00b8\u0001\u00b6\u0001\u00b9\u0001\u00ba\u0001\u00bb\u0001\u00bc\u0001\u00bd\u0001\u00be\u0001\u00bf\u0001\u00c0\u0001\u00c1\u0001B\u000b\u0008\u0016\u00a2\u0006\u0006\u0008\u00b4\u0001\u0010\u00b5\u0001J\u000e\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0002J\u001d\u0010\u0008\u001a\u00020\u00072\u000e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0005\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0010\u0010\r\u001a\u0004\u0018\u00010\u000c2\u0006\u0010\u000b\u001a\u00020\nJ\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u000b\u001a\u00020\nJ\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u000b\u001a\u00020\nJ\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u000b\u001a\u00020\nJz\u0010 \u001a\u0004\u0018\u00010\u00002\u0018\u0010\u0015\u001a\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u0014\u0018\u00010\u00132\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u000c2\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u000e2\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u000e2\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u00192\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u000e2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u000e2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u000e2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u001f\u001a\u00020\nJ\u0012\u0010\"\u001a\u0004\u0018\u00010\u00002\u0008\u0010!\u001a\u0004\u0018\u00010\u0000J\u0013\u0010%\u001a\u00020$2\u0008\u0010#\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\u0008\u0010&\u001a\u00020\nH\u0016J\n\u0010\'\u001a\u0004\u0018\u00010\u0014H\u0007J\u0014\u0010(\u001a\u0010\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u0014\u0018\u00010\u0013J\u001c\u0010)\u001a\u0004\u0018\u00010\u00002\u0012\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u00140\u0013J\u0014\u0010,\u001a\u0010\u0012\u0004\u0012\u00020*\u0012\u0004\u0012\u00020+\u0018\u00010\u0013J\u001c\u0010-\u001a\u0004\u0018\u00010\u00002\u0012\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00020*\u0012\u0004\u0012\u00020+0\u0013J\u0014\u0010.\u001a\u0010\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020+\u0018\u00010\u0013J\u001c\u0010/\u001a\u0004\u0018\u00010\u00002\u0012\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020+0\u0013J\u0010\u00101\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0014\u0018\u000100J\u0018\u00103\u001a\u0004\u0018\u00010\u00002\u000e\u00102\u001a\n\u0012\u0004\u0012\u00020\u0014\u0018\u000100J\u0008\u00104\u001a\u0004\u0018\u00010\u000cJ\u0010\u00105\u001a\u00020\u00072\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u000cJ\u0006\u00106\u001a\u00020\u0007J\u0006\u00107\u001a\u00020\u0007J\u0006\u00108\u001a\u00020\u0007J\u0006\u00109\u001a\u00020\u0007J\u0008\u0010;\u001a\u0004\u0018\u00010:J\u0010\u0010=\u001a\u00020\u00072\u0008\u0010<\u001a\u0004\u0018\u00010:J\u0008\u0010?\u001a\u0004\u0018\u00010>J\u0010\u0010A\u001a\u00020\u00072\u0008\u0010@\u001a\u0004\u0018\u00010>J\u0008\u0010B\u001a\u0004\u0018\u00010\u0019J\u0010\u0010C\u001a\u00020\u00072\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0019J\u0008\u0010D\u001a\u0004\u0018\u00010\u000eJ\u0010\u0010E\u001a\u00020\u00072\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u000eJ\u0008\u0010F\u001a\u0004\u0018\u00010\u000eJ\u0010\u0010G\u001a\u00020\u00072\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u000eJ\u0008\u0010H\u001a\u0004\u0018\u00010\u0011J\u0010\u0010J\u001a\u00020\u00072\u0008\u0010I\u001a\u0004\u0018\u00010\u0011J\u000e\u0010M\u001a\u00020\u00072\u0006\u0010L\u001a\u00020KJ\u0006\u0010N\u001a\u00020KJ\u0006\u0010O\u001a\u00020\nJ\u000e\u0010P\u001a\u00020\u00072\u0006\u0010\u001f\u001a\u00020\nJ\u0006\u0010Q\u001a\u00020$J\u0010\u0010S\u001a\u0004\u0018\u00010\u00002\u0006\u0010R\u001a\u00020$J\u0006\u0010T\u001a\u00020$J\u0010\u0010V\u001a\u0004\u0018\u00010\u00002\u0006\u0010U\u001a\u00020$J\u0006\u0010W\u001a\u00020$J\u0010\u0010Y\u001a\u0004\u0018\u00010\u00002\u0006\u0010X\u001a\u00020$J\u0006\u0010Z\u001a\u00020$J\u000e\u0010\\\u001a\u00020\u00072\u0006\u0010[\u001a\u00020$J\u0006\u0010]\u001a\u00020\u0002J\u000e\u0010_\u001a\u00020\u00072\u0006\u0010^\u001a\u00020\u0002J\u0006\u0010`\u001a\u00020\u0002J\u000e\u0010b\u001a\u00020\u00072\u0006\u0010a\u001a\u00020\u0002J\u0018\u0010%\u001a\u00020$2\u0008\u0010c\u001a\u0004\u0018\u00010\u00002\u0006\u0010d\u001a\u00020\u0000J\u0006\u0010e\u001a\u00020\nJ\u0010\u0010g\u001a\u0004\u0018\u00010\u00002\u0006\u0010f\u001a\u00020\nJ\u0006\u0010h\u001a\u00020\nJ\u0010\u0010j\u001a\u0004\u0018\u00010\u00002\u0006\u0010i\u001a\u00020\nJ\u0006\u0010k\u001a\u00020\nJ\u0010\u0010m\u001a\u0004\u0018\u00010\u00002\u0006\u0010l\u001a\u00020\nJ\u0006\u0010n\u001a\u00020\nJ\u0010\u0010p\u001a\u0004\u0018\u00010\u00002\u0006\u0010o\u001a\u00020\nJ\u0006\u0010q\u001a\u00020\nJ\u0010\u0010s\u001a\u0004\u0018\u00010\u00002\u0006\u0010r\u001a\u00020\nJ\u0006\u0010t\u001a\u00020\nJ\u0010\u0010v\u001a\u0004\u0018\u00010\u00002\u0006\u0010u\u001a\u00020\nJ\u0006\u0010w\u001a\u00020\nJ\u0010\u0010y\u001a\u0004\u0018\u00010\u00002\u0006\u0010x\u001a\u00020\nJ\u0006\u0010z\u001a\u00020$J\u0010\u0010|\u001a\u0004\u0018\u00010\u00002\u0006\u0010{\u001a\u00020$J\u0006\u0010}\u001a\u00020$J\u0006\u0010~\u001a\u00020$J\u0006\u0010\u007f\u001a\u00020$J\u000e\u0010\u007f\u001a\u00020$2\u0006\u0010\u001a\u001a\u00020\nJ\u0007\u0010\u0080\u0001\u001a\u00020$J\u0007\u0010\u0081\u0001\u001a\u00020$J\u0007\u0010\u0082\u0001\u001a\u00020$J\u0007\u0010\u0083\u0001\u001a\u00020$J\u0007\u0010\u0084\u0001\u001a\u00020$J\u0007\u0010\u0085\u0001\u001a\u00020$J\u0010\u0010\u0084\u0001\u001a\u00020$2\u0007\u0010\u0086\u0001\u001a\u00020\u0002J\u0010\u0010\u0085\u0001\u001a\u00020$2\u0007\u0010\u0087\u0001\u001a\u00020\u0002J\u0007\u0010\u0088\u0001\u001a\u00020\u0002J\u0010\u0010\u0081\u0001\u001a\u00020$2\u0007\u0010\u0089\u0001\u001a\u00020\nJ\u0010\u0010\u0080\u0001\u001a\u00020$2\u0007\u0010\u0089\u0001\u001a\u00020\nJ\u0011\u0010\u0088\u0001\u001a\u00020\u00022\u0008\u0008\u0001\u0010f\u001a\u00020\nJ\u0007\u0010\u008a\u0001\u001a\u00020\u0007R$\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u00140\u00138\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u008b\u0001\u0010\u008c\u0001R%\u0010\u008e\u0001\u001a\u000e\u0012\u0004\u0012\u00020*\u0012\u0004\u0012\u00020+0\u00138\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u008d\u0001\u0010\u008c\u0001R%\u0010\u0090\u0001\u001a\u000e\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020+0\u00138\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u008f\u0001\u0010\u008c\u0001R\u001f\u00102\u001a\t\u0012\u0004\u0012\u00020\u00140\u0091\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0092\u0001\u0010\u0093\u0001R\u001a\u0010\u0016\u001a\u0004\u0018\u00010\u000c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0094\u0001\u0010\u0095\u0001R\u001a\u0010<\u001a\u0004\u0018\u00010:8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0096\u0001\u0010\u0097\u0001R\u001a\u0010@\u001a\u0004\u0018\u00010>8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0098\u0001\u0010\u0099\u0001R\u001a\u0010\u001a\u001a\u0004\u0018\u00010\u00198\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u009a\u0001\u0010\u009b\u0001R\u001a\u0010\u0017\u001a\u0004\u0018\u00010\u000e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u009c\u0001\u0010\u009d\u0001R\u001a\u0010\u0018\u001a\u0004\u0018\u00010\u000e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u009e\u0001\u0010\u009d\u0001R\u001a\u0010I\u001a\u0004\u0018\u00010\u00118\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u009f\u0001\u0010\u00a0\u0001R\u0018\u0010L\u001a\u00020K8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00a1\u0001\u0010\u00a2\u0001R\u0018\u0010\u001f\u001a\u00020\n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00a3\u0001\u0010\u00a4\u0001R\u0018\u0010R\u001a\u00020$8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00a5\u0001\u0010\u00a6\u0001R\u0017\u0010U\u001a\u00020$8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008#\u0010\u00a6\u0001R\u0018\u0010X\u001a\u00020$8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00a7\u0001\u0010\u00a6\u0001R\u0018\u0010[\u001a\u00020$8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00a8\u0001\u0010\u00a6\u0001R\u0018\u0010^\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00a9\u0001\u0010\u00aa\u0001R\u0018\u0010a\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00ab\u0001\u0010\u00aa\u0001R\u0018\u0010f\u001a\u00020\n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00ac\u0001\u0010\u00a4\u0001R\u0018\u0010l\u001a\u00020\n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00ad\u0001\u0010\u00a4\u0001R\u0018\u0010i\u001a\u00020\n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00ae\u0001\u0010\u00a4\u0001R\u0018\u0010o\u001a\u00020\n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00af\u0001\u0010\u00a4\u0001R\u0018\u0010r\u001a\u00020\n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00b0\u0001\u0010\u00a4\u0001R\u0018\u0010u\u001a\u00020\n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00b1\u0001\u0010\u00a4\u0001R\u0018\u0010x\u001a\u00020\n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00b2\u0001\u0010\u00a4\u0001R\u0018\u0010{\u001a\u00020$8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00b3\u0001\u0010\u00a6\u0001\u00a8\u0006\u00c2\u0001"
    }
    d2 = {
        "Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;",
        "",
        "",
        "newSize",
        "limitFontSize",
        "",
        "fontSizes",
        "",
        "setDefaultFontSizes",
        "([Ljava/lang/Float;)V",
        "",
        "index",
        "Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$SPUnit;",
        "getFontSizeByIndex",
        "Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;",
        "getLineSpacingByIndex",
        "getParagraphSpacingByIndex",
        "Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$PageMargin;",
        "getPageMarginByIndex",
        "",
        "",
        "fontMapping",
        "fontSize",
        "lineSpacing",
        "paragraphSpacing",
        "Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$CharacterIndent;",
        "indent",
        "leftMargin",
        "topMargin",
        "rightMargin",
        "bottomMargin",
        "pagingMode",
        "create",
        "style",
        "copy",
        "o",
        "",
        "equals",
        "hashCode",
        "getFontFace",
        "getFontMapping",
        "setFontMapping",
        "Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$FontSpec;",
        "Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$FontEntry;",
        "getStyleFontMapping",
        "setStyleFontMapping",
        "getTagFontMapping",
        "setTagFontMapping",
        "",
        "getExternalFonts",
        "externalFonts",
        "setExternalFonts",
        "getFontSize",
        "setFontSize",
        "increaseFontSize",
        "decreaseFontSize",
        "increaseFontSizeByStep",
        "decreaseFontSizeByStep",
        "Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Alignment;",
        "getAlignment",
        "alignment",
        "setAlignment",
        "Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$TextSpacingTrim;",
        "getTextSpacingTrim",
        "textSpacingTrim",
        "setTextSpacingTrim",
        "getIndent",
        "setIndent",
        "getLineSpacing",
        "setLineSpacing",
        "getParagraphSpacing",
        "setParagraphSpacing",
        "getPageMargin",
        "pageMargin",
        "setPageMargin",
        "Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$FontVariantLigaturesState;",
        "fontVariantLigaturesState",
        "setFontVariantLigaturesState",
        "getFontVariantLigaturesState",
        "getPagingMode",
        "setPagingMode",
        "isIncludeFontPadding",
        "includeFontPadding",
        "setIncludeFontPadding",
        "isEnableHyphen",
        "enableHyphen",
        "setEnableHyphen",
        "isChangeWritingMode",
        "changeWritingMode",
        "setChangeWritingMode",
        "isEnableFontReplaceAll",
        "enableFontReplaceAll",
        "setEnableFontReplaceAll",
        "getLetterSpacing",
        "letterSpacing",
        "setLetterSpacing",
        "getWordSpacing",
        "wordSpacing",
        "setWordSpacing",
        "style1",
        "style2",
        "getFontEmboldenLevel",
        "fontEmboldenLevel",
        "setFontEmboldenLevel",
        "getTextColorType",
        "textColorType",
        "setTextColorType",
        "getTextColor",
        "textColor",
        "setTextColor",
        "getBackgroundColor",
        "backgroundColor",
        "setBackgroundColor",
        "getBackgroundColorType",
        "backgroundColorType",
        "setBackgroundColorType",
        "getForegroundColor",
        "foregroundColor",
        "setForegroundColor",
        "getForegroundColorType",
        "foregroundColorType",
        "setForegroundColorType",
        "isAntiAlias",
        "antiAlias",
        "setAntiAlias",
        "isOriginCssLetterSpacing",
        "isOriginCssWordSpacing",
        "isOriginCssIndent",
        "isOriginCssParagraphSpacing",
        "isOriginCssLineSpacing",
        "isOriginCssLeftMargin",
        "isOriginCssRightMargin",
        "isOriginCssTopMargin",
        "isOriginCssBottomMargin",
        "top",
        "bottom",
        "getFontEmbolden",
        "percent",
        "resetOriginCssStyle",
        "a",
        "Ljava/util/Map;",
        "b",
        "styleFontMapping",
        "c",
        "tagFontMapping",
        "",
        "d",
        "Ljava/util/List;",
        "e",
        "Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$SPUnit;",
        "f",
        "Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Alignment;",
        "g",
        "Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$TextSpacingTrim;",
        "h",
        "Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$CharacterIndent;",
        "i",
        "Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;",
        "j",
        "k",
        "Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$PageMargin;",
        "l",
        "Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$FontVariantLigaturesState;",
        "m",
        "I",
        "n",
        "Z",
        "p",
        "q",
        "r",
        "F",
        "s",
        "t",
        "u",
        "v",
        "w",
        "x",
        "y",
        "z",
        "A",
        "<init>",
        "()V",
        "Companion",
        "Alignment",
        "CharacterIndent",
        "DPUnit",
        "FontEntry",
        "FontSpec",
        "FontVariantLigaturesState",
        "Origin",
        "PageMargin",
        "Percentage",
        "SPUnit",
        "TextSpacingTrim",
        "sdk-readercore_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# static fields
.field public static A0:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage; = null
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static B:F = 0.0f

.field public static B0:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage; = null
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final BACKGROUND_COLOR_TYPE_CUSTOM_DARK:I = 0x63

.field public static final BACKGROUND_COLOR_TYPE_CUSTOM_LIGHT:I = 0x62

.field public static C:F = 0.0f

.field public static C0:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage; = null
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final Companion:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static D:F = 0.0f

.field public static final D0:I

.field public static final DEFAULT_FONT_EMBOLDEN_LEVEL:I = 0x0

.field public static E:F = 0.0f

.field public static final E0:I

.field public static F:I = 0x0

.field public static final F0:I = 0x0

.field public static final FOREGROUND_COLOR_TYPE_CUSTOM_DARK:I = 0x63

.field public static final FOREGROUND_COLOR_TYPE_CUSTOM_LIGHT:I = 0x62

.field public static final FOREGROUND_COLOR_TYPE_ORIGIN:I = 0x0

.field public static G:F = 0.0f

.field public static final G0:I

.field public static H:F = 0.0f

.field public static final H0:I

.field public static I:F = 0.0f

.field public static final I0:I

.field public static J:F = 0.0f

.field public static final J0:F = 0.0f

.field public static K:F = 0.0f

.field public static final K0:F = 0.0f

.field public static L:F = 0.0f

.field public static L0:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$PageMargin; = null
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final M:F = 0.0f

.field public static M0:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$PageMargin; = null
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final MAX_FONT_EMBOLDEN_LEVEL:I = 0x1e

.field public static final MIN_FONT_EMBOLDEN_LEVEL:I = 0x0

.field public static final N:F

.field public static N0:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$PageMargin; = null
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static O:[Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$SPUnit; = null
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static O0:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$PageMargin; = null
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static P:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$SPUnit; = null
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static P0:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$PageMargin; = null
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static Q:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$SPUnit; = null
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static Q0:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$PageMargin; = null
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static R:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$SPUnit; = null
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static S:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$SPUnit; = null
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final T:I = 0x0

.field public static final TEXT_COLOR_TYPE_CUSTOM_DARK:I = 0x63

.field public static final TEXT_COLOR_TYPE_CUSTOM_LIGHT:I = 0x62

.field public static final U:I

.field public static final V:I

.field public static final W:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final X:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final Y:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final Z:Z

.field public static final a0:Z

.field public static final b0:Z

.field public static final c0:Z

.field public static final d0:Z

.field public static final e0:I

.field public static final f0:I

.field public static final g0:I

.field public static final h0:I

.field public static final i0:I

.field public static final j0:I

.field public static final k0:I

.field public static l0:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Alignment;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static m0:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$TextSpacingTrim;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static n0:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$CharacterIndent;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static o0:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$CharacterIndent;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static p0:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$CharacterIndent;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static q0:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$CharacterIndent;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static r0:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static s0:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static t0:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static u0:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static v0:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static w0:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static x0:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static y0:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static z0:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public A:Z

.field public a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$FontSpec;",
            "Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$FontEntry;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$FontEntry;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public d:Ljava/util/List;
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

.field public e:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$SPUnit;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public f:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Alignment;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public g:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$TextSpacingTrim;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public h:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$CharacterIndent;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public i:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public j:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public k:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$PageMargin;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public l:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$FontVariantLigaturesState;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public m:I

.field public n:Z

.field public o:Z

.field public p:Z

.field public q:Z

.field public r:F

.field public s:F

.field public t:I

.field public u:I

.field public v:I

.field public w:I

.field public x:I

.field public y:I

.field public z:I


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->Companion:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Companion;

    const v0, -0x42333333    # -0.1f

    sput v0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->B:F

    const v1, 0x3dcccccd    # 0.1f

    sput v1, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->C:F

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    sput v2, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->E:F

    const/4 v3, 0x1

    sput v3, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->F:I

    sput v0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->G:F

    sput v1, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->H:F

    sput v2, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->J:F

    sput v2, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->K:F

    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->L:F

    sput v1, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->N:F

    const/4 v0, 0x0

    new-array v1, v0, [Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$SPUnit;

    sput-object v1, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->O:[Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$SPUnit;

    sget-object v1, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$SPUnit;->Companion:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$SPUnit$Companion;

    const/high16 v2, 0x42200000    # 40.0f

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$SPUnit$Companion;->create(F)Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$SPUnit;

    move-result-object v2

    sput-object v2, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->P:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$SPUnit;

    const/high16 v2, 0x42c00000    # 96.0f

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$SPUnit$Companion;->create(F)Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$SPUnit;

    move-result-object v2

    sput-object v2, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->Q:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$SPUnit;

    const/high16 v2, 0x41200000    # 10.0f

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$SPUnit$Companion;->create(F)Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$SPUnit;

    move-result-object v2

    sput-object v2, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->R:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$SPUnit;

    const/high16 v2, 0x40800000    # 4.0f

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$SPUnit$Companion;->create(F)Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$SPUnit;

    move-result-object v1

    sput-object v1, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->S:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$SPUnit;

    sput v3, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->U:I

    sget v1, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->T:I

    sput v1, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->V:I

    const-string v1, "last_font_face"

    sput-object v1, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->W:Ljava/lang/String;

    const-string v1, "font_face_lang_cn"

    sput-object v1, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->X:Ljava/lang/String;

    const-string v1, "font_face_lang_en"

    sput-object v1, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->Y:Ljava/lang/String;

    sput-boolean v3, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->Z:Z

    sput-boolean v3, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->d0:Z

    sput v3, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->f0:I

    const/4 v1, 0x2

    sput v1, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->g0:I

    const/4 v1, 0x3

    sput v1, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->h0:I

    const/4 v1, 0x4

    sput v1, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->i0:I

    sput v3, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->k0:I

    sget-object v1, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Alignment;->ALIGNMENT_JUSTIFY:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Alignment;

    sput-object v1, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->l0:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Alignment;

    sget-object v1, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$TextSpacingTrim;->SPACE_ALL:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$TextSpacingTrim;

    sput-object v1, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->m0:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$TextSpacingTrim;

    new-instance v1, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$CharacterIndent;

    const/4 v2, -0x1

    invoke-direct {v1, v2}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$CharacterIndent;-><init>(I)V

    sput-object v1, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->n0:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$CharacterIndent;

    sput-object v1, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->o0:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$CharacterIndent;

    new-instance v1, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$CharacterIndent;

    invoke-direct {v1, v0}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$CharacterIndent;-><init>(I)V

    sput-object v1, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->p0:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$CharacterIndent;

    new-instance v1, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$CharacterIndent;

    invoke-direct {v1, v2}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$CharacterIndent;-><init>(I)V

    sput-object v1, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->q0:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$CharacterIndent;

    new-instance v1, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;

    const/16 v4, 0xa

    invoke-direct {v1, v4}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;-><init>(I)V

    sput-object v1, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->r0:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;

    new-instance v1, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;

    const/16 v5, 0x5a

    invoke-direct {v1, v5}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;-><init>(I)V

    sput-object v1, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->s0:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;

    new-instance v1, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;

    const/16 v5, 0x64

    invoke-direct {v1, v5}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;-><init>(I)V

    sput-object v1, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->t0:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;

    new-instance v1, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;

    const/16 v6, 0x96

    invoke-direct {v1, v6}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;-><init>(I)V

    sput-object v1, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->u0:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;

    new-instance v1, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;

    const/16 v6, 0x10e

    invoke-direct {v1, v6}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;-><init>(I)V

    sput-object v1, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->v0:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;

    sget-object v1, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->s0:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;

    sput-object v1, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->w0:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;

    new-instance v1, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;

    invoke-direct {v1, v4}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;-><init>(I)V

    sput-object v1, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->x0:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;

    new-instance v1, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;

    const/16 v6, -0xa

    invoke-direct {v1, v6}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;-><init>(I)V

    sput-object v1, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->y0:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;

    new-instance v1, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;

    invoke-direct {v1, v0}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;-><init>(I)V

    sput-object v1, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->z0:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;

    new-instance v0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;

    invoke-direct {v0, v5}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;-><init>(I)V

    sput-object v0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->A0:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;

    new-instance v0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;

    const/16 v1, 0xc8

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;-><init>(I)V

    sput-object v0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->B0:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;

    sget-object v0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->y0:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;

    sput-object v0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->C0:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;

    sput v3, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->D0:I

    sput v2, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->E0:I

    sput v4, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->G0:I

    const/16 v0, 0x14

    sput v0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->H0:I

    const/16 v1, 0x46

    sput v1, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->I0:I

    new-instance v5, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$PageMargin;

    sget-object v6, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;->Companion:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage$Companion;

    invoke-virtual {v6, v3}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage$Companion;->create(I)Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;

    move-result-object v7

    invoke-virtual {v6, v3}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage$Companion;->create(I)Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;

    move-result-object v8

    invoke-virtual {v6, v3}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage$Companion;->create(I)Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;

    move-result-object v9

    invoke-virtual {v6, v3}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage$Companion;->create(I)Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;

    move-result-object v3

    invoke-direct {v5, v7, v8, v9, v3}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$PageMargin;-><init>(Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;)V

    sput-object v5, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->L0:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$PageMargin;

    new-instance v3, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$PageMargin;

    invoke-virtual {v6, v2}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage$Companion;->create(I)Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;

    move-result-object v5

    invoke-virtual {v6, v2}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage$Companion;->create(I)Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;

    move-result-object v7

    invoke-virtual {v6, v2}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage$Companion;->create(I)Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;

    move-result-object v8

    invoke-virtual {v6, v2}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage$Companion;->create(I)Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;

    move-result-object v2

    invoke-direct {v3, v5, v7, v8, v2}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$PageMargin;-><init>(Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;)V

    sput-object v3, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->M0:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$PageMargin;

    new-instance v2, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$PageMargin;

    sget v3, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->F0:I

    invoke-virtual {v6, v3}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage$Companion;->create(I)Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;

    move-result-object v5

    invoke-virtual {v6, v3}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage$Companion;->create(I)Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;

    move-result-object v7

    invoke-virtual {v6, v3}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage$Companion;->create(I)Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;

    move-result-object v8

    invoke-virtual {v6, v3}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage$Companion;->create(I)Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;

    move-result-object v3

    invoke-direct {v2, v5, v7, v8, v3}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$PageMargin;-><init>(Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;)V

    sput-object v2, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->N0:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$PageMargin;

    new-instance v2, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$PageMargin;

    invoke-virtual {v6, v4}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage$Companion;->create(I)Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;

    move-result-object v3

    invoke-virtual {v6, v4}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage$Companion;->create(I)Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;

    move-result-object v5

    invoke-virtual {v6, v4}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage$Companion;->create(I)Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;

    move-result-object v7

    invoke-virtual {v6, v4}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage$Companion;->create(I)Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;

    move-result-object v8

    invoke-direct {v2, v3, v5, v7, v8}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$PageMargin;-><init>(Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;)V

    sput-object v2, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->O0:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$PageMargin;

    new-instance v2, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$PageMargin;

    invoke-virtual {v6, v1}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage$Companion;->create(I)Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;

    move-result-object v3

    invoke-virtual {v6, v0}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage$Companion;->create(I)Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;

    move-result-object v5

    invoke-virtual {v6, v1}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage$Companion;->create(I)Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;

    move-result-object v1

    invoke-virtual {v6, v0}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage$Companion;->create(I)Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;

    move-result-object v0

    invoke-direct {v2, v3, v5, v1, v0}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$PageMargin;-><init>(Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;)V

    sput-object v2, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->P0:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$PageMargin;

    new-instance v0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$PageMargin;

    invoke-virtual {v6, v4}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage$Companion;->create(I)Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;

    move-result-object v1

    invoke-virtual {v6, v4}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage$Companion;->create(I)Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;

    move-result-object v2

    invoke-virtual {v6, v4}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage$Companion;->create(I)Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;

    move-result-object v3

    invoke-virtual {v6, v4}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage$Companion;->create(I)Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$PageMargin;-><init>(Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;)V

    sput-object v0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->Q0:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$PageMargin;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->a:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->b:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->c:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->d:Ljava/util/List;

    sget-object v0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->P:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$SPUnit;

    iput-object v0, p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->e:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$SPUnit;

    sget-object v0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->l0:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Alignment;

    iput-object v0, p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->f:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Alignment;

    sget-object v0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->m0:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$TextSpacingTrim;

    iput-object v0, p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->g:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$TextSpacingTrim;

    sget-object v0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->o0:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$CharacterIndent;

    iput-object v0, p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->h:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$CharacterIndent;

    sget-object v0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->w0:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;

    iput-object v0, p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->i:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;

    sget-object v0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->C0:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;

    iput-object v0, p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->j:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;

    sget-object v0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->Q0:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$PageMargin;

    iput-object v0, p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->k:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$PageMargin;

    sget-object v0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$FontVariantLigaturesState;->NORMAL:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$FontVariantLigaturesState;

    iput-object v0, p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->l:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$FontVariantLigaturesState;

    sget v0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->V:I

    iput v0, p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->m:I

    sget-boolean v0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->a0:Z

    iput-boolean v0, p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->n:Z

    sget-boolean v0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->Z:Z

    iput-boolean v0, p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->o:Z

    sget-boolean v0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->b0:Z

    iput-boolean v0, p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->p:Z

    sget-boolean v0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->c0:Z

    iput-boolean v0, p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->q:Z

    sget v0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->J0:F

    iput v0, p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->r:F

    sget v0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->K0:F

    iput v0, p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->s:F

    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->u:I

    sget v1, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->e0:I

    iput v1, p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->v:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->w:I

    sget v1, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->j0:I

    iput v1, p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->x:I

    iput v0, p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->y:I

    sget-boolean v0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->d0:Z

    iput-boolean v0, p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->A:Z

    return-void
.end method

.method public static final synthetic access$getBACKGROUND_COLOR_TYPE_ORIGIN$cp()I
    .locals 1

    sget v0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->j0:I

    return v0
.end method

.method public static final synthetic access$getBACKGROUND_COLOR_TYPE_WHITE$cp()I
    .locals 1

    sget v0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->k0:I

    return v0
.end method

.method public static final synthetic access$getDEFAULT_ALIGNMENT$cp()Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Alignment;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->l0:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Alignment;

    return-object v0
.end method

.method public static final synthetic access$getDEFAULT_ANTI_ALIAS$cp()Z
    .locals 1

    sget-boolean v0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->d0:Z

    return v0
.end method

.method public static final synthetic access$getDEFAULT_CHANGE_WRITING_MODE$cp()Z
    .locals 1

    sget-boolean v0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->b0:Z

    return v0
.end method

.method public static final synthetic access$getDEFAULT_CHARACTER_INDENT$cp()Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$CharacterIndent;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->o0:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$CharacterIndent;

    return-object v0
.end method

.method public static final synthetic access$getDEFAULT_ENABLE_FONT_REPLACE_ALL$cp()Z
    .locals 1

    sget-boolean v0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->c0:Z

    return v0
.end method

.method public static final synthetic access$getDEFAULT_ENABLE_HYPHEN$cp()Z
    .locals 1

    sget-boolean v0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->Z:Z

    return v0
.end method

.method public static final synthetic access$getDEFAULT_FONT_SIZE$cp()Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$SPUnit;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->P:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$SPUnit;

    return-object v0
.end method

.method public static final synthetic access$getDEFAULT_FONT_SIZE_LIST$cp()[Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$SPUnit;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->O:[Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$SPUnit;

    return-object v0
.end method

.method public static final synthetic access$getDEFAULT_INCLUDE_FONT_PADDING$cp()Z
    .locals 1

    sget-boolean v0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->a0:Z

    return v0
.end method

.method public static final synthetic access$getDEFAULT_LETTER_SPACING$cp()F
    .locals 1

    sget v0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->D:F

    return v0
.end method

.method public static final synthetic access$getDEFAULT_LINE_SPACING$cp()Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->w0:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;

    return-object v0
.end method

.method public static final synthetic access$getDEFAULT_PAGE_MARGIN$cp()Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$PageMargin;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->Q0:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$PageMargin;

    return-object v0
.end method

.method public static final synthetic access$getDEFAULT_PARAGRAPH_SPACING$cp()Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->C0:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;

    return-object v0
.end method

.method public static final synthetic access$getDEFAULT_TEXT_SPACING_TRIM$cp()Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$TextSpacingTrim;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->m0:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$TextSpacingTrim;

    return-object v0
.end method

.method public static final synthetic access$getDEFAULT_WORD_SPACING$cp()F
    .locals 1

    sget v0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->I:F

    return v0
.end method

.method public static final synthetic access$getFONT_EMBOLDEN_NORMAL$cp()F
    .locals 1

    sget v0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->M:F

    return v0
.end method

.method public static final synthetic access$getFONT_EMBOLDEN_STEP$cp()F
    .locals 1

    sget v0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->N:F

    return v0
.end method

.method public static final synthetic access$getFONT_FACE_LANG_CN$cp()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->X:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getFONT_FACE_LANG_EN$cp()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->Y:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getFONT_SIZE_STEP$cp()Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$SPUnit;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->S:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$SPUnit;

    return-object v0
.end method

.method public static final synthetic access$getLARGE_LINE_SPACING$cp()Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->v0:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;

    return-object v0
.end method

.method public static final synthetic access$getLARGE_MARGIN_LEFT_RIGHT$cp()I
    .locals 1

    sget v0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->I0:I

    return v0
.end method

.method public static final synthetic access$getLARGE_MARGIN_TOP_BOTTOM$cp()I
    .locals 1

    sget v0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->H0:I

    return v0
.end method

.method public static final synthetic access$getLARGE_PAGE_MARGIN$cp()Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$PageMargin;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->P0:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$PageMargin;

    return-object v0
.end method

.method public static final synthetic access$getLARGE_PARAGRAPH_SPACING$cp()Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->B0:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;

    return-object v0
.end method

.method public static final synthetic access$getLAST_FONT_FACE$cp()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->W:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getLETTER_SPACING$cp()F
    .locals 1

    sget v0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->J0:F

    return v0
.end method

.method public static final synthetic access$getLINE_SPACING_STEP$cp()Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->r0:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;

    return-object v0
.end method

.method public static final synthetic access$getMARGIN_STEP$cp()I
    .locals 1

    sget v0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->D0:I

    return v0
.end method

.method public static final synthetic access$getMAX_FONT_SIZE$cp()Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$SPUnit;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->Q:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$SPUnit;

    return-object v0
.end method

.method public static final synthetic access$getMAX_LETTER_SPACING$cp()F
    .locals 1

    sget v0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->C:F

    return v0
.end method

.method public static final synthetic access$getMAX_WORD_SPACING$cp()F
    .locals 1

    sget v0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->H:F

    return v0
.end method

.method public static final synthetic access$getMIN_FONT_SIZE$cp()Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$SPUnit;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->R:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$SPUnit;

    return-object v0
.end method

.method public static final synthetic access$getMIN_LETTER_SPACING$cp()F
    .locals 1

    sget v0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->B:F

    return v0
.end method

.method public static final synthetic access$getMIN_WORD_SPACING$cp()F
    .locals 1

    sget v0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->G:F

    return v0
.end method

.method public static final synthetic access$getNONE_CHARACTER_INDENT$cp()Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$CharacterIndent;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->p0:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$CharacterIndent;

    return-object v0
.end method

.method public static final synthetic access$getNORMAL_LINE_SPACING$cp()Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->u0:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;

    return-object v0
.end method

.method public static final synthetic access$getNORMAL_MARGIN$cp()I
    .locals 1

    sget v0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->G0:I

    return v0
.end method

.method public static final synthetic access$getNORMAL_PAGE_MARGIN$cp()Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$PageMargin;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->O0:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$PageMargin;

    return-object v0
.end method

.method public static final synthetic access$getNORMAL_PARAGRAPH_SPACING$cp()Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->A0:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;

    return-object v0
.end method

.method public static final synthetic access$getORIGIN_CSS_CHARACTER_INDENT$cp()Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$CharacterIndent;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->n0:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$CharacterIndent;

    return-object v0
.end method

.method public static final synthetic access$getORIGIN_CSS_LINE_SPACING$cp()Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->s0:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;

    return-object v0
.end method

.method public static final synthetic access$getORIGIN_CSS_MARGIN$cp()I
    .locals 1

    sget v0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->E0:I

    return v0
.end method

.method public static final synthetic access$getORIGIN_CSS_PAGE_MARGIN$cp()Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$PageMargin;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->M0:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$PageMargin;

    return-object v0
.end method

.method public static final synthetic access$getORIGIN_CSS_PARAGRAPH_SPACING$cp()Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->y0:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;

    return-object v0
.end method

.method public static final synthetic access$getORIGIN_CSS_WORD_SPACING$cp()F
    .locals 1

    sget v0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->J:F

    return v0
.end method

.method public static final synthetic access$getORIGIN_LETTER_SPACING$cp()F
    .locals 1

    sget v0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->E:F

    return v0
.end method

.method public static final synthetic access$getORIGIN_STYLE_CHARACTER_INDENT$cp()Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$CharacterIndent;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->q0:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$CharacterIndent;

    return-object v0
.end method

.method public static final synthetic access$getORIGIN_WORD_SPACING$cp()F
    .locals 1

    sget v0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->K:F

    return v0
.end method

.method public static final synthetic access$getPAGE_MARGIN_STEP$cp()Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$PageMargin;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->L0:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$PageMargin;

    return-object v0
.end method

.method public static final synthetic access$getPAGING_MODE_DEFAULT$cp()I
    .locals 1

    sget v0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->V:I

    return v0
.end method

.method public static final synthetic access$getPAGING_MODE_SINGLE_COLUMN$cp()I
    .locals 1

    sget v0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->T:I

    return v0
.end method

.method public static final synthetic access$getPAGING_MODE_TWO_COLUMN$cp()I
    .locals 1

    sget v0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->U:I

    return v0
.end method

.method public static final synthetic access$getPARAGRAPH_SPACING_STEP$cp()Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->x0:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;

    return-object v0
.end method

.method public static final synthetic access$getSMALL_LINE_SPACING$cp()Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->t0:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;

    return-object v0
.end method

.method public static final synthetic access$getSMALL_MARGIN$cp()I
    .locals 1

    sget v0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->F0:I

    return v0
.end method

.method public static final synthetic access$getSMALL_PAGE_MARGIN$cp()Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$PageMargin;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->N0:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$PageMargin;

    return-object v0
.end method

.method public static final synthetic access$getSMALL_PARAGRAPH_SPACING$cp()Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->z0:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;

    return-object v0
.end method

.method public static final synthetic access$getSTEP_LETTER_SPACING$cp()I
    .locals 1

    sget v0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->F:I

    return v0
.end method

.method public static final synthetic access$getSTEP_WORD_SPACING$cp()F
    .locals 1

    sget v0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->L:F

    return v0
.end method

.method public static final synthetic access$getTEXT_COLOR_TYPE_CUSTOM$cp()I
    .locals 1

    sget v0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->i0:I

    return v0
.end method

.method public static final synthetic access$getTEXT_COLOR_TYPE_RAW$cp()I
    .locals 1

    sget v0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->e0:I

    return v0
.end method

.method public static final synthetic access$getTEXT_COLOR_TYPE_THRESH_BINARY$cp()I
    .locals 1

    sget v0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->f0:I

    return v0
.end method

.method public static final synthetic access$getTEXT_COLOR_TYPE_THRESH_OCTAL$cp()I
    .locals 1

    sget v0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->h0:I

    return v0
.end method

.method public static final synthetic access$getTEXT_COLOR_TYPE_THRESH_QUATERNARY$cp()I
    .locals 1

    sget v0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->g0:I

    return v0
.end method

.method public static final synthetic access$getWORD_SPACING$cp()F
    .locals 1

    sget v0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->K0:F

    return v0
.end method

.method public static final synthetic access$setDEFAULT_ALIGNMENT$cp(Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Alignment;)V
    .locals 0

    sput-object p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->l0:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Alignment;

    return-void
.end method

.method public static final synthetic access$setDEFAULT_CHARACTER_INDENT$cp(Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$CharacterIndent;)V
    .locals 0

    sput-object p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->o0:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$CharacterIndent;

    return-void
.end method

.method public static final synthetic access$setDEFAULT_FONT_SIZE$cp(Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$SPUnit;)V
    .locals 0

    sput-object p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->P:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$SPUnit;

    return-void
.end method

.method public static final synthetic access$setDEFAULT_FONT_SIZE_LIST$cp([Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$SPUnit;)V
    .locals 0

    sput-object p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->O:[Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$SPUnit;

    return-void
.end method

.method public static final synthetic access$setDEFAULT_LETTER_SPACING$cp(F)V
    .locals 0

    sput p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->D:F

    return-void
.end method

.method public static final synthetic access$setDEFAULT_LINE_SPACING$cp(Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;)V
    .locals 0

    sput-object p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->w0:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;

    return-void
.end method

.method public static final synthetic access$setDEFAULT_PAGE_MARGIN$cp(Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$PageMargin;)V
    .locals 0

    sput-object p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->Q0:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$PageMargin;

    return-void
.end method

.method public static final synthetic access$setDEFAULT_PARAGRAPH_SPACING$cp(Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;)V
    .locals 0

    sput-object p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->C0:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;

    return-void
.end method

.method public static final synthetic access$setDEFAULT_TEXT_SPACING_TRIM$cp(Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$TextSpacingTrim;)V
    .locals 0

    sput-object p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->m0:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$TextSpacingTrim;

    return-void
.end method

.method public static final synthetic access$setDEFAULT_WORD_SPACING$cp(F)V
    .locals 0

    sput p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->I:F

    return-void
.end method

.method public static final synthetic access$setFONT_SIZE_STEP$cp(Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$SPUnit;)V
    .locals 0

    sput-object p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->S:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$SPUnit;

    return-void
.end method

.method public static final synthetic access$setLARGE_LINE_SPACING$cp(Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;)V
    .locals 0

    sput-object p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->v0:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;

    return-void
.end method

.method public static final synthetic access$setLARGE_PAGE_MARGIN$cp(Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$PageMargin;)V
    .locals 0

    sput-object p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->P0:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$PageMargin;

    return-void
.end method

.method public static final synthetic access$setLARGE_PARAGRAPH_SPACING$cp(Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;)V
    .locals 0

    sput-object p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->B0:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;

    return-void
.end method

.method public static final synthetic access$setLINE_SPACING_STEP$cp(Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;)V
    .locals 0

    sput-object p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->r0:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;

    return-void
.end method

.method public static final synthetic access$setMAX_FONT_SIZE$cp(Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$SPUnit;)V
    .locals 0

    sput-object p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->Q:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$SPUnit;

    return-void
.end method

.method public static final synthetic access$setMAX_LETTER_SPACING$cp(F)V
    .locals 0

    sput p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->C:F

    return-void
.end method

.method public static final synthetic access$setMAX_WORD_SPACING$cp(F)V
    .locals 0

    sput p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->H:F

    return-void
.end method

.method public static final synthetic access$setMIN_FONT_SIZE$cp(Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$SPUnit;)V
    .locals 0

    sput-object p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->R:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$SPUnit;

    return-void
.end method

.method public static final synthetic access$setMIN_LETTER_SPACING$cp(F)V
    .locals 0

    sput p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->B:F

    return-void
.end method

.method public static final synthetic access$setMIN_WORD_SPACING$cp(F)V
    .locals 0

    sput p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->G:F

    return-void
.end method

.method public static final synthetic access$setNONE_CHARACTER_INDENT$cp(Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$CharacterIndent;)V
    .locals 0

    sput-object p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->p0:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$CharacterIndent;

    return-void
.end method

.method public static final synthetic access$setNORMAL_LINE_SPACING$cp(Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;)V
    .locals 0

    sput-object p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->u0:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;

    return-void
.end method

.method public static final synthetic access$setNORMAL_PAGE_MARGIN$cp(Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$PageMargin;)V
    .locals 0

    sput-object p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->O0:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$PageMargin;

    return-void
.end method

.method public static final synthetic access$setNORMAL_PARAGRAPH_SPACING$cp(Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;)V
    .locals 0

    sput-object p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->A0:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;

    return-void
.end method

.method public static final synthetic access$setORIGIN_CSS_CHARACTER_INDENT$cp(Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$CharacterIndent;)V
    .locals 0

    sput-object p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->n0:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$CharacterIndent;

    return-void
.end method

.method public static final synthetic access$setORIGIN_CSS_LINE_SPACING$cp(Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;)V
    .locals 0

    sput-object p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->s0:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;

    return-void
.end method

.method public static final synthetic access$setORIGIN_CSS_PAGE_MARGIN$cp(Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$PageMargin;)V
    .locals 0

    sput-object p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->M0:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$PageMargin;

    return-void
.end method

.method public static final synthetic access$setORIGIN_CSS_PARAGRAPH_SPACING$cp(Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;)V
    .locals 0

    sput-object p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->y0:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;

    return-void
.end method

.method public static final synthetic access$setORIGIN_CSS_WORD_SPACING$cp(F)V
    .locals 0

    sput p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->J:F

    return-void
.end method

.method public static final synthetic access$setORIGIN_LETTER_SPACING$cp(F)V
    .locals 0

    sput p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->E:F

    return-void
.end method

.method public static final synthetic access$setORIGIN_STYLE_CHARACTER_INDENT$cp(Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$CharacterIndent;)V
    .locals 0

    sput-object p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->q0:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$CharacterIndent;

    return-void
.end method

.method public static final synthetic access$setORIGIN_WORD_SPACING$cp(F)V
    .locals 0

    sput p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->K:F

    return-void
.end method

.method public static final synthetic access$setPAGE_MARGIN_STEP$cp(Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$PageMargin;)V
    .locals 0

    sput-object p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->L0:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$PageMargin;

    return-void
.end method

.method public static final synthetic access$setPARAGRAPH_SPACING_STEP$cp(Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;)V
    .locals 0

    sput-object p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->x0:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;

    return-void
.end method

.method public static final synthetic access$setSMALL_LINE_SPACING$cp(Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;)V
    .locals 0

    sput-object p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->t0:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;

    return-void
.end method

.method public static final synthetic access$setSMALL_PAGE_MARGIN$cp(Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$PageMargin;)V
    .locals 0

    sput-object p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->N0:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$PageMargin;

    return-void
.end method

.method public static final synthetic access$setSMALL_PARAGRAPH_SPACING$cp(Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;)V
    .locals 0

    sput-object p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->z0:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;

    return-void
.end method

.method public static final synthetic access$setSTEP_LETTER_SPACING$cp(I)V
    .locals 0

    sput p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->F:I

    return-void
.end method

.method public static final synthetic access$setSTEP_WORD_SPACING$cp(F)V
    .locals 0

    sput p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->L:F

    return-void
.end method


# virtual methods
.method public final copy(Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;)Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;

    invoke-direct {v0}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p1, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->a:Ljava/util/Map;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v1, v0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->a:Ljava/util/Map;

    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p1, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->b:Ljava/util/Map;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v1, v0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->b:Ljava/util/Map;

    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p1, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->c:Ljava/util/Map;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v1, v0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->c:Ljava/util/Map;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->d:Ljava/util/List;

    check-cast v2, Ljava/util/Collection;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->d:Ljava/util/List;

    sget-object v1, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$SPUnit;->Companion:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$SPUnit$Companion;

    iget-object v2, p1, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->e:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$SPUnit;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$SPUnit;->getValue()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$SPUnit$Companion;->create(F)Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$SPUnit;

    move-result-object v1

    iput-object v1, v0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->e:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$SPUnit;

    iget-object v1, p1, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->f:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Alignment;

    iput-object v1, v0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->f:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Alignment;

    iget-object v1, p1, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->g:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$TextSpacingTrim;

    iput-object v1, v0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->g:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$TextSpacingTrim;

    sget-object v1, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$CharacterIndent;->Companion:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$CharacterIndent$Companion;

    iget-object v2, p1, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->h:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$CharacterIndent;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$CharacterIndent;->getIndent()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$CharacterIndent$Companion;->create(I)Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$CharacterIndent;

    move-result-object v1

    iput-object v1, v0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->h:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$CharacterIndent;

    sget-object v1, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;->Companion:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage$Companion;

    iget-object v2, p1, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->i:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;->getPercent()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage$Companion;->create(I)Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;

    move-result-object v2

    iput-object v2, v0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->i:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;

    iget-object v2, p1, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->j:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;->getPercent()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage$Companion;->create(I)Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;

    move-result-object v1

    iput-object v1, v0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->j:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;

    sget-object v1, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$PageMargin;->Companion:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$PageMargin$Companion;

    iget-object v2, p1, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->k:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$PageMargin;

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$PageMargin$Companion;->copy(Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$PageMargin;)Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$PageMargin;

    move-result-object v1

    iput-object v1, v0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->k:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$PageMargin;

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->l:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$FontVariantLigaturesState;

    iput-object p0, v0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->l:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$FontVariantLigaturesState;

    iget p0, p1, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->m:I

    iput p0, v0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->m:I

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->isIncludeFontPadding()Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->setIncludeFontPadding(Z)Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->isEnableHyphen()Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->setEnableHyphen(Z)Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->isChangeWritingMode()Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->setChangeWritingMode(Z)Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->isEnableFontReplaceAll()Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->setEnableFontReplaceAll(Z)V

    iget p0, p1, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->r:F

    iput p0, v0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->r:F

    iget p0, p1, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->s:F

    iput p0, v0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->s:F

    iget p0, p1, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->u:I

    iput p0, v0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->u:I

    iget p0, p1, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->v:I

    iput p0, v0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->v:I

    iget p0, p1, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->w:I

    iput p0, v0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->w:I

    iget p0, p1, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->x:I

    iput p0, v0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->x:I

    iget p0, p1, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->y:I

    iput p0, v0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->y:I

    iget p0, p1, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->z:I

    iput p0, v0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->z:I

    iget-boolean p0, p1, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->A:Z

    iput-boolean p0, v0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->A:Z

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->getFontEmboldenLevel()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->setFontEmboldenLevel(I)Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;

    return-object v0
.end method

.method public final create(Ljava/util/Map;Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$SPUnit;Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$CharacterIndent;Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;I)Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;
    .locals 0
    .param p1    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$SPUnit;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$CharacterIndent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8    # Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p9    # Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$SPUnit;",
            "Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;",
            "Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;",
            "Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$CharacterIndent;",
            "Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;",
            "Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;",
            "Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;",
            "Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;",
            "I)",
            "Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    new-instance p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;

    invoke-direct {p0}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;-><init>()V

    iput-object p2, p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->e:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$SPUnit;

    iput-object p3, p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->i:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;

    iput-object p4, p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->j:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;

    iput-object p5, p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->h:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$CharacterIndent;

    iget-object p1, p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->k:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$PageMargin;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, p6}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$PageMargin;->setLeftMargin(Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->k:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$PageMargin;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, p7}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$PageMargin;->setTopMargin(Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->k:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$PageMargin;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, p8}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$PageMargin;->setRightMargin(Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->k:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$PageMargin;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, p9}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$PageMargin;->setBottomMargin(Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;)V

    iput p10, p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->m:I

    return-object p0
.end method

.method public final decreaseFontSize()V
    .locals 3

    sget-object v0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->O:[Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$SPUnit;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-lez v0, :cond_1

    sget-object v1, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->O:[Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$SPUnit;

    aget-object v1, v1, v0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$SPUnit;->getValue()F

    move-result v1

    iget-object v2, p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->e:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$SPUnit;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$SPUnit;->getValue()F

    move-result v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    sget-object v1, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->O:[Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$SPUnit;

    aget-object v0, v1, v0

    iput-object v0, p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->e:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$SPUnit;

    return-void
.end method

.method public final decreaseFontSizeByStep()V
    .locals 4

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->e:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$SPUnit;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$SPUnit;->getValue()F

    move-result v0

    sget-object v1, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->S:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$SPUnit;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$SPUnit;->getValue()F

    move-result v1

    sub-float/2addr v0, v1

    sget-object v1, Lcom/onyx/android/sdk/base/utils/MathUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/MathUtils;

    sget-object v2, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->R:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$SPUnit;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$SPUnit;->getValue()F

    move-result v2

    sget-object v3, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->Q:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$SPUnit;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$SPUnit;->getValue()F

    move-result v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/onyx/android/sdk/base/utils/MathUtils;->clampFloat(FFF)F

    move-result v0

    new-instance v1, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$SPUnit;

    invoke-direct {v1, v0}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$SPUnit;-><init>(F)V

    iput-object v1, p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->e:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$SPUnit;

    return-void
.end method

.method public final equals(Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;)Z
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "style2"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 28
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_26

    .line 1
    const-class v2, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_b

    .line 2
    :cond_1
    check-cast p1, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;

    .line 3
    iget-boolean v2, p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->n:Z

    iget-boolean v3, p1, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->n:Z

    if-eq v2, v3, :cond_2

    return v1

    .line 4
    :cond_2
    iget v2, p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->m:I

    iget v3, p1, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->m:I

    if-eq v2, v3, :cond_3

    return v1

    .line 5
    :cond_3
    iget-boolean v2, p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->o:Z

    iget-boolean v3, p1, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->o:Z

    if-eq v2, v3, :cond_4

    return v1

    .line 6
    :cond_4
    iget-boolean v2, p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->p:Z

    iget-boolean v3, p1, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->p:Z

    if-eq v2, v3, :cond_5

    return v1

    .line 7
    :cond_5
    iget-boolean v2, p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->q:Z

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->isEnableFontReplaceAll()Z

    move-result v3

    if-eq v2, v3, :cond_6

    return v1

    .line 8
    :cond_6
    iget v2, p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->r:F

    iget v3, p1, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->r:F

    cmpg-float v2, v2, v3

    if-nez v2, :cond_7

    move v2, v0

    goto :goto_0

    :cond_7
    move v2, v1

    :goto_0
    if-nez v2, :cond_8

    return v1

    .line 9
    :cond_8
    iget v2, p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->s:F

    iget v3, p1, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->s:F

    cmpg-float v2, v2, v3

    if-nez v2, :cond_9

    move v2, v0

    goto :goto_1

    :cond_9
    move v2, v1

    :goto_1
    if-nez v2, :cond_a

    return v1

    .line 10
    :cond_a
    iget-object v2, p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->a:Ljava/util/Map;

    iget-object v3, p1, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->a:Ljava/util/Map;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    return v1

    .line 11
    :cond_b
    iget-object v2, p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->b:Ljava/util/Map;

    iget-object v3, p1, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->b:Ljava/util/Map;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    return v1

    .line 12
    :cond_c
    iget-object v2, p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->c:Ljava/util/Map;

    iget-object v3, p1, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->c:Ljava/util/Map;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    return v1

    .line 13
    :cond_d
    iget-object v2, p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->d:Ljava/util/List;

    iget-object v3, p1, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->d:Ljava/util/List;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    return v1

    .line 14
    :cond_e
    iget-object v2, p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->e:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$SPUnit;

    if-eqz v2, :cond_f

    iget-object v3, p1, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->e:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$SPUnit;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    goto :goto_2

    :cond_f
    iget-object v2, p1, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->e:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$SPUnit;

    if-eqz v2, :cond_10

    :goto_2
    move v2, v0

    goto :goto_3

    :cond_10
    move v2, v1

    :goto_3
    if-eqz v2, :cond_11

    return v1

    .line 15
    :cond_11
    iget-object v2, p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->f:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Alignment;

    iget-object v3, p1, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->f:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Alignment;

    if-eq v2, v3, :cond_12

    return v1

    .line 16
    :cond_12
    iget-object v2, p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->g:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$TextSpacingTrim;

    iget-object v3, p1, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->g:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$TextSpacingTrim;

    if-eq v2, v3, :cond_13

    return v1

    .line 17
    :cond_13
    iget-object v2, p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->h:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$CharacterIndent;

    if-eqz v2, :cond_14

    iget-object v3, p1, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->h:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$CharacterIndent;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    goto :goto_4

    :cond_14
    iget-object v2, p1, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->h:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$CharacterIndent;

    if-eqz v2, :cond_15

    :goto_4
    move v2, v0

    goto :goto_5

    :cond_15
    move v2, v1

    :goto_5
    if-eqz v2, :cond_16

    return v1

    .line 18
    :cond_16
    iget-object v2, p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->i:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;

    if-eqz v2, :cond_17

    iget-object v3, p1, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->i:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_18

    goto :goto_6

    :cond_17
    iget-object v2, p1, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->i:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;

    if-eqz v2, :cond_18

    :goto_6
    move v2, v0

    goto :goto_7

    :cond_18
    move v2, v1

    :goto_7
    if-eqz v2, :cond_19

    return v1

    .line 19
    :cond_19
    iget-object v2, p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->j:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;

    if-eqz v2, :cond_1a

    iget-object v3, p1, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->j:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b

    goto :goto_8

    :cond_1a
    iget-object v2, p1, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->j:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;

    if-eqz v2, :cond_1b

    :goto_8
    move v2, v0

    goto :goto_9

    :cond_1b
    move v2, v1

    :goto_9
    if-eqz v2, :cond_1c

    return v1

    .line 20
    :cond_1c
    iget-object v2, p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->l:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$FontVariantLigaturesState;

    iget-object v3, p1, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->l:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$FontVariantLigaturesState;

    if-eq v2, v3, :cond_1d

    return v1

    .line 21
    :cond_1d
    iget v2, p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->u:I

    iget v3, p1, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->u:I

    if-eq v2, v3, :cond_1e

    return v1

    .line 22
    :cond_1e
    iget v2, p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->v:I

    iget v3, p1, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->v:I

    if-eq v2, v3, :cond_1f

    return v1

    .line 23
    :cond_1f
    iget v2, p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->w:I

    iget v3, p1, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->w:I

    if-eq v2, v3, :cond_20

    return v1

    .line 24
    :cond_20
    iget v2, p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->x:I

    iget v3, p1, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->x:I

    if-eq v2, v3, :cond_21

    return v1

    .line 25
    :cond_21
    iget v2, p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->y:I

    iget v3, p1, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->y:I

    if-eq v2, v3, :cond_22

    return v1

    .line 26
    :cond_22
    iget v2, p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->z:I

    iget v3, p1, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->z:I

    if-eq v2, v3, :cond_23

    return v1

    .line 27
    :cond_23
    iget-object p0, p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->k:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$PageMargin;

    if-eqz p0, :cond_24

    iget-object p1, p1, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->k:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$PageMargin;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_a

    :cond_24
    iget-object p0, p1, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->k:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$PageMargin;

    if-nez p0, :cond_25

    goto :goto_a

    :cond_25
    move v0, v1

    :goto_a
    return v0

    :cond_26
    :goto_b
    return v1
.end method

.method public final getAlignment()Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Alignment;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->f:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Alignment;

    return-object p0
.end method

.method public final getBackgroundColor()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->w:I

    return p0
.end method

.method public final getBackgroundColorType()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->x:I

    return p0
.end method

.method public final getExternalFonts()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->d:Ljava/util/List;

    return-object p0
.end method

.method public final getFontEmbolden()F
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->getFontEmboldenLevel()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->getFontEmbolden(I)F

    move-result p0

    return p0
.end method

.method public final getFontEmbolden(I)F
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
            to = 0x1eL
        .end annotation
    .end param

    int-to-float p0, p1

    .line 2
    sget p1, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->N:F

    mul-float/2addr p0, p1

    sget p1, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->M:F

    add-float/2addr p0, p1

    const/4 p1, 0x0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method

.method public final getFontEmboldenLevel()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->t:I

    return p0
.end method

.method public final getFontFace()Ljava/lang/String;
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        message = ""
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->a:Ljava/util/Map;

    sget-object v0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->W:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public final getFontMapping()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->a:Ljava/util/Map;

    return-object p0
.end method

.method public final getFontSize()Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$SPUnit;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->e:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$SPUnit;

    return-object p0
.end method

.method public final getFontSizeByIndex(I)Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$SPUnit;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->O:[Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$SPUnit;

    array-length v0, p0

    if-le v0, p1, :cond_0

    aget-object p0, p0, p1

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->P:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$SPUnit;

    :goto_0
    return-object p0
.end method

.method public final getFontVariantLigaturesState()Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$FontVariantLigaturesState;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->l:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$FontVariantLigaturesState;

    return-object p0
.end method

.method public final getForegroundColor()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->y:I

    return p0
.end method

.method public final getForegroundColorType()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->z:I

    return p0
.end method

.method public final getIndent()Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$CharacterIndent;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->h:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$CharacterIndent;

    return-object p0
.end method

.method public final getLetterSpacing()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->r:F

    return p0
.end method

.method public final getLineSpacing()Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->i:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;

    return-object p0
.end method

.method public final getLineSpacingByIndex(I)Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->r0:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;->getPercent()I

    move-result p0

    mul-int/2addr p1, p0

    sget-object p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->t0:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;->getPercent()I

    move-result p0

    add-int/2addr p1, p0

    sget-object p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->t0:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;->getPercent()I

    move-result p0

    if-ge p1, p0, :cond_0

    sget-object p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->t0:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->v0:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;->getPercent()I

    move-result p0

    if-le p1, p0, :cond_1

    sget-object p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->v0:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;

    goto :goto_0

    :cond_1
    new-instance p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;-><init>(I)V

    :goto_0
    return-object p0
.end method

.method public final getPageMargin()Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$PageMargin;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->k:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$PageMargin;

    return-object p0
.end method

.method public final getPageMarginByIndex(I)Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$PageMargin;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    sget p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->F0:I

    if-ge p1, p0, :cond_0

    sget-object p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->N0:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$PageMargin;

    goto :goto_0

    :cond_0
    sget p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->H0:I

    if-le p1, p0, :cond_1

    sget-object p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->P0:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$PageMargin;

    goto :goto_0

    :cond_1
    new-instance p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$PageMargin;

    sget-object v0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;->Companion:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage$Companion;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage$Companion;->create(I)Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;

    move-result-object v1

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage$Companion;->create(I)Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;

    move-result-object v2

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage$Companion;->create(I)Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;

    move-result-object v3

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage$Companion;->create(I)Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;

    move-result-object p1

    invoke-direct {p0, v1, v2, v3, p1}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$PageMargin;-><init>(Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;)V

    :goto_0
    return-object p0
.end method

.method public final getPagingMode()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->m:I

    return p0
.end method

.method public final getParagraphSpacing()Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->j:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;

    return-object p0
.end method

.method public final getParagraphSpacingByIndex(I)Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->x0:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;->getPercent()I

    move-result p0

    mul-int/2addr p1, p0

    sget-object p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->z0:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;->getPercent()I

    move-result p0

    if-ge p1, p0, :cond_0

    sget-object p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->z0:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->B0:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;->getPercent()I

    move-result p0

    if-le p1, p0, :cond_1

    sget-object p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->B0:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;

    goto :goto_0

    :cond_1
    new-instance p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;-><init>(I)V

    :goto_0
    return-object p0
.end method

.method public final getStyleFontMapping()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$FontSpec;",
            "Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$FontEntry;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->b:Ljava/util/Map;

    return-object p0
.end method

.method public final getTagFontMapping()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$FontEntry;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->c:Ljava/util/Map;

    return-object p0
.end method

.method public final getTextColor()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->u:I

    return p0
.end method

.method public final getTextColorType()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->v:I

    return p0
.end method

.method public final getTextSpacingTrim()Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$TextSpacingTrim;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->g:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$TextSpacingTrim;

    return-object p0
.end method

.method public final getWordSpacing()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->s:F

    return p0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->a:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->b:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->c:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->d:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->e:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$SPUnit;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->f:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Alignment;

    if-eqz v1, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->g:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$TextSpacingTrim;

    if-eqz v1, :cond_2

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->h:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$CharacterIndent;

    if-eqz v1, :cond_3

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->i:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;

    if-eqz v1, :cond_4

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_4

    :cond_4
    move v1, v2

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->j:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;

    if-eqz v1, :cond_5

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_5

    :cond_5
    move v1, v2

    :goto_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->k:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$PageMargin;

    if-eqz v1, :cond_6

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :cond_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->l:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$FontVariantLigaturesState;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->u:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->v:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->w:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->x:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->y:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->z:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->m:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->n:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->o:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->p:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->q:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->r:F

    const/16 v2, 0x64

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->s:F

    mul-float/2addr p0, v2

    float-to-int p0, p0

    add-int/2addr v0, p0

    return v0
.end method

.method public final increaseFontSize()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->O:[Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$SPUnit;

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_1

    aget-object v1, v1, v0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$SPUnit;->getValue()F

    move-result v1

    iget-object v2, p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->e:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$SPUnit;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$SPUnit;->getValue()F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    sget-object v1, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->O:[Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$SPUnit;

    aget-object v0, v1, v0

    iput-object v0, p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->e:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$SPUnit;

    return-void
.end method

.method public final increaseFontSizeByStep()V
    .locals 4

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->e:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$SPUnit;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$SPUnit;->getValue()F

    move-result v0

    sget-object v1, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->S:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$SPUnit;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$SPUnit;->getValue()F

    move-result v1

    add-float/2addr v0, v1

    sget-object v1, Lcom/onyx/android/sdk/base/utils/MathUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/MathUtils;

    sget-object v2, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->R:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$SPUnit;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$SPUnit;->getValue()F

    move-result v2

    sget-object v3, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->Q:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$SPUnit;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$SPUnit;->getValue()F

    move-result v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/onyx/android/sdk/base/utils/MathUtils;->clampFloat(FFF)F

    move-result v0

    new-instance v1, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$SPUnit;

    invoke-direct {v1, v0}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$SPUnit;-><init>(F)V

    iput-object v1, p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->e:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$SPUnit;

    return-void
.end method

.method public final isAntiAlias()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->A:Z

    return p0
.end method

.method public final isChangeWritingMode()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->p:Z

    return p0
.end method

.method public final isEnableFontReplaceAll()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->q:Z

    return p0
.end method

.method public final isEnableHyphen()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->o:Z

    return p0
.end method

.method public final isIncludeFontPadding()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->n:Z

    return p0
.end method

.method public final isOriginCssBottomMargin()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->getPageMargin()Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$PageMargin;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$PageMargin;->getBottomMargin()Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;->getPercent()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->isOriginCssBottomMargin(F)Z

    move-result p0

    return p0
.end method

.method public final isOriginCssBottomMargin(F)Z
    .locals 0

    .line 2
    sget-object p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->M0:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$PageMargin;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$PageMargin;->getBottomMargin()Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;->getPercent()I

    move-result p0

    int-to-float p0, p0

    cmpg-float p0, p1, p0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isOriginCssIndent()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->getIndent()Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$CharacterIndent;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$CharacterIndent;->getIndent()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->isOriginCssIndent(I)Z

    move-result p0

    return p0
.end method

.method public final isOriginCssIndent(I)Z
    .locals 0

    .line 2
    sget-object p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->q0:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$CharacterIndent;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$CharacterIndent;->getIndent()I

    move-result p0

    if-gt p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isOriginCssLeftMargin()Z
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->getPageMargin()Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$PageMargin;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$PageMargin;->getLeftMargin()Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;->getPercent()I

    move-result p0

    sget-object v0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->M0:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$PageMargin;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$PageMargin;->getLeftMargin()Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;->getPercent()I

    move-result v0

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isOriginCssLetterSpacing()Z
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->getLetterSpacing()F

    move-result p0

    sget v0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->E:F

    cmpg-float p0, p0, v0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isOriginCssLineSpacing()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->getLineSpacing()Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;->getPercent()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->isOriginCssLineSpacing(I)Z

    move-result p0

    return p0
.end method

.method public final isOriginCssLineSpacing(I)Z
    .locals 0

    .line 2
    sget-object p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->s0:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;->getPercent()I

    move-result p0

    if-gt p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isOriginCssParagraphSpacing()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->getParagraphSpacing()Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;->getPercent()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->isOriginCssParagraphSpacing(I)Z

    move-result p0

    return p0
.end method

.method public final isOriginCssParagraphSpacing(I)Z
    .locals 0

    .line 2
    sget-object p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->y0:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;->getPercent()I

    move-result p0

    if-gt p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isOriginCssRightMargin()Z
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->getPageMargin()Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$PageMargin;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$PageMargin;->getRightMargin()Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;->getPercent()I

    move-result p0

    sget-object v0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->M0:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$PageMargin;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$PageMargin;->getRightMargin()Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;->getPercent()I

    move-result v0

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isOriginCssTopMargin()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->getPageMargin()Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$PageMargin;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$PageMargin;->getTopMargin()Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;->getPercent()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->isOriginCssTopMargin(F)Z

    move-result p0

    return p0
.end method

.method public final isOriginCssTopMargin(F)Z
    .locals 0

    .line 2
    sget-object p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->M0:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$PageMargin;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$PageMargin;->getTopMargin()Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;->getPercent()I

    move-result p0

    int-to-float p0, p0

    cmpg-float p0, p1, p0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isOriginCssWordSpacing()Z
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->getWordSpacing()F

    move-result p0

    sget v0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->E:F

    cmpg-float p0, p0, v0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final limitFontSize(F)F
    .locals 2

    sget-object p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->R:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$SPUnit;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$SPUnit;->getValue()F

    move-result p0

    sget-object v0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->Q:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$SPUnit;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$SPUnit;->getValue()F

    move-result v0

    cmpg-float v1, p1, p0

    if-gez v1, :cond_0

    move p1, p0

    goto :goto_0

    :cond_0
    cmpl-float p0, p1, v0

    if-lez p0, :cond_1

    move p1, v0

    :cond_1
    :goto_0
    return p1
.end method

.method public final resetOriginCssStyle()V
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->P:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$SPUnit;

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->setFontSize(Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$SPUnit;)V

    sget-object v0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->l0:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Alignment;

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->setAlignment(Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Alignment;)V

    sget v0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->K:F

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->setWordSpacing(F)V

    sget v0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->E:F

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->setLetterSpacing(F)V

    sget-object v0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->s0:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->setLineSpacing(Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;)V

    sget-object v0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->y0:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->setParagraphSpacing(Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;)V

    sget-object v0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$TextSpacingTrim;->SPACE_ALL:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$TextSpacingTrim;

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->setTextSpacingTrim(Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$TextSpacingTrim;)V

    sget-object v0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->M0:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$PageMargin;

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->setPageMargin(Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$PageMargin;)V

    sget-object v0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->q0:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$CharacterIndent;

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->setIndent(Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$CharacterIndent;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->setFontEmboldenLevel(I)Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;

    sget-boolean v0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->a0:Z

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->setIncludeFontPadding(Z)Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;

    sget-boolean v0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->b0:Z

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->setChangeWritingMode(Z)Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;

    sget-boolean v0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->c0:Z

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->setEnableFontReplaceAll(Z)V

    return-void
.end method

.method public final setAlignment(Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Alignment;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Alignment;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->f:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Alignment;

    return-void
.end method

.method public final setAntiAlias(Z)Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iput-boolean p1, p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->A:Z

    return-object p0
.end method

.method public final setBackgroundColor(I)Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iput p1, p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->w:I

    return-object p0
.end method

.method public final setBackgroundColorType(I)Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iput p1, p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->x:I

    return-object p0
.end method

.method public final setChangeWritingMode(Z)Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iput-boolean p1, p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->p:Z

    return-object p0
.end method

.method public final setDefaultFontSizes([Ljava/lang/Float;)V
    .locals 4
    .param p1    # [Ljava/lang/Float;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_1

    array-length p0, p1

    if-gtz p0, :cond_0

    goto :goto_1

    :cond_0
    array-length p0, p1

    new-array p0, p0, [Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$SPUnit;

    sput-object p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->O:[Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$SPUnit;

    array-length p0, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_1

    sget-object v1, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->O:[Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$SPUnit;

    sget-object v2, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$SPUnit;->Companion:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$SPUnit$Companion;

    aget-object v3, p1, v0

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$SPUnit$Companion;->create(F)Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$SPUnit;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public final setEnableFontReplaceAll(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->q:Z

    return-void
.end method

.method public final setEnableHyphen(Z)Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iput-boolean p1, p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->o:Z

    return-object p0
.end method

.method public final setExternalFonts(Ljava/util/List;)Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->d:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    check-cast p1, Ljava/util/Collection;

    invoke-static {v0, p1}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->safeAddAll(Ljava/util/Collection;Ljava/util/Collection;)V

    return-object p0
.end method

.method public final setFontEmboldenLevel(I)Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iput p1, p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->t:I

    return-object p0
.end method

.method public final setFontMapping(Ljava/util/Map;)Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;
    .locals 1
    .param p1    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "fontMapping"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->a:Ljava/util/Map;

    return-object p0
.end method

.method public final setFontSize(Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$SPUnit;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$SPUnit;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->e:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$SPUnit;

    return-void
.end method

.method public final setFontVariantLigaturesState(Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$FontVariantLigaturesState;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$FontVariantLigaturesState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "fontVariantLigaturesState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->l:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$FontVariantLigaturesState;

    return-void
.end method

.method public final setForegroundColor(I)Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iput p1, p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->y:I

    return-object p0
.end method

.method public final setForegroundColorType(I)Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iput p1, p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->z:I

    return-object p0
.end method

.method public final setIncludeFontPadding(Z)Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iput-boolean p1, p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->n:Z

    return-object p0
.end method

.method public final setIndent(Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$CharacterIndent;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$CharacterIndent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->h:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$CharacterIndent;

    return-void
.end method

.method public final setLetterSpacing(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->r:F

    return-void
.end method

.method public final setLineSpacing(Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->i:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;

    return-void
.end method

.method public final setPageMargin(Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$PageMargin;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$PageMargin;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->k:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$PageMargin;

    return-void
.end method

.method public final setPagingMode(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->m:I

    return-void
.end method

.method public final setParagraphSpacing(Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->j:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;

    return-void
.end method

.method public final setStyleFontMapping(Ljava/util/Map;)Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;
    .locals 1
    .param p1    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$FontSpec;",
            "Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$FontEntry;",
            ">;)",
            "Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "fontMapping"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->b:Ljava/util/Map;

    return-object p0
.end method

.method public final setTagFontMapping(Ljava/util/Map;)Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;
    .locals 1
    .param p1    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$FontEntry;",
            ">;)",
            "Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "fontMapping"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->c:Ljava/util/Map;

    return-object p0
.end method

.method public final setTextColor(I)Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iput p1, p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->u:I

    return-object p0
.end method

.method public final setTextColorType(I)Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iput p1, p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->v:I

    return-object p0
.end method

.method public final setTextSpacingTrim(Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$TextSpacingTrim;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$TextSpacingTrim;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->g:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$TextSpacingTrim;

    return-void
.end method

.method public final setWordSpacing(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->s:F

    return-void
.end method
