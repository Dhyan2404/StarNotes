.class public Lcom/onyx/android/sdk/textbox/widget/RichEditor;
.super Landroid/webkit/WebView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/textbox/widget/RichEditor$AfterInitialLoadListener;,
        Lcom/onyx/android/sdk/textbox/widget/RichEditor$Companion;,
        Lcom/onyx/android/sdk/textbox/widget/RichEditor$EditorWebViewClient;,
        Lcom/onyx/android/sdk/textbox/widget/RichEditor$OnEditorInitListener;,
        Lcom/onyx/android/sdk/textbox/widget/RichEditor$OnTextChangeListener;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00fc\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u0000\n\u0002\u0008\u0004\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0018\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008^\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\n\u0008\u0016\u0018\u0000 \u0098\u00022\u00020\u0001:\n\u0099\u0002\u0098\u0002\u009a\u0002\u009b\u0002\u009c\u0002B\u0015\u0008\u0016\u0012\u0008\u0010\u0090\u0002\u001a\u00030\u008f\u0002\u00a2\u0006\u0006\u0008\u0091\u0002\u0010\u0092\u0002B!\u0008\u0016\u0012\u0008\u0010\u0090\u0002\u001a\u00030\u008f\u0002\u0012\n\u0010\u0094\u0002\u001a\u0005\u0018\u00010\u0093\u0002\u00a2\u0006\u0006\u0008\u0091\u0002\u0010\u0095\u0002B*\u0008\u0016\u0012\u0008\u0010\u0090\u0002\u001a\u00030\u008f\u0002\u0012\n\u0010\u0094\u0002\u001a\u0005\u0018\u00010\u0093\u0002\u0012\u0007\u0010\u0096\u0002\u001a\u00020.\u00a2\u0006\u0006\u0008\u0091\u0002\u0010\u0097\u0002J\u0008\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0008\u0010\u0008\u001a\u00020\u0002H\u0015J\u000c\u0010\n\u001a\u00060\tR\u00020\u0000H\u0014J\u0012\u0010\r\u001a\u00020\u00022\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000bH\u0016J\u0012\u0010\u0010\u001a\u00020\u00022\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0016J\u0012\u0010\u0012\u001a\u00020\u00022\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0011H\u0016J\u0012\u0010\u0015\u001a\u00020\u00022\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0013H\u0016J\n\u0010\u0017\u001a\u0004\u0018\u00010\u0016H\u0014J\u0010\u0010\u001a\u001a\u00020\u00022\u0006\u0010\u0019\u001a\u00020\u0018H\u0014J\u0010\u0010\u001c\u001a\u00020\u00022\u0006\u0010\u001b\u001a\u00020\u0018H\u0014J\u000e\u0010\u001e\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u001dJ\u0016\u0010!\u001a\u00020\u00022\u0006\u0010\u001f\u001a\u00020\u00182\u0006\u0010 \u001a\u00020\u0018J(\u0010&\u001a\u00020\u00022\u0006\u0010#\u001a\u00020\"2\u0006\u0010$\u001a\u00020\"2\u000e\u0010\u001a\u001a\n\u0012\u0004\u0012\u00020\u0018\u0018\u00010%H\u0016J\u0010\u0010(\u001a\u00020\u00022\u0006\u0010\'\u001a\u00020\"H\u0016J\u0008\u0010)\u001a\u00020\"H\u0016J\u0008\u0010*\u001a\u00020\"H\u0016J\u0008\u0010+\u001a\u00020\"H\u0016J\u0008\u0010,\u001a\u00020\"H\u0016J0\u00103\u001a\u00020\u00022\u0006\u0010-\u001a\u00020\u00062\u0006\u0010/\u001a\u00020.2\u0006\u00100\u001a\u00020.2\u0006\u00101\u001a\u00020.2\u0006\u00102\u001a\u00020.H\u0014J\u0010\u00104\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\u001c\u00108\u001a\u0004\u0018\u0001072\u0008\u0010\u001a\u001a\u0004\u0018\u0001052\u0006\u00106\u001a\u00020.H\u0016J\u0010\u0010;\u001a\u00020\u00022\u0006\u0010:\u001a\u000209H\u0014J\u0010\u0010<\u001a\u00020\u00022\u0006\u0010:\u001a\u000209H\u0014J\u0010\u0010?\u001a\n\u0012\u0004\u0012\u00020>\u0018\u00010=H\u0016J\u0008\u0010@\u001a\u00020\u0002H\u0016J\u001a\u0010@\u001a\u00020\u00022\u0010\u0010B\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u000109\u0018\u00010AH\u0016J\u0012\u0010C\u001a\u00020\u00062\u0008\u0010:\u001a\u0004\u0018\u000109H\u0014J\u001e\u0010F\u001a\u00020\u00062\u0006\u0010D\u001a\u00020\u00162\u0006\u0010:\u001a\u0002092\u0006\u0010E\u001a\u00020.J\u001e\u0010H\u001a\u00020\u00062\u0006\u0010D\u001a\u00020\u00162\u0006\u0010:\u001a\u0002092\u0006\u0010G\u001a\u00020.J\u0018\u0010K\u001a\u00020\u00062\u0006\u0010I\u001a\u00020.2\u0006\u0010J\u001a\u00020.H\u0014J\u0018\u0010N\u001a\u00020\u00062\u0006\u0010L\u001a\u00020.2\u0006\u0010M\u001a\u00020.H\u0014J\u0008\u0010O\u001a\u00020\u0002H\u0016J\u0010\u0010\u0008\u001a\u00020\u00022\u0006\u0010Q\u001a\u00020PH\u0016J\u0010\u0010S\u001a\u00020\u00022\u0006\u0010R\u001a\u00020\u0006H\u0016J\u0012\u0010U\u001a\u00020\u00022\u0008\u0010T\u001a\u0004\u0018\u00010\u0018H\u0016J\"\u0010U\u001a\u00020\u00022\u0008\u0010T\u001a\u0004\u0018\u00010\u00182\u000e\u0010\u001a\u001a\n\u0012\u0004\u0012\u00020\u0018\u0018\u00010%H\u0016J\u0012\u0010W\u001a\u00020\u00022\u0008\u0010V\u001a\u0004\u0018\u00010\u0018H\u0016J\n\u0010X\u001a\u0004\u0018\u00010\u0018H\u0016J\u0008\u0010Y\u001a\u00020\u0002H\u0016J\u0008\u0010Z\u001a\u00020\u0002H\u0016J\u0010\u0010\\\u001a\u00020\u00022\u0006\u0010[\u001a\u00020.H\u0016J\u0010\u0010^\u001a\u00020\u00022\u0006\u0010]\u001a\u00020\"H\u0016J\u0010\u0010`\u001a\u00020\u00022\u0006\u0010_\u001a\u00020.H\u0016J(\u0010a\u001a\u00020\u00022\u0006\u0010/\u001a\u00020\"2\u0006\u00100\u001a\u00020\"2\u0006\u00101\u001a\u00020\"2\u0006\u00102\u001a\u00020\"H\u0016J(\u0010`\u001a\u00020\u00022\u0006\u0010/\u001a\u00020.2\u0006\u00100\u001a\u00020.2\u0006\u00101\u001a\u00020.2\u0006\u00102\u001a\u00020.H\u0016J(\u0010d\u001a\u00020\u00022\u0006\u0010b\u001a\u00020.2\u0006\u00100\u001a\u00020.2\u0006\u0010c\u001a\u00020.2\u0006\u00102\u001a\u00020.H\u0016J\u0010\u0010e\u001a\u00020\u00022\u0006\u0010[\u001a\u00020.H\u0016J\u0010\u0010f\u001a\u00020\u00022\u0006\u0010[\u001a\u00020.H\u0016J\u0010\u0010h\u001a\u00020\u00022\u0006\u0010g\u001a\u00020.H\u0016J\u0010\u0010k\u001a\u00020\u00022\u0006\u0010j\u001a\u00020iH\u0016J\u0010\u0010n\u001a\u00020m2\u0006\u0010l\u001a\u00020iH\u0014J\u0010\u0010k\u001a\u00020\u00022\u0006\u0010o\u001a\u00020\u0018H\u0016J\u0018\u0010r\u001a\u00020\u00022\u0006\u0010p\u001a\u00020\u00062\u0006\u0010q\u001a\u00020\u0006H\u0016J\u0010\u0010s\u001a\u00020\u00022\u0006\u0010]\u001a\u00020.H\u0016J\u0010\u0010u\u001a\u00020\u00022\u0006\u0010t\u001a\u00020\u0006H\u0016J\u0010\u0010v\u001a\u00020\u00022\u0006\u0010]\u001a\u00020.H\u0016J\u0010\u0010w\u001a\u00020\u00022\u0006\u0010t\u001a\u00020\u0006H\u0016J\u0018\u0010z\u001a\u00020\u00022\u0006\u0010x\u001a\u00020.2\u0006\u0010y\u001a\u00020.H\u0016J\u0010\u0010{\u001a\u00020\u00022\u0006\u0010]\u001a\u00020.H\u0016J \u0010{\u001a\u00020\u00022\u0006\u0010]\u001a\u00020.2\u000e\u0010\u001a\u001a\n\u0012\u0004\u0012\u00020\u0018\u0018\u00010%H\u0016J\u0010\u0010|\u001a\u00020\u00022\u0006\u0010]\u001a\u00020.H\u0016J\u0010\u0010~\u001a\u00020\u00022\u0006\u0010}\u001a\u00020\u0018H\u0016J!\u0010\u0080\u0001\u001a\u00020\u00022\u0006\u0010\u007f\u001a\u00020\u00062\u000e\u0010\u001a\u001a\n\u0012\u0004\u0012\u00020\u0018\u0018\u00010%H\u0016J\u0007\u0010\u0081\u0001\u001a\u00020\u0002J\u0012\u0010\u0083\u0001\u001a\u00020\u00022\u0007\u0010\u0082\u0001\u001a\u00020\u0018H\u0016J\t\u0010\u0084\u0001\u001a\u00020\u0006H\u0016J\t\u0010\u0085\u0001\u001a\u00020\u0006H\u0016J\u0012\u0010\u0087\u0001\u001a\u00020\u00022\u0007\u0010\u0086\u0001\u001a\u00020.H\u0016J\u001b\u0010\u008a\u0001\u001a\u00020\u00022\u0007\u0010\u0088\u0001\u001a\u00020\u00182\u0007\u0010\u0089\u0001\u001a\u00020\u0018H\u0016J,\u0010\u008e\u0001\u001a\u00020\u00022\u0007\u0010\u008b\u0001\u001a\u00020\u00182\u0006\u0010o\u001a\u00020\u00182\u0007\u0010\u008c\u0001\u001a\u00020\u00182\u0007\u0010\u008d\u0001\u001a\u00020\u0006H\u0016J\u0011\u0010\u008f\u0001\u001a\u00020\u00022\u0006\u0010]\u001a\u00020.H\u0016J\u0012\u0010\u0091\u0001\u001a\u00020\u00022\u0007\u0010\u0090\u0001\u001a\u00020\"H\u0016J\u0012\u0010\u0092\u0001\u001a\u00020\u00022\u0007\u0010\u0090\u0001\u001a\u00020\"H\u0016J\t\u0010\u0093\u0001\u001a\u00020\u0002H\u0016J\t\u0010\u0094\u0001\u001a\u00020\u0002H\u0016J\u0012\u0010\u0095\u0001\u001a\u00020\u00022\u0007\u0010\u008d\u0001\u001a\u00020\u0006H\u0016J\u0012\u0010\u0096\u0001\u001a\u00020\u00022\u0007\u0010\u008d\u0001\u001a\u00020\u0006H\u0016J\t\u0010\u0097\u0001\u001a\u00020\u0002H\u0016J\t\u0010\u0098\u0001\u001a\u00020\u0002H\u0016J\t\u0010\u0099\u0001\u001a\u00020\u0002H\u0016J\u0012\u0010\u009a\u0001\u001a\u00020\u00022\u0007\u0010\u008d\u0001\u001a\u00020\u0006H\u0016J\u0011\u0010\u009b\u0001\u001a\u00020\u00022\u0006\u0010[\u001a\u00020.H\u0016J\u001a\u0010\u009c\u0001\u001a\u00020\u00022\u0006\u0010[\u001a\u00020.2\u0007\u0010\u008d\u0001\u001a\u00020\u0006H\u0016J\u0011\u0010\u009d\u0001\u001a\u00020\u00022\u0006\u0010[\u001a\u00020.H\u0016J\u001b\u0010\u009f\u0001\u001a\u00020\u00022\u0007\u0010\u009e\u0001\u001a\u00020\"2\u0007\u0010\u008d\u0001\u001a\u00020\u0006H\u0016J\t\u0010\u00a0\u0001\u001a\u00020\u0002H\u0016J\u0012\u0010\u00a2\u0001\u001a\u00020\u00022\u0007\u0010\u00a1\u0001\u001a\u00020.H\u0016J\t\u0010\u00a3\u0001\u001a\u00020\u0002H\u0016J\t\u0010\u00a4\u0001\u001a\u00020\u0002H\u0016J\t\u0010\u00a5\u0001\u001a\u00020\u0002H\u0016J\u0012\u0010\u00a7\u0001\u001a\u00020\u00022\u0007\u0010\u00a6\u0001\u001a\u00020\u0018H\u0016J\t\u0010\u00a8\u0001\u001a\u00020\u0002H\u0016J\t\u0010\u00a9\u0001\u001a\u00020\u0002H\u0016J\t\u0010\u00aa\u0001\u001a\u00020\u0002H\u0016J\t\u0010\u00ab\u0001\u001a\u00020\u0002H\u0016J\t\u0010\u00ac\u0001\u001a\u00020\u0002H\u0016J\t\u0010\u00ad\u0001\u001a\u00020\u0002H\u0016J\t\u0010\u00ae\u0001\u001a\u00020\u0002H\u0016J\u0011\u0010\u00af\u0001\u001a\u00020\u00022\u0006\u0010\u0019\u001a\u00020\u0018H\u0016J\u0012\u0010\u00b1\u0001\u001a\u00020\u00022\u0007\u0010\u00b0\u0001\u001a\u00020\u0018H\u0016J\u001a\u0010\u00b3\u0001\u001a\u00020\u00022\u0006\u0010o\u001a\u00020\u00182\u0007\u0010\u00b2\u0001\u001a\u00020\u0018H\u0016J\"\u0010\u00b3\u0001\u001a\u00020\u00022\u0006\u0010o\u001a\u00020\u00182\u0007\u0010\u00b2\u0001\u001a\u00020\u00182\u0006\u0010x\u001a\u00020.H\u0016J*\u0010\u00b3\u0001\u001a\u00020\u00022\u0006\u0010o\u001a\u00020\u00182\u0007\u0010\u00b2\u0001\u001a\u00020\u00182\u0006\u0010x\u001a\u00020.2\u0006\u0010y\u001a\u00020.H\u0016J\u0011\u0010\u00b4\u0001\u001a\u00020\u00022\u0006\u0010o\u001a\u00020\u0018H\u0016J\u0019\u0010\u00b4\u0001\u001a\u00020\u00022\u0006\u0010o\u001a\u00020\u00182\u0006\u0010x\u001a\u00020.H\u0016J!\u0010\u00b4\u0001\u001a\u00020\u00022\u0006\u0010o\u001a\u00020\u00182\u0006\u0010x\u001a\u00020.2\u0006\u0010y\u001a\u00020.H\u0016J\u0011\u0010\u00b5\u0001\u001a\u00020\u00022\u0006\u0010o\u001a\u00020\u0018H\u0016J\u0011\u0010\u00b6\u0001\u001a\u00020\u00022\u0006\u0010o\u001a\u00020\u0018H\u0016J\u0019\u0010\u00b6\u0001\u001a\u00020\u00022\u0006\u0010o\u001a\u00020\u00182\u0006\u0010x\u001a\u00020.H\u0016J!\u0010\u00b6\u0001\u001a\u00020\u00022\u0006\u0010o\u001a\u00020\u00182\u0006\u0010x\u001a\u00020.2\u0006\u0010y\u001a\u00020.H\u0016J\u001b\u0010\u00b9\u0001\u001a\u00020\u00022\u0007\u0010\u00b7\u0001\u001a\u00020\u00182\u0007\u0010\u00b8\u0001\u001a\u00020\u0018H\u0016J\t\u0010\u00ba\u0001\u001a\u00020\u0002H\u0016J\t\u0010\u00bb\u0001\u001a\u00020\u0002H\u0016J\u0019\u0010\u00bc\u0001\u001a\u00020\u00022\u000e\u0010\u001a\u001a\n\u0012\u0004\u0012\u00020\u0018\u0018\u00010%H\u0016J\t\u0010\u00bd\u0001\u001a\u00020\u0002H\u0016J\u000f\u0010\u00be\u0001\u001a\u0008\u0012\u0004\u0012\u00020\u00180=H\u0016J\u0011\u0010\u00bf\u0001\u001a\u00020\u00182\u0006\u0010[\u001a\u00020.H\u0014J\t\u0010\u00c0\u0001\u001a\u00020\u0002H\u0016J\u0012\u0010\u00c2\u0001\u001a\u00020\u00022\u0007\u0010\u00c1\u0001\u001a\u00020\u0018H\u0014J\"\u0010\u00c2\u0001\u001a\u00020\u00022\u0007\u0010\u00c1\u0001\u001a\u00020\u00182\u000e\u0010\u001a\u001a\n\u0012\u0004\u0012\u00020\u0018\u0018\u00010%H\u0014J\"\u0010\u00c3\u0001\u001a\u00020\u00022\u0007\u0010\u00c1\u0001\u001a\u00020\u00182\u000e\u0010\u001a\u001a\n\u0012\u0004\u0012\u00020\u0018\u0018\u00010%H\u0014J\u0012\u0010\u00c5\u0001\u001a\u00020\u00022\u0007\u0010\u00c4\u0001\u001a\u00020\u0006H\u0016J\u0012\u0010\u00c7\u0001\u001a\u00020\u00022\u0007\u0010\u00c6\u0001\u001a\u00020\u0006H\u0016J\u0012\u0010\u00c9\u0001\u001a\u00020\u00022\u0007\u0010\u00c8\u0001\u001a\u00020\u0006H\u0016J\t\u0010\u00ca\u0001\u001a\u00020\u0002H\u0016J\t\u0010\u00cb\u0001\u001a\u00020\u0002H\u0016J\u0018\u0010\u00cf\u0001\u001a\u0005\u0018\u00010\u00ce\u00012\n\u0010\u00cd\u0001\u001a\u0005\u0018\u00010\u00cc\u0001H\u0016J\u000c\u0010\u00d0\u0001\u001a\u0005\u0018\u00010\u00ce\u0001H\u0016R\u0019\u0010\u0085\u0001\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00d1\u0001\u0010\u00d2\u0001R\u001b\u0010\u00d5\u0001\u001a\u0004\u0018\u00010\u00188\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00d3\u0001\u0010\u00d4\u0001R\u001b\u0010\u00d8\u0001\u001a\u0004\u0018\u00010\u000e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00d6\u0001\u0010\u00d7\u0001R\u001b\u0010\u00db\u0001\u001a\u0004\u0018\u00010\u00118\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00d9\u0001\u0010\u00da\u0001R\u0019\u0010\u0014\u001a\u0004\u0018\u00010\u00138\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u0003\u0010\u00dc\u0001R\u001c\u0010\u00e0\u0001\u001a\u0005\u0018\u00010\u00dd\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00de\u0001\u0010\u00df\u0001R\u001c\u0010\u00e4\u0001\u001a\u0005\u0018\u00010\u00e1\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00e2\u0001\u0010\u00e3\u0001R\u001b\u0010\u00e7\u0001\u001a\u0005\u0018\u00010\u00e5\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u0007\u0010\u00e6\u0001R\u001b\u0010\u00ea\u0001\u001a\u0004\u0018\u00010\u000b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00e8\u0001\u0010\u00e9\u0001R\u001a\u0010:\u001a\u0004\u0018\u0001098\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00eb\u0001\u0010\u00ec\u0001R\u0019\u0010\u0086\u0001\u001a\u00020.8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00ed\u0001\u0010\u00ee\u0001R\u0019\u0010\u00c6\u0001\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00ef\u0001\u0010\u00d2\u0001R\u0019\u0010\u00c8\u0001\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00f0\u0001\u0010\u00d2\u0001R\u001b\u0010\u00f3\u0001\u001a\u0004\u0018\u0001078\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00f1\u0001\u0010\u00f2\u0001R\u001c\u0010\u00f6\u0001\u001a\u0005\u0018\u00010\u00ce\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00f4\u0001\u0010\u00f5\u0001R,\u0010\u00fe\u0001\u001a\u0005\u0018\u00010\u00f7\u00018\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0018\n\u0006\u0008\u00f8\u0001\u0010\u00f9\u0001\u001a\u0006\u0008\u00fa\u0001\u0010\u00fb\u0001\"\u0006\u0008\u00fc\u0001\u0010\u00fd\u0001R*\u0010\u0086\u0002\u001a\u00030\u00ff\u00018\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0018\n\u0006\u0008\u0080\u0002\u0010\u0081\u0002\u001a\u0006\u0008\u0082\u0002\u0010\u0083\u0002\"\u0006\u0008\u0084\u0002\u0010\u0085\u0002R,\u0010\u008e\u0002\u001a\u0005\u0018\u00010\u0087\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0018\n\u0006\u0008\u0088\u0002\u0010\u0089\u0002\u001a\u0006\u0008\u008a\u0002\u0010\u008b\u0002\"\u0006\u0008\u008c\u0002\u0010\u008d\u0002\u00a8\u0006\u009d\u0002"
    }
    d2 = {
        "Lcom/onyx/android/sdk/textbox/widget/RichEditor;",
        "Landroid/webkit/WebView;",
        "",
        "i",
        "Landroid/view/MotionEvent;",
        "event",
        "",
        "l",
        "init",
        "Lcom/onyx/android/sdk/textbox/widget/RichEditor$EditorWebViewClient;",
        "createWebviewClient",
        "Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;",
        "holder",
        "setEventBusHolder",
        "Lcom/onyx/android/sdk/textbox/widget/RichEditor$OnTextChangeListener;",
        "listener",
        "setOnTextChangeListener",
        "Lcom/onyx/android/sdk/textbox/widget/RichEditor$AfterInitialLoadListener;",
        "setOnInitialLoadListener",
        "Lcom/onyx/android/sdk/textbox/widget/RichEditor$OnEditorInitListener;",
        "editorInitListener",
        "setEditorInitListener",
        "Lcom/onyx/android/sdk/textbox/widget/TextBoxView;",
        "getEditorContainer",
        "",
        "text",
        "callback",
        "state",
        "stateCheck",
        "",
        "postEvent",
        "name",
        "path",
        "reloadFont",
        "",
        "sx",
        "sy",
        "Landroid/webkit/ValueCallback;",
        "setScale",
        "degree",
        "setRotate",
        "getEditorContentWidth",
        "getEditorContentHeight",
        "getEditorMinWidth",
        "getEditorMinHeight",
        "changed",
        "",
        "left",
        "top",
        "right",
        "bottom",
        "onLayout",
        "onTouchEvent",
        "Landroid/view/ActionMode$Callback;",
        "type",
        "Landroid/view/ActionMode;",
        "startActionMode",
        "Lcom/onyx/android/sdk/textbox/data/EditorLayoutInfo;",
        "sizeInfo",
        "onEditorSizeChanged",
        "processLayoutChange",
        "Lio/reactivex/rxjava3/core/Observable;",
        "Lcom/onyx/android/sdk/textbox/richtext/RichTextRun;",
        "getTextRun",
        "requestEditorLayout",
        "Landroidx/core/util/Consumer;",
        "consumer",
        "adjustEditorLayout",
        "textBoxView",
        "contentWidth",
        "adjustEditorWidth",
        "contentHeight",
        "adjustEditorHeight",
        "editorSize",
        "viewSize",
        "sizeChanged",
        "v1",
        "v2",
        "sizeDiff",
        "clearHtml",
        "Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;",
        "args",
        "enable",
        "setSizeChangeCallbackEnable",
        "contents",
        "setHtml",
        "content",
        "resetHtml",
        "getHtml",
        "convert2Simplified",
        "convert2Traditional",
        "color",
        "setEditorFontColor",
        "px",
        "setEditorFontSize",
        "padding",
        "setPadding",
        "setEditorPadding",
        "start",
        "end",
        "setPaddingRelative",
        "setEditorBackgroundColor",
        "setBackgroundColor",
        "resId",
        "setBackgroundResource",
        "Landroid/graphics/drawable/Drawable;",
        "background",
        "setBackground",
        "drawable",
        "Landroid/graphics/Bitmap;",
        "toBitmap",
        "url",
        "wrapWidth",
        "wrapHeight",
        "resetEditorSize",
        "setEditorWidth",
        "wrapContent",
        "resetEditorWidth",
        "setEditorHeight",
        "resetEditorHeight",
        "width",
        "height",
        "setContainerSize",
        "setContainerWidth",
        "setContainerHeight",
        "placeholder",
        "setPlaceholder",
        "inputEnabled",
        "setInputEnabled",
        "setEditAll",
        "cssFile",
        "loadCSS",
        "isVertical",
        "isReady",
        "orientation",
        "setEditorOrientation",
        "fontFamily",
        "fontPath",
        "setEditorFontFamily",
        "family",
        "source",
        "editAll",
        "setCustomFontFamilyWithUrl",
        "setEditorLetterSpacing",
        "multi",
        "setEditorLineHeight",
        "setLineHeight",
        "undo",
        "redo",
        "setBold",
        "setItalic",
        "setSubscript",
        "setSuperscript",
        "setStrikeThrough",
        "setUnderline",
        "setCaretColor",
        "setTextColor",
        "setTextBackgroundColor",
        "fontSize",
        "setFontSize",
        "removeFormat",
        "heading",
        "setHeading",
        "setParagraph",
        "setIndent",
        "setOutdent",
        "align",
        "setTextAlign",
        "setAlignLeft",
        "setAlignCenter",
        "setAlignRight",
        "setAlignJustify",
        "setBlockquote",
        "setBullets",
        "setNumbers",
        "insertText",
        "html",
        "insertFormatText",
        "alt",
        "insertImage",
        "insertVideo",
        "insertAudio",
        "insertYoutubeVideo",
        "href",
        "title",
        "insertLink",
        "insertTodo",
        "wordsCount",
        "focusEditor",
        "clearFocusEditor",
        "clearEditState",
        "convertHexColorString",
        "clear",
        "trigger",
        "exec",
        "load",
        "hasFocus",
        "dispatchWindowFocusChanged",
        "subMenuShow",
        "setSubMenuShow",
        "movable",
        "setMovable",
        "destroyActionMode",
        "releaseActionMode",
        "Landroid/view/inputmethod/EditorInfo;",
        "outAttrs",
        "Landroid/view/inputmethod/InputConnection;",
        "onCreateInputConnection",
        "getInputConnection",
        "e",
        "Z",
        "f",
        "Ljava/lang/String;",
        "mContents",
        "g",
        "Lcom/onyx/android/sdk/textbox/widget/RichEditor$OnTextChangeListener;",
        "mTextChangeListener",
        "h",
        "Lcom/onyx/android/sdk/textbox/widget/RichEditor$AfterInitialLoadListener;",
        "mLoadListener",
        "Lcom/onyx/android/sdk/textbox/widget/RichEditor$OnEditorInitListener;",
        "Landroidx/core/view/GestureDetectorCompat;",
        "j",
        "Landroidx/core/view/GestureDetectorCompat;",
        "gestureDetector",
        "Lcom/onyx/android/sdk/textbox/listener/RichEditorGestureListener;",
        "k",
        "Lcom/onyx/android/sdk/textbox/listener/RichEditorGestureListener;",
        "gestureListener",
        "Lcom/onyx/android/sdk/textbox/listener/FinishEventObserver;",
        "Lcom/onyx/android/sdk/textbox/listener/FinishEventObserver;",
        "finishObserver",
        "m",
        "Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;",
        "eventBusHolder",
        "n",
        "Lcom/onyx/android/sdk/textbox/data/EditorLayoutInfo;",
        "o",
        "I",
        "p",
        "q",
        "r",
        "Landroid/view/ActionMode;",
        "actionMode",
        "s",
        "Landroid/view/inputmethod/InputConnection;",
        "inputConnection",
        "Lcom/onyx/android/sdk/textbox/mode/TextBoxMode;",
        "t",
        "Lcom/onyx/android/sdk/textbox/mode/TextBoxMode;",
        "getMode",
        "()Lcom/onyx/android/sdk/textbox/mode/TextBoxMode;",
        "setMode",
        "(Lcom/onyx/android/sdk/textbox/mode/TextBoxMode;)V",
        "mode",
        "Landroid/graphics/RectF;",
        "u",
        "Landroid/graphics/RectF;",
        "getLimitRect",
        "()Landroid/graphics/RectF;",
        "setLimitRect",
        "(Landroid/graphics/RectF;)V",
        "limitRect",
        "Lcom/onyx/android/sdk/textbox/data/EditorCursor;",
        "v",
        "Lcom/onyx/android/sdk/textbox/data/EditorCursor;",
        "getCursor",
        "()Lcom/onyx/android/sdk/textbox/data/EditorCursor;",
        "setCursor",
        "(Lcom/onyx/android/sdk/textbox/data/EditorCursor;)V",
        "cursor",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;)V",
        "Landroid/util/AttributeSet;",
        "attrs",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "defStyleAttr",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "Companion",
        "AfterInitialLoadListener",
        "EditorWebViewClient",
        "OnEditorInitListener",
        "OnTextChangeListener",
        "sdk-textbox_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/textbox/widget/RichEditor$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final J:I

.field public static final w:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final x:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final y:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final z:I


# instance fields
.field public e:Z

.field public f:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public g:Lcom/onyx/android/sdk/textbox/widget/RichEditor$OnTextChangeListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public h:Lcom/onyx/android/sdk/textbox/widget/RichEditor$AfterInitialLoadListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public i:Lcom/onyx/android/sdk/textbox/widget/RichEditor$OnEditorInitListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public j:Landroidx/core/view/GestureDetectorCompat;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public k:Lcom/onyx/android/sdk/textbox/listener/RichEditorGestureListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public l:Lcom/onyx/android/sdk/textbox/listener/FinishEventObserver;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public m:Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public n:Lcom/onyx/android/sdk/textbox/data/EditorLayoutInfo;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public o:I

.field public p:Z

.field public q:Z

.field public r:Landroid/view/ActionMode;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public s:Landroid/view/inputmethod/InputConnection;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public t:Lcom/onyx/android/sdk/textbox/mode/TextBoxMode;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public u:Landroid/graphics/RectF;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public v:Lcom/onyx/android/sdk/textbox/data/EditorCursor;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/textbox/widget/RichEditor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/textbox/widget/RichEditor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->Companion:Lcom/onyx/android/sdk/textbox/widget/RichEditor$Companion;

    const-string v0, "file:///android_asset/richEditor.html"

    sput-object v0, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->w:Ljava/lang/String;

    const-string v0, "re-callback://"

    sput-object v0, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->x:Ljava/lang/String;

    const-string v0, "re-state://"

    sput-object v0, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->y:Ljava/lang/String;

    const/16 v0, 0x10

    sput v0, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->z:I

    const/16 v0, 0x12

    sput v0, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->J:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string p3, "context"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x1010085

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->q:Z

    .line 5
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->u:Landroid/graphics/RectF;

    .line 6
    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->init()V

    return-void
.end method

.method public static synthetic a(Lio/reactivex/rxjava3/subjects/PublishSubject;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->n(Lio/reactivex/rxjava3/subjects/PublishSubject;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$getCALLBACK_SCHEME$cp()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->x:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getEditorInitListener$p(Lcom/onyx/android/sdk/textbox/widget/RichEditor;)Lcom/onyx/android/sdk/textbox/widget/RichEditor$OnEditorInitListener;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->i:Lcom/onyx/android/sdk/textbox/widget/RichEditor$OnEditorInitListener;

    return-object p0
.end method

.method public static final synthetic access$getMLoadListener$p(Lcom/onyx/android/sdk/textbox/widget/RichEditor;)Lcom/onyx/android/sdk/textbox/widget/RichEditor$AfterInitialLoadListener;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->h:Lcom/onyx/android/sdk/textbox/widget/RichEditor$AfterInitialLoadListener;

    return-object p0
.end method

.method public static final synthetic access$getOrientation$p(Lcom/onyx/android/sdk/textbox/widget/RichEditor;)I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->o:I

    return p0
.end method

.method public static final synthetic access$getSETUP_HTML$cp()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->w:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getSTATE_SCHEME$cp()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->y:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$isReady$p(Lcom/onyx/android/sdk/textbox/widget/RichEditor;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->e:Z

    return p0
.end method

.method public static final synthetic access$setReady$p(Lcom/onyx/android/sdk/textbox/widget/RichEditor;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->e:Z

    return-void
.end method

.method public static synthetic b(Lcom/onyx/android/sdk/textbox/widget/RichEditor;Landroidx/core/util/Consumer;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->q(Lcom/onyx/android/sdk/textbox/widget/RichEditor;Landroidx/core/util/Consumer;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic c(Lcom/onyx/android/sdk/textbox/widget/RichEditor;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->k(Lcom/onyx/android/sdk/textbox/widget/RichEditor;)V

    return-void
.end method

.method public static synthetic d(Lio/reactivex/rxjava3/subjects/PublishSubject;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->j(Lio/reactivex/rxjava3/subjects/PublishSubject;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic e(Lcom/onyx/android/sdk/textbox/widget/RichEditor;Lcom/onyx/android/sdk/textbox/data/EditorLayoutInfo;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->p(Lcom/onyx/android/sdk/textbox/widget/RichEditor;Lcom/onyx/android/sdk/textbox/data/EditorLayoutInfo;)V

    return-void
.end method

.method public static synthetic f(Landroidx/core/util/Consumer;Lcom/onyx/android/sdk/textbox/data/EditorLayoutInfo;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->r(Landroidx/core/util/Consumer;Lcom/onyx/android/sdk/textbox/data/EditorLayoutInfo;)V

    return-void
.end method

.method public static synthetic g(Lcom/onyx/android/sdk/textbox/widget/RichEditor;Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->o(Lcom/onyx/android/sdk/textbox/widget/RichEditor;Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method

.method public static synthetic h(Lcom/onyx/android/sdk/textbox/widget/RichEditor;Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->m(Lcom/onyx/android/sdk/textbox/widget/RichEditor;Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method

.method public static final j(Lio/reactivex/rxjava3/subjects/PublishSubject;Ljava/lang/String;)V
    .locals 1

    const-string v0, "$subject"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->done(Lio/reactivex/rxjava3/core/Observer;Ljava/lang/Object;)V

    return-void
.end method

.method public static final k(Lcom/onyx/android/sdk/textbox/widget/RichEditor;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->k:Lcom/onyx/android/sdk/textbox/listener/RichEditorGestureListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/textbox/listener/RichEditorGestureListener;->destroyActionMode()V

    :cond_0
    iget-object v0, p0, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->r:Landroid/view/ActionMode;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->r:Landroid/view/ActionMode;

    return-void
.end method

.method public static final m(Lcom/onyx/android/sdk/textbox/widget/RichEditor;Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$trigger"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->exec(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method

.method public static final n(Lio/reactivex/rxjava3/subjects/PublishSubject;Ljava/lang/String;)V
    .locals 2

    const-string v0, "$subject"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/data/utils/JSONUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/JSONUtils;

    const-class v1, Lcom/onyx/android/sdk/textbox/richtext/RichTextRun;

    invoke-virtual {v0, p1, v1}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Lcom/onyx/android/sdk/textbox/richtext/RichTextRun;

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->done(Lio/reactivex/rxjava3/core/Observer;Ljava/lang/Object;)V

    return-void
.end method

.method public static final o(Lcom/onyx/android/sdk/textbox/widget/RichEditor;Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .locals 5

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$trigger"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exec js function: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v4}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1, p2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exec js function after webView destroy: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {v0, p0, p1, v1}, Lcom/onyx/android/sdk/base/utils/Debug;->w(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p2, :cond_1

    const-string p0, ""

    invoke-interface {p2, p0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static final p(Lcom/onyx/android/sdk/textbox/widget/RichEditor;Lcom/onyx/android/sdk/textbox/data/EditorLayoutInfo;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$sizeInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->processLayoutChange(Lcom/onyx/android/sdk/textbox/data/EditorLayoutInfo;)V

    return-void
.end method

.method public static final q(Lcom/onyx/android/sdk/textbox/widget/RichEditor;Landroidx/core/util/Consumer;Ljava/lang/String;)V
    .locals 5

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "request size info: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", visible: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", orientation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->o:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v4}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    new-array v0, v3, [Lcom/alibaba/fastjson2/JSONWriter$Feature;

    invoke-static {p2, v0}, Lcom/alibaba/fastjson2/JSONObject;->toJSONString(Ljava/lang/Object;[Lcom/alibaba/fastjson2/JSONWriter$Feature;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/alibaba/fastjson2/JSON;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    sget-object v0, Lcom/onyx/android/sdk/data/utils/JSONUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/JSONUtils;

    const-class v1, Lcom/onyx/android/sdk/textbox/data/EditorLayoutInfo;

    invoke-virtual {v0, p2, v1}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/onyx/android/sdk/textbox/data/EditorLayoutInfo;

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->adjustEditorLayout(Lcom/onyx/android/sdk/textbox/data/EditorLayoutInfo;)Z

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    new-instance v0, Lcom/sunia/HTREnginev2/qrl;

    invoke-direct {v0, p1, p2}, Lcom/sunia/HTREnginev2/qrl;-><init>(Landroidx/core/util/Consumer;Lcom/onyx/android/sdk/textbox/data/EditorLayoutInfo;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public static final r(Landroidx/core/util/Consumer;Lcom/onyx/android/sdk/textbox/data/EditorLayoutInfo;)V
    .locals 0

    invoke-interface {p0, p1}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final adjustEditorHeight(Lcom/onyx/android/sdk/textbox/widget/TextBoxView;Lcom/onyx/android/sdk/textbox/data/EditorLayoutInfo;I)Z
    .locals 4
    .param p1    # Lcom/onyx/android/sdk/textbox/widget/TextBoxView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/textbox/data/EditorLayoutInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "textBoxView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sizeInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x2

    if-eq v0, v3, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p0, p3, v0}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->sizeChanged(II)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p3}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->updateHeight(I)V

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    move p3, v1

    goto :goto_0

    :cond_0
    move p3, v2

    :goto_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->isTextBoxMoved()Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "getContext(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/onyx/android/sdk/textbox/data/EditorLayoutInfo;->getContentWidth(Landroid/content/Context;)I

    move-result v0

    iget-object v2, p0, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->u:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    float-to-int v2, v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p0, v0, v2}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->sizeDiff(II)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p2}, Lcom/onyx/android/sdk/textbox/data/EditorLayoutInfo;->getScale()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getMinimumHeight()I

    move-result p2

    if-nez p2, :cond_3

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iget p2, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eq p2, v3, :cond_3

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->updateWidth(I)V

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    goto :goto_1

    :cond_3
    move v1, p3

    :goto_1
    return v1
.end method

.method public adjustEditorLayout(Lcom/onyx/android/sdk/textbox/data/EditorLayoutInfo;)Z
    .locals 5
    .param p1    # Lcom/onyx/android/sdk/textbox/data/EditorLayoutInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->t:Lcom/onyx/android/sdk/textbox/mode/TextBoxMode;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    if-nez p1, :cond_0

    goto :goto_2

    :cond_0
    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "adjustEditorLayout: w="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/textbox/data/EditorLayoutInfo;->getWidth()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ", h="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/textbox/data/EditorLayoutInfo;->getHeight()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3, v4}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->n:Lcom/onyx/android/sdk/textbox/data/EditorLayoutInfo;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->getEditorContainer()Lcom/onyx/android/sdk/textbox/widget/TextBoxView;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->isIdleState()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->isVertical()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->t:Lcom/onyx/android/sdk/textbox/mode/TextBoxMode;

    if-eqz p0, :cond_3

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/textbox/mode/TextBoxMode;->resizeEditorWidth(Lcom/onyx/android/sdk/textbox/data/EditorLayoutInfo;)Z

    move-result v1

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->t:Lcom/onyx/android/sdk/textbox/mode/TextBoxMode;

    if-eqz p0, :cond_3

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/textbox/mode/TextBoxMode;->resizeEditorHeight(Lcom/onyx/android/sdk/textbox/data/EditorLayoutInfo;)Z

    move-result v1

    :cond_3
    :goto_0
    return v1

    :cond_4
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-string p1, "adjustEditorLayout after editor state changed!"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, p1, v2}, Lcom/onyx/android/sdk/base/utils/Debug;->w(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    :goto_2
    return v1
.end method

.method public final adjustEditorWidth(Lcom/onyx/android/sdk/textbox/widget/TextBoxView;Lcom/onyx/android/sdk/textbox/data/EditorLayoutInfo;I)Z
    .locals 4
    .param p1    # Lcom/onyx/android/sdk/textbox/widget/TextBoxView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/textbox/data/EditorLayoutInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "textBoxView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sizeInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x2

    if-eq v0, v3, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0, p3, v0}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->sizeChanged(II)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p3}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->updateWidth(I)V

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    move p3, v1

    goto :goto_0

    :cond_0
    move p3, v2

    :goto_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->isTextBoxMoved()Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "getContext(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/onyx/android/sdk/textbox/data/EditorLayoutInfo;->getContentHeight(Landroid/content/Context;)I

    move-result v0

    iget-object v2, p0, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->u:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    float-to-int v2, v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {p0, v0, v2}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->sizeDiff(II)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p2}, Lcom/onyx/android/sdk/textbox/data/EditorLayoutInfo;->getScale()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getMinimumWidth()I

    move-result p2

    if-nez p2, :cond_3

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iget p2, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq p2, v3, :cond_3

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->updateHeight(I)V

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    goto :goto_1

    :cond_3
    move v1, p3

    :goto_1
    return v1
.end method

.method public callback(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->getEditorContainer()Lcom/onyx/android/sdk/textbox/widget/TextBoxView;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->isOperable()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->f:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->destroyActionMode()V

    :cond_3
    new-instance v0, Lkotlin/text/Regex;

    sget-object v1, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->x:Ljava/lang/String;

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    const-string v1, ""

    invoke-virtual {v0, p1, v1}, Lkotlin/text/Regex;->replaceFirst(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->f:Ljava/lang/String;

    iget-object p1, p0, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->g:Lcom/onyx/android/sdk/textbox/widget/RichEditor$OnTextChangeListener;

    if-eqz p1, :cond_4

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->f:Ljava/lang/String;

    invoke-interface {p1, p0}, Lcom/onyx/android/sdk/textbox/widget/RichEditor$OnTextChangeListener;->onTextChange(Ljava/lang/String;)V

    :cond_4
    :goto_2
    return-void
.end method

.method public clear()V
    .locals 1

    invoke-virtual {p0}, Landroid/webkit/WebView;->clearFormData()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->clearCache(Z)V

    invoke-virtual {p0}, Landroid/webkit/WebView;->clearView()V

    invoke-virtual {p0}, Landroid/webkit/WebView;->clearHistory()V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->clearDisappearingChildren()V

    invoke-virtual {p0}, Landroid/view/View;->destroyDrawingCache()V

    invoke-virtual {p0}, Landroid/webkit/WebView;->freeMemory()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->s:Landroid/view/inputmethod/InputConnection;

    return-void
.end method

.method public clearEditState()Lio/reactivex/rxjava3/core/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {}, Lio/reactivex/rxjava3/subjects/PublishSubject;->create()Lio/reactivex/rxjava3/subjects/PublishSubject;

    move-result-object v0

    const-string v1, "create(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/sunia/HTREnginev2/srl;

    invoke-direct {v1, v0}, Lcom/sunia/HTREnginev2/srl;-><init>(Lio/reactivex/rxjava3/subjects/PublishSubject;)V

    const-string v2, "javascript:RE.clearSelectionStatus();javascript:RE.setInputEnabled(false);javascript:RE.blurFocus();"

    invoke-virtual {p0, v2, v1}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->exec(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->destroyActionMode()V

    return-object v0
.end method

.method public clearFocusEditor()V
    .locals 1

    const-string v0, "javascript:RE.blurFocus();"

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->exec(Ljava/lang/String;)V

    return-void
.end method

.method public clearHtml()V
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/StringKt;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->setHtml(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public convert2Simplified()V
    .locals 1

    const-string v0, "RE.changeSlim();"

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->exec(Ljava/lang/String;)V

    return-void
.end method

.method public convert2Traditional()V
    .locals 1

    const-string v0, "RE.changeTrad();"

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->exec(Ljava/lang/String;)V

    return-void
.end method

.method public convertHexColorString(I)Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    const p0, 0xffffff

    and-int/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const/4 p1, 0x1

    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    const-string p1, "#%06X"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "format(format, *args)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public createWebviewClient()Lcom/onyx/android/sdk/textbox/widget/RichEditor$EditorWebViewClient;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/textbox/widget/RichEditor$EditorWebViewClient;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/textbox/widget/RichEditor$EditorWebViewClient;-><init>(Lcom/onyx/android/sdk/textbox/widget/RichEditor;)V

    return-object v0
.end method

.method public destroyActionMode()V
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/nrl;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/nrl;-><init>(Lcom/onyx/android/sdk/textbox/widget/RichEditor;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public dispatchWindowFocusChanged(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->p:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    invoke-super {p0, p1}, Landroid/view/View;->dispatchWindowFocusChanged(Z)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->dispatchWindowFocusChanged(Z)V

    :goto_0
    return-void
.end method

.method public exec(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "trigger"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->exec(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method

.method public exec(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/webkit/ValueCallback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/webkit/ValueCallback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "trigger"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-boolean v0, p0, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->e:Z

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->load(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Lcom/sunia/HTREnginev2/lrl;

    invoke-direct {v0, p0, p1, p2}, Lcom/sunia/HTREnginev2/lrl;-><init>(Lcom/onyx/android/sdk/textbox/widget/RichEditor;Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    const-wide/16 p1, 0x64

    invoke-virtual {p0, v0, p1, p2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method

.method public focusEditor(Landroid/webkit/ValueCallback;)V
    .locals 1
    .param p1    # Landroid/webkit/ValueCallback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    const-string v0, "javascript:RE.focus();"

    invoke-virtual {p0, v0, p1}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->exec(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method

.method public final getCursor()Lcom/onyx/android/sdk/textbox/data/EditorCursor;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->v:Lcom/onyx/android/sdk/textbox/data/EditorCursor;

    return-object p0
.end method

.method public getEditorContainer()Lcom/onyx/android/sdk/textbox/widget/TextBoxView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    invoke-interface {p0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    invoke-interface {p0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type com.onyx.android.sdk.textbox.widget.TextBoxView"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getEditorContentHeight()F
    .locals 3

    iget-object v0, p0, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->n:Lcom/onyx/android/sdk/textbox/data/EditorLayoutInfo;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/onyx/android/sdk/note/common/utils/TextRenderUtil;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/TextRenderUtil;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "getContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->n:Lcom/onyx/android/sdk/textbox/data/EditorLayoutInfo;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/data/EditorLayoutInfo;->getHeight()F

    move-result p0

    invoke-virtual {v0, v1, p0}, Lcom/onyx/android/sdk/note/common/utils/TextRenderUtil;->revertRenderSize(Landroid/content/Context;F)F

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    int-to-float p0, p0

    :goto_0
    return p0
.end method

.method public getEditorContentWidth()F
    .locals 3

    iget-object v0, p0, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->n:Lcom/onyx/android/sdk/textbox/data/EditorLayoutInfo;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/onyx/android/sdk/note/common/utils/TextRenderUtil;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/TextRenderUtil;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "getContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->n:Lcom/onyx/android/sdk/textbox/data/EditorLayoutInfo;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/data/EditorLayoutInfo;->getWidth()F

    move-result p0

    invoke-virtual {v0, v1, p0}, Lcom/onyx/android/sdk/note/common/utils/TextRenderUtil;->revertRenderSize(Landroid/content/Context;F)F

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    int-to-float p0, p0

    :goto_0
    return p0
.end method

.method public getEditorMinHeight()F
    .locals 3

    iget-object v0, p0, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->n:Lcom/onyx/android/sdk/textbox/data/EditorLayoutInfo;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/onyx/android/sdk/note/common/utils/TextRenderUtil;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/TextRenderUtil;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "getContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->n:Lcom/onyx/android/sdk/textbox/data/EditorLayoutInfo;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/data/EditorLayoutInfo;->getMiniHeight()F

    move-result p0

    invoke-virtual {v0, v1, p0}, Lcom/onyx/android/sdk/note/common/utils/TextRenderUtil;->revertRenderSize(Landroid/content/Context;F)F

    move-result p0

    goto :goto_0

    :cond_0
    sget p0, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->J:I

    int-to-float p0, p0

    :goto_0
    return p0
.end method

.method public getEditorMinWidth()F
    .locals 3

    iget-object v0, p0, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->n:Lcom/onyx/android/sdk/textbox/data/EditorLayoutInfo;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/onyx/android/sdk/note/common/utils/TextRenderUtil;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/TextRenderUtil;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "getContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->n:Lcom/onyx/android/sdk/textbox/data/EditorLayoutInfo;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/data/EditorLayoutInfo;->getMiniWidth()F

    move-result p0

    invoke-virtual {v0, v1, p0}, Lcom/onyx/android/sdk/note/common/utils/TextRenderUtil;->revertRenderSize(Landroid/content/Context;F)F

    move-result p0

    goto :goto_0

    :cond_0
    sget p0, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->z:I

    int-to-float p0, p0

    :goto_0
    return p0
.end method

.method public getHtml()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->f:Ljava/lang/String;

    return-object p0
.end method

.method public getInputConnection()Landroid/view/inputmethod/InputConnection;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->s:Landroid/view/inputmethod/InputConnection;

    return-object p0
.end method

.method public final getLimitRect()Landroid/graphics/RectF;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->u:Landroid/graphics/RectF;

    return-object p0
.end method

.method public final getMode()Lcom/onyx/android/sdk/textbox/mode/TextBoxMode;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->t:Lcom/onyx/android/sdk/textbox/mode/TextBoxMode;

    return-object p0
.end method

.method public getTextRun()Lio/reactivex/rxjava3/core/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/textbox/richtext/RichTextRun;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, Lio/reactivex/rxjava3/subjects/PublishSubject;->create()Lio/reactivex/rxjava3/subjects/PublishSubject;

    move-result-object v0

    const-string v1, "create(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/sunia/HTREnginev2/orl;

    invoke-direct {v1, v0}, Lcom/sunia/HTREnginev2/orl;-><init>(Lio/reactivex/rxjava3/subjects/PublishSubject;)V

    const-string v2, "javascript:RE.getTextRun()"

    invoke-virtual {p0, v2, v1}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->exec(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-object v0
.end method

.method public final i()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/textbox/widget/RichEditor$addJavascriptInterface$1;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/textbox/widget/RichEditor$addJavascriptInterface$1;-><init>(Lcom/onyx/android/sdk/textbox/widget/RichEditor;)V

    const-string v1, "editor"

    invoke-virtual {p0, v0, v1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public init()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    const/4 v0, 0x2

    .line 3
    invoke-virtual {p0, v0}, Landroid/view/View;->setOverScrollMode(I)V

    .line 4
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 5
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 6
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 7
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setMinimumFontSize(I)V

    .line 8
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setMinimumLogicalFontSize(I)V

    .line 9
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setTextZoom(I)V

    .line 10
    new-instance v0, Landroid/webkit/WebChromeClient;

    invoke-direct {v0}, Landroid/webkit/WebChromeClient;-><init>()V

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 11
    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->createWebviewClient()Lcom/onyx/android/sdk/textbox/widget/RichEditor$EditorWebViewClient;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 12
    new-instance v0, Lcom/onyx/android/sdk/textbox/listener/RichEditorGestureListener;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/textbox/listener/RichEditorGestureListener;-><init>(Lcom/onyx/android/sdk/textbox/widget/RichEditor;)V

    iput-object v0, p0, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->k:Lcom/onyx/android/sdk/textbox/listener/RichEditorGestureListener;

    .line 13
    new-instance v0, Landroidx/core/view/GestureDetectorCompat;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->k:Lcom/onyx/android/sdk/textbox/listener/RichEditorGestureListener;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v0, v1, v2}, Landroidx/core/view/GestureDetectorCompat;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->j:Landroidx/core/view/GestureDetectorCompat;

    .line 14
    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->i()V

    .line 15
    sget-object v0, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->w:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public init(Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;)V
    .locals 7
    .param p1    # Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    new-instance v0, Lcom/onyx/android/sdk/note/common/data/text/EditorInputData;

    invoke-direct {v0}, Lcom/onyx/android/sdk/note/common/data/text/EditorInputData;-><init>()V

    .line 17
    invoke-virtual {p1}, Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;->getOrientation()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "setBaseOrientation"

    invoke-virtual {v0, v2, v1}, Lcom/onyx/android/sdk/note/common/data/text/EditorInputData;->addAction(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    invoke-virtual {p1}, Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;->getAlignType()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "setContainerTextAlign"

    invoke-virtual {v0, v2, v1}, Lcom/onyx/android/sdk/note/common/data/text/EditorInputData;->addAction(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 19
    invoke-virtual {p1}, Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;->getFontFamily()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;->getFontPath()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "setBaseFontFamily"

    invoke-virtual {v0, v2, v1}, Lcom/onyx/android/sdk/note/common/data/text/EditorInputData;->addAction(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;->getFontSize()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "px"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v3, "setBaseFontSize"

    invoke-virtual {v0, v3, v1}, Lcom/onyx/android/sdk/note/common/data/text/EditorInputData;->addAction(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    sget-object v1, Lcom/onyx/android/sdk/note/common/utils/TextRenderUtil;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/TextRenderUtil;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;->getLineHeight()F

    move-result v3

    invoke-virtual {v1, v3}, Lcom/onyx/android/sdk/note/common/utils/TextRenderUtil;->getLineHeight(F)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "setBaseLineHeight"

    invoke-virtual {v0, v4, v3}, Lcom/onyx/android/sdk/note/common/data/text/EditorInputData;->addAction(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 22
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "getContext(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;->getRenderRect()Landroid/graphics/RectF;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    invoke-virtual {p1}, Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;->getScaleX()F

    move-result v6

    div-float/2addr v5, v6

    invoke-virtual {v1, v3, v5}, Lcom/onyx/android/sdk/note/common/utils/TextRenderUtil;->getRenderSize(Landroid/content/Context;F)F

    move-result v3

    .line 23
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;->getRenderRect()Landroid/graphics/RectF;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-virtual {p1}, Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;->getScaleY()F

    move-result v6

    div-float/2addr v4, v6

    invoke-virtual {v1, v5, v4}, Lcom/onyx/android/sdk/note/common/utils/TextRenderUtil;->getRenderSize(Landroid/content/Context;F)F

    move-result v1

    .line 24
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v3, v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "setContainerSize"

    invoke-virtual {v0, v2, v1}, Lcom/onyx/android/sdk/note/common/data/text/EditorInputData;->addAction(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 25
    invoke-virtual {p1}, Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;->getScaleX()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;->getScaleY()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "setScale"

    invoke-virtual {v0, v2, v1}, Lcom/onyx/android/sdk/note/common/data/text/EditorInputData;->addAction(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 26
    invoke-virtual {p1}, Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;->getContent()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/onyx/android/sdk/note/common/data/text/EditorInputData;->content:Ljava/lang/String;

    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RE.init("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/data/text/EditorInputData;->toJson()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x29

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->exec(Ljava/lang/String;)V

    .line 28
    invoke-virtual {p1}, Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;->getContent()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->f:Ljava/lang/String;

    const/4 p1, 0x0

    .line 29
    iput-object p1, p0, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->v:Lcom/onyx/android/sdk/textbox/data/EditorCursor;

    return-void
.end method

.method public insertAudio(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:RE.insertAudio(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\');"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->exec(Ljava/lang/String;)V

    return-void
.end method

.method public insertFormatText(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "html"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:RE.insertHTML(`"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "`);"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->exec(Ljava/lang/String;)V

    return-void
.end method

.method public insertImage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "alt"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:RE.insertImage(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\', \'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\');"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->exec(Ljava/lang/String;)V

    return-void
.end method

.method public insertImage(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "alt"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:RE.insertImageW(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\', \'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\',\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\');"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->exec(Ljava/lang/String;)V

    return-void
.end method

.method public insertImage(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "alt"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:RE.insertImageWH(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\', \'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\',\'"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\');"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->exec(Ljava/lang/String;)V

    return-void
.end method

.method public insertLink(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "href"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "title"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:RE.insertLink(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\', \'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\');"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->exec(Ljava/lang/String;)V

    return-void
.end method

.method public insertText(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:RE.insertText(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\');"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->exec(Ljava/lang/String;)V

    return-void
.end method

.method public insertTodo()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:RE.setTodo(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "\');"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->exec(Ljava/lang/String;)V

    return-void
.end method

.method public insertVideo(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:RE.insertVideo(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\');"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->exec(Ljava/lang/String;)V

    return-void
.end method

.method public insertVideo(Ljava/lang/String;I)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:RE.insertVideoW(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\', \'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\');"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->exec(Ljava/lang/String;)V

    return-void
.end method

.method public insertVideo(Ljava/lang/String;II)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:RE.insertVideoWH(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\', \'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\');"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->exec(Ljava/lang/String;)V

    return-void
.end method

.method public insertYoutubeVideo(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:RE.insertYoutubeVideo(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\');"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->exec(Ljava/lang/String;)V

    return-void
.end method

.method public insertYoutubeVideo(Ljava/lang/String;I)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:RE.insertYoutubeVideoW(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\', \'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\');"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->exec(Ljava/lang/String;)V

    return-void
.end method

.method public insertYoutubeVideo(Ljava/lang/String;II)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:RE.insertYoutubeVideoWH(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\', \'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\');"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->exec(Ljava/lang/String;)V

    return-void
.end method

.method public isReady()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->e:Z

    return p0
.end method

.method public isVertical()Z
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->o:I

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final l(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->getEditorContainer()Lcom/onyx/android/sdk/textbox/widget/TextBoxView;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->isEditing()Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_2

    iget-boolean p0, p0, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->q:Z

    if-eqz p0, :cond_1

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/MotionEventKt;->isStylusTouchType(Landroid/view/MotionEvent;)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    :cond_2
    iget-boolean p0, p0, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->q:Z

    return p0
.end method

.method public load(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/webkit/ValueCallback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/webkit/ValueCallback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "trigger"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/sunia/HTREnginev2/prl;

    invoke-direct {v0, p0, p1, p2}, Lcom/sunia/HTREnginev2/prl;-><init>(Lcom/onyx/android/sdk/textbox/widget/RichEditor;Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public loadCSS(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "cssFile"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(function() {    var head  = document.getElementsByTagName(\"head\")[0];    var link  = document.createElement(\"link\");    link.rel  = \"stylesheet\";    link.type = \"text/css\";    link.href = \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\";    link.media = \"all\";    head.appendChild(link);}) ();"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->exec(Ljava/lang/String;)V

    return-void
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 0
    .param p1    # Landroid/view/inputmethod/EditorInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-super {p0, p1}, Landroid/webkit/WebView;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->s:Landroid/view/inputmethod/InputConnection;

    return-object p1
.end method

.method public onEditorSizeChanged(Lcom/onyx/android/sdk/textbox/data/EditorLayoutInfo;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/textbox/data/EditorLayoutInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "sizeInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/sunia/HTREnginev2/mrl;

    invoke-direct {v0, p0, p1}, Lcom/sunia/HTREnginev2/mrl;-><init>(Lcom/onyx/android/sdk/textbox/widget/RichEditor;Lcom/onyx/android/sdk/textbox/data/EditorLayoutInfo;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 2

    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    if-eqz p1, :cond_0

    sget-object p1, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLayout: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    new-array p3, p3, [Ljava/lang/Object;

    invoke-virtual {p1, p0, p2, p3}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->l(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->j:Landroidx/core/view/GestureDetectorCompat;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->k:Lcom/onyx/android/sdk/textbox/listener/RichEditorGestureListener;

    if-eqz v1, :cond_4

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroidx/core/view/GestureDetectorCompat;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/onyx/android/sdk/base/utils/RxTimerUtil;->INSTANCE:Lcom/onyx/android/sdk/base/utils/RxTimerUtil;

    iget-object v1, p0, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->l:Lcom/onyx/android/sdk/textbox/listener/FinishEventObserver;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/RxTimerUtil;->cancel(Lcom/onyx/android/sdk/base/utils/RxTimerUtil$TimerObserver;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-le v0, v1, :cond_3

    new-instance v0, Lcom/onyx/android/sdk/textbox/listener/FinishEventObserver;

    iget-object v1, p0, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->k:Lcom/onyx/android/sdk/textbox/listener/RichEditorGestureListener;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/textbox/listener/FinishEventObserver;-><init>(Lcom/onyx/android/sdk/textbox/listener/RichEditorGestureListener;)V

    iput-object v0, p0, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->l:Lcom/onyx/android/sdk/textbox/listener/FinishEventObserver;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    const-string v2, "obtain(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/textbox/listener/FinishEventObserver;->setEvent(Landroid/view/MotionEvent;)Lcom/onyx/android/sdk/textbox/listener/FinishEventObserver;

    sget-object v0, Lcom/onyx/android/sdk/base/utils/RxTimerUtil;->INSTANCE:Lcom/onyx/android/sdk/base/utils/RxTimerUtil;

    iget-object v1, p0, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->l:Lcom/onyx/android/sdk/textbox/listener/FinishEventObserver;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-wide/16 v2, 0x5

    invoke-virtual {v0, v2, v3, v1}, Lcom/onyx/android/sdk/base/utils/RxTimerUtil;->timer(JLcom/onyx/android/sdk/base/utils/RxTimerUtil$TimerObserver;)I

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->k:Lcom/onyx/android/sdk/textbox/listener/RichEditorGestureListener;

    if-eqz v0, :cond_5

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/textbox/listener/RichEditorGestureListener;->onFinish(Landroid/view/MotionEvent;)Z

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->destroyActionMode()V

    :cond_5
    :goto_0
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public final postEvent(Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->m:Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;->safelyPostEvent(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public processLayoutChange(Lcom/onyx/android/sdk/textbox/data/EditorLayoutInfo;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/textbox/data/EditorLayoutInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "sizeInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->adjustEditorLayout(Lcom/onyx/android/sdk/textbox/data/EditorLayoutInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->g:Lcom/onyx/android/sdk/textbox/widget/RichEditor$OnTextChangeListener;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p0, p1}, Lcom/onyx/android/sdk/textbox/widget/RichEditor$OnTextChangeListener;->onTextSizeChange(Lcom/onyx/android/sdk/textbox/data/EditorLayoutInfo;)V

    :cond_0
    return-void
.end method

.method public redo()V
    .locals 1

    const-string v0, "javascript:RE.redo();"

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->exec(Ljava/lang/String;)V

    return-void
.end method

.method public releaseActionMode()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->r:Landroid/view/ActionMode;

    return-void
.end method

.method public final reloadFont(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "path"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/android/sdk/textbox/widget/RichEditor$reloadFont$args$1;

    invoke-direct {v0, p1, p2}, Lcom/onyx/android/sdk/textbox/widget/RichEditor$reloadFont$args$1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    sget-object p2, Lcom/onyx/android/sdk/data/utils/JSONUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/JSONUtils;

    invoke-virtual {p2, p1}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "javascript:RE.loadFonts("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x29

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->exec(Ljava/lang/String;)V

    return-void
.end method

.method public removeFormat()V
    .locals 1

    const-string v0, "javascript:RE.removeFormat();"

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->exec(Ljava/lang/String;)V

    return-void
.end method

.method public requestEditorLayout()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->requestEditorLayout(Landroidx/core/util/Consumer;)V

    return-void
.end method

.method public requestEditorLayout(Landroidx/core/util/Consumer;)V
    .locals 1
    .param p1    # Landroidx/core/util/Consumer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/util/Consumer<",
            "Lcom/onyx/android/sdk/textbox/data/EditorLayoutInfo;",
            ">;)V"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/sunia/HTREnginev2/rrl;

    invoke-direct {v0, p0, p1}, Lcom/sunia/HTREnginev2/rrl;-><init>(Lcom/onyx/android/sdk/textbox/widget/RichEditor;Landroidx/core/util/Consumer;)V

    const-string p1, "javascript:RE.getEditorSize()"

    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->exec(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method

.method public resetEditorHeight(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const-string p1, "javascript:RE.setHeight(\'auto\');"

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->exec(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "javascript:RE.setHeight(\'100%\');"

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->exec(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public resetEditorSize(ZZ)V
    .locals 2

    const-string v0, "auto"

    const-string v1, "100%"

    if-eqz p1, :cond_0

    move-object p1, v0

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:RE.setEditorSize(\'"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\', \'"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\');"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->exec(Ljava/lang/String;)V

    return-void
.end method

.method public resetEditorWidth(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const-string p1, "javascript:RE.setWidth(\'auto\');"

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->exec(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "javascript:RE.setWidth(\'100%\');"

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->exec(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public resetHtml(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "javascript:RE.backupcursor();"

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->exec(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->setHtml(Ljava/lang/String;)V

    const-string p1, "javascript:RE.restorecursor();"

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->exec(Ljava/lang/String;)V

    return-void
.end method

.method public setAlignCenter()V
    .locals 1

    const-string v0, "javascript:RE.setJustifyCenter();"

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->exec(Ljava/lang/String;)V

    return-void
.end method

.method public setAlignJustify()V
    .locals 1

    const-string v0, "javascript:RE.setJustifyFull();"

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->exec(Ljava/lang/String;)V

    return-void
.end method

.method public setAlignLeft()V
    .locals 1

    const-string v0, "javascript:RE.setJustifyLeft();"

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->exec(Ljava/lang/String;)V

    return-void
.end method

.method public setAlignRight()V
    .locals 1

    const-string v0, "javascript:RE.setJustifyRight();"

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->exec(Ljava/lang/String;)V

    return-void
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "background"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->toBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2
    invoke-static {p1, v2, v0, v1}, Lcom/onyx/android/sdk/base/extension/BitmapKt;->encodeToBase64$default(Landroid/graphics/Bitmap;IILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:RE.setBackgroundImage(\'url(data:image/png;base64,"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")\');"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->exec(Ljava/lang/String;)V

    return-void
.end method

.method public setBackground(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:RE.setBackgroundImage(\'url("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")\');"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->exec(Ljava/lang/String;)V

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v1}, Lcom/onyx/android/sdk/base/extension/BitmapKt;->encodeToBase64$default(Landroid/graphics/Bitmap;IILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:RE.setBackgroundImage(\'url(data:image/png;base64,"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")\');"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->exec(Ljava/lang/String;)V

    return-void
.end method

.method public setBlockquote()V
    .locals 1

    const-string v0, "javascript:RE.setBlockquote();"

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->exec(Ljava/lang/String;)V

    return-void
.end method

.method public setBold(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:RE.setBold("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ");"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->exec(Ljava/lang/String;)V

    return-void
.end method

.method public setBullets()V
    .locals 1

    const-string v0, "javascript:RE.setBullets();"

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->exec(Ljava/lang/String;)V

    return-void
.end method

.method public setCaretColor(I)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->convertHexColorString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:RE.setCaretColor(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\');"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->exec(Ljava/lang/String;)V

    return-void
.end method

.method public setContainerHeight(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:RE.setContainerHeight(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "px\');"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->exec(Ljava/lang/String;)V

    return-void
.end method

.method public setContainerSize(II)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:RE.setContainerSize(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "px\', \'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "px\');"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->exec(Ljava/lang/String;)V

    return-void
.end method

.method public setContainerWidth(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->setContainerWidth(ILandroid/webkit/ValueCallback;)V

    return-void
.end method

.method public setContainerWidth(ILandroid/webkit/ValueCallback;)V
    .locals 2
    .param p2    # Landroid/webkit/ValueCallback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/webkit/ValueCallback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:RE.setContainerWidth(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "px\');"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->exec(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method

.method public final setCursor(Lcom/onyx/android/sdk/textbox/data/EditorCursor;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/textbox/data/EditorCursor;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->v:Lcom/onyx/android/sdk/textbox/data/EditorCursor;

    return-void
.end method

.method public setCustomFontFamilyWithUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "family"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:RE.setCustomFontFamilyWithUrl(`"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "`, `"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "`, \'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\', \'\', "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p1, 0x29

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->exec(Ljava/lang/String;)V

    return-void
.end method

.method public final setEditAll()V
    .locals 1

    const-string v0, "javascript:RE.enabledEditingItems()"

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->exec(Ljava/lang/String;)V

    return-void
.end method

.method public setEditorBackgroundColor(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->setBackgroundColor(I)V

    return-void
.end method

.method public setEditorFontColor(I)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->convertHexColorString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:RE.setBaseTextColor(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\');"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->exec(Ljava/lang/String;)V

    return-void
.end method

.method public setEditorFontFamily(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "fontFamily"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fontPath"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const-string p1, "javascript:RE.setBaseFontFamily(\'\', \'\');"

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->exec(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:RE.setBaseFontFamily(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\', \'file://"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\');"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->exec(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public setEditorFontSize(F)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:RE.setBaseFontSize(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, "px\');"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->exec(Ljava/lang/String;)V

    return-void
.end method

.method public setEditorHeight(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:RE.setHeight(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "px\');"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->exec(Ljava/lang/String;)V

    return-void
.end method

.method public setEditorInitListener(Lcom/onyx/android/sdk/textbox/widget/RichEditor$OnEditorInitListener;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/textbox/widget/RichEditor$OnEditorInitListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->i:Lcom/onyx/android/sdk/textbox/widget/RichEditor$OnEditorInitListener;

    return-void
.end method

.method public setEditorLetterSpacing(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:RE.setBaseLetterSpacing(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "px\');"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->exec(Ljava/lang/String;)V

    return-void
.end method

.method public setEditorLineHeight(F)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:RE.setBaseLineHeight(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, "\');"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->exec(Ljava/lang/String;)V

    return-void
.end method

.method public setEditorOrientation(I)V
    .locals 2

    iput p1, p0, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->o:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:RE.setBaseOrientation(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\');"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->exec(Ljava/lang/String;)V

    return-void
.end method

.method public setEditorPadding(FFFF)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:RE.setPadding(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, "px\', \'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, "px\');"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->exec(Ljava/lang/String;)V

    return-void
.end method

.method public setEditorWidth(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:RE.setWidth(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "px\');"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->exec(Ljava/lang/String;)V

    return-void
.end method

.method public setEventBusHolder(Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->m:Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;

    return-void
.end method

.method public setFontSize(FZ)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:RE.setFontSize(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, "px\', "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ");"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->exec(Ljava/lang/String;)V

    return-void
.end method

.method public setHeading(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:RE.setHeading(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\');"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->exec(Ljava/lang/String;)V

    return-void
.end method

.method public setHtml(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->setHtml(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method

.method public setHtml(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/webkit/ValueCallback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/webkit/ValueCallback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    const-string p1, ""

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:RE.setHtml(`"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "`);"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->exec(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 3
    iput-object p1, p0, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->f:Ljava/lang/String;

    return-void
.end method

.method public setIndent()V
    .locals 1

    const-string v0, "javascript:RE.setIndent();"

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->exec(Ljava/lang/String;)V

    return-void
.end method

.method public setInputEnabled(ZLandroid/webkit/ValueCallback;)V
    .locals 2
    .param p2    # Landroid/webkit/ValueCallback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroid/webkit/ValueCallback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:RE.setInputEnabled("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p1, 0x29

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->exec(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->destroyActionMode()V

    return-void
.end method

.method public setItalic(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:RE.setItalic("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ");"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->exec(Ljava/lang/String;)V

    return-void
.end method

.method public final setLimitRect(Landroid/graphics/RectF;)V
    .locals 1
    .param p1    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->u:Landroid/graphics/RectF;

    return-void
.end method

.method public setLineHeight(F)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:RE.setLineHeight(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, "\');"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->exec(Ljava/lang/String;)V

    return-void
.end method

.method public final setMode(Lcom/onyx/android/sdk/textbox/mode/TextBoxMode;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/textbox/mode/TextBoxMode;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->t:Lcom/onyx/android/sdk/textbox/mode/TextBoxMode;

    return-void
.end method

.method public setMovable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->q:Z

    return-void
.end method

.method public setNumbers()V
    .locals 1

    const-string v0, "javascript:RE.setNumbers();"

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->exec(Ljava/lang/String;)V

    return-void
.end method

.method public setOnInitialLoadListener(Lcom/onyx/android/sdk/textbox/widget/RichEditor$AfterInitialLoadListener;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/textbox/widget/RichEditor$AfterInitialLoadListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->h:Lcom/onyx/android/sdk/textbox/widget/RichEditor$AfterInitialLoadListener;

    return-void
.end method

.method public setOnTextChangeListener(Lcom/onyx/android/sdk/textbox/widget/RichEditor$OnTextChangeListener;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/textbox/widget/RichEditor$OnTextChangeListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->g:Lcom/onyx/android/sdk/textbox/widget/RichEditor$OnTextChangeListener;

    return-void
.end method

.method public setOutdent()V
    .locals 1

    const-string v0, "javascript:RE.setOutdent();"

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->exec(Ljava/lang/String;)V

    return-void
.end method

.method public setPadding(I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p1, p1, p1}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->setPadding(IIII)V

    return-void
.end method

.method public setPadding(IIII)V
    .locals 2

    .line 2
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->setPadding(IIII)V

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:RE.setPadding(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "px\', \'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "px\');"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->exec(Ljava/lang/String;)V

    return-void
.end method

.method public setPaddingRelative(IIII)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->setPadding(IIII)V

    return-void
.end method

.method public setParagraph()V
    .locals 1

    const-string v0, "javascript:RE.setParagraph();"

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->exec(Ljava/lang/String;)V

    return-void
.end method

.method public setPlaceholder(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "placeholder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:RE.setPlaceholder(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\');"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->exec(Ljava/lang/String;)V

    return-void
.end method

.method public setRotate(F)V
    .locals 2

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const-string p1, "javascript:RE.setBaseTransform(\"none\")"

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->exec(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:RE.setBaseTransform(\"rotate("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, "deg)\", \"center\")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->exec(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public setScale(FFLandroid/webkit/ValueCallback;)V
    .locals 4
    .param p3    # Landroid/webkit/ValueCallback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF",
            "Landroid/webkit/ValueCallback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sx="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", sy="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:RE.setScale("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 p1, 0x29

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->exec(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method

.method public setSizeChangeCallbackEnable(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RE.enableResizeCallback("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p1, 0x29

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->exec(Ljava/lang/String;)V

    return-void
.end method

.method public setStrikeThrough()V
    .locals 1

    const-string v0, "javascript:RE.setStrikeThrough();"

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->exec(Ljava/lang/String;)V

    return-void
.end method

.method public setSubMenuShow(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->p:Z

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->dispatchWindowFocusChanged(Z)V

    return-void
.end method

.method public setSubscript()V
    .locals 1

    const-string v0, "javascript:RE.setSubscript();"

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->exec(Ljava/lang/String;)V

    return-void
.end method

.method public setSuperscript()V
    .locals 1

    const-string v0, "javascript:RE.setSuperscript();"

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->exec(Ljava/lang/String;)V

    return-void
.end method

.method public setTextAlign(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "align"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:RE.setContainerTextAlign(`"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "`);"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->exec(Ljava/lang/String;)V

    return-void
.end method

.method public setTextBackgroundColor(I)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->convertHexColorString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:RE.setTextBackgroundColor(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\');"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->exec(Ljava/lang/String;)V

    return-void
.end method

.method public setTextColor(IZ)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->convertHexColorString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:RE.setTextColor(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\', "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ");"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->exec(Ljava/lang/String;)V

    return-void
.end method

.method public setUnderline(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:RE.setUnderline("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ");"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->exec(Ljava/lang/String;)V

    return-void
.end method

.method public sizeChanged(II)Z
    .locals 0

    sub-int/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p0

    const/4 p1, 0x1

    if-le p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public sizeDiff(II)Z
    .locals 0

    sub-int/2addr p1, p2

    const/4 p0, 0x1

    if-le p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 1
    .param p1    # Landroid/view/ActionMode$Callback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/textbox/listener/ActionModeCallbackWrapper;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v0, p0, p1}, Lcom/onyx/android/sdk/textbox/listener/ActionModeCallbackWrapper;-><init>(Lcom/onyx/android/sdk/textbox/widget/RichEditor;Landroid/view/ActionMode$Callback;)V

    invoke-super {p0, v0, p2}, Landroid/view/View;->startActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->r:Landroid/view/ActionMode;

    return-object p1
.end method

.method public stateCheck(Ljava/lang/String;)V
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v4}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->getEditorContainer()Lcom/onyx/android/sdk/textbox/widget/TextBoxView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->isOperable()Z

    move-result v3

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/onyx/android/sdk/data/utils/JSONUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/JSONUtils;

    const-class v1, Lcom/onyx/android/sdk/textbox/data/EditorStyleInfo;

    invoke-virtual {v0, p1, v1}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/textbox/data/EditorStyleInfo;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/textbox/data/EditorStyleInfo;->getCursor()Lcom/onyx/android/sdk/textbox/data/EditorCursor;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->v:Lcom/onyx/android/sdk/textbox/data/EditorCursor;

    sget-object v0, Lcom/onyx/android/sdk/note/common/utils/TextRenderUtil;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/TextRenderUtil;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/textbox/data/EditorStyleInfo;->getLineHeight()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/note/common/utils/TextRenderUtil;->revertLineHeight(F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/textbox/data/EditorStyleInfo;->setLineHeight(Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/android/sdk/textbox/event/SelectionChangeEvent;

    invoke-direct {v0, p1}, Lcom/onyx/android/sdk/textbox/event/SelectionChangeEvent;-><init>(Lcom/onyx/android/sdk/textbox/data/EditorStyleInfo;)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->postEvent(Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public toBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 4
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "drawable"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of p0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz p0, :cond_0

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    const-string p1, "getBitmap(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p0

    const/4 v0, 0x1

    if-lez p0, :cond_1

    goto :goto_0

    :cond_1
    move p0, v0

    :goto_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    if-lez v1, :cond_2

    move v0, v1

    :cond_2
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    const-string v0, "createBitmap(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object p0
.end method

.method public undo()V
    .locals 1

    const-string v0, "javascript:RE.undo();"

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->exec(Ljava/lang/String;)V

    return-void
.end method

.method public wordsCount()V
    .locals 1

    const-string v0, "javascript:RE.wordsCount();"

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->exec(Ljava/lang/String;)V

    return-void
.end method
