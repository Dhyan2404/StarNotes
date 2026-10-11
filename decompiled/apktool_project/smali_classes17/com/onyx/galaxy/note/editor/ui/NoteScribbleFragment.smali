.class public final Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;
.super Lcom/onyx/galaxy/note/common/base/BaseFragment;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/android/sdk/universal/editor/view/EditorViewFocusChangeListener;
.implements Lcom/onyx/android/sdk/universal/editor/view/SplitScreenListener;
.implements Lcom/onyx/android/sdk/universal/editor/view/EditorViewDownListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNoteScribbleFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoteScribbleFragment.kt\ncom/onyx/galaxy/note/editor/ui/NoteScribbleFragment\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 View.kt\nandroidx/core/view/ViewKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 5 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 6 Uri.kt\nandroidx/core/net/UriKt\n*L\n1#1,2309:1\n1855#2,2:2310\n1855#2,2:2328\n254#3:2312\n254#3:2313\n256#3,2:2314\n254#3:2319\n254#3:2320\n254#3:2321\n254#3:2322\n254#3:2323\n254#3:2324\n254#3:2325\n254#3:2326\n254#3:2327\n256#3,2:2330\n254#3:2332\n254#3:2333\n256#3,2:2335\n1#4:2316\n1282#5,2:2317\n36#6:2334\n*S KotlinDebug\n*F\n+ 1 NoteScribbleFragment.kt\ncom/onyx/galaxy/note/editor/ui/NoteScribbleFragment\n*L\n374#1:2310,2\n1468#1:2328,2\n583#1:2312\n699#1:2313\n702#1:2314,2\n1040#1:2319\n1183#1:2320\n1196#1:2321\n1197#1:2322\n1209#1:2323\n1232#1:2324\n1233#1:2325\n1246#1:2326\n1247#1:2327\n1575#1:2330,2\n1880#1:2332\n1884#1:2333\n1009#1:2335,2\n982#1:2317,2\n2303#1:2334\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00ee\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0015\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\t\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004B\t\u00a2\u0006\u0006\u0008\u00e8\u0002\u0010\u00cc\u0001J\u0010\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0002J\u0008\u0010\t\u001a\u00020\u0007H\u0002J\u0008\u0010\u000b\u001a\u00020\nH\u0002J\u0008\u0010\u000c\u001a\u00020\u0007H\u0002J\u0008\u0010\r\u001a\u00020\u0007H\u0002J\u0010\u0010\u000f\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\nH\u0002J\u0008\u0010\u0010\u001a\u00020\u0007H\u0002J\u0010\u0010\u0013\u001a\u00020\u00072\u0006\u0010\u0012\u001a\u00020\u0011H\u0002J\u0008\u0010\u0014\u001a\u00020\u0007H\u0002J\u0008\u0010\u0015\u001a\u00020\u0007H\u0002J\u0008\u0010\u0016\u001a\u00020\u0007H\u0002J\u0012\u0010\u0019\u001a\u00020\u00072\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0017H\u0002J\"\u0010\u001e\u001a\u00020\u00072\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u001d\u001a\u00020\u001cH\u0002J\u0018\u0010\"\u001a\u00020\u00072\u0006\u0010 \u001a\u00020\u001f2\u0006\u0010!\u001a\u00020\u0017H\u0002J\u0008\u0010#\u001a\u00020\u0007H\u0002J\u0008\u0010$\u001a\u00020\u0007H\u0002J\u0008\u0010%\u001a\u00020\u0007H\u0002J\u0008\u0010&\u001a\u00020\u0007H\u0002J\u0010\u0010(\u001a\u00020\u00072\u0006\u0010\'\u001a\u00020\u001fH\u0002J\u0008\u0010)\u001a\u00020\u0007H\u0002J\u0012\u0010,\u001a\u00020\u00072\u0008\u0010+\u001a\u0004\u0018\u00010*H\u0002J\u0018\u0010/\u001a\u00020\u00072\u0006\u0010.\u001a\u00020-2\u0006\u0010+\u001a\u00020*H\u0002J\u0008\u00100\u001a\u00020\u0007H\u0002J\u0008\u00101\u001a\u00020\u0007H\u0002J\u0010\u00103\u001a\u00020\u00072\u0006\u00102\u001a\u00020\u001cH\u0002J\u0008\u00104\u001a\u00020\u0007H\u0002J\u0008\u00105\u001a\u00020\u0007H\u0002J\u0008\u00106\u001a\u00020\u0007H\u0002J\u0018\u00107\u001a\u00020\u00072\u0006\u0010 \u001a\u00020\u001f2\u0006\u0010!\u001a\u00020\u0017H\u0002J\u0008\u00108\u001a\u00020\u0007H\u0002J\u0016\u0010;\u001a\u00020\u00072\u000c\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020:09H\u0002J\u0008\u0010<\u001a\u00020\u0007H\u0002J\u0008\u0010=\u001a\u00020\u0007H\u0002J\u0008\u0010>\u001a\u00020\u0007H\u0002J\u0010\u0010A\u001a\u00020\u00072\u0006\u0010@\u001a\u00020?H\u0002J\u0008\u0010B\u001a\u00020\u0007H\u0002J\u0008\u0010C\u001a\u00020\u0007H\u0002J\u0008\u0010D\u001a\u00020\u0007H\u0002J\u0010\u0010E\u001a\u00020\u00072\u0006\u0010\u0012\u001a\u00020\u0011H\u0002J\u0010\u0010F\u001a\u00020\u001f2\u0006\u0010\u0012\u001a\u00020\u0011H\u0002J\u0010\u0010I\u001a\u00020?2\u0006\u0010H\u001a\u00020GH\u0002J\u0010\u0010K\u001a\u00020?2\u0006\u0010J\u001a\u00020\u001fH\u0002J\u0008\u0010L\u001a\u00020\u0007H\u0002J\u0018\u0010M\u001a\u00020\u00072\u0006\u0010@\u001a\u00020?2\u0006\u0010H\u001a\u00020GH\u0002J \u0010O\u001a\u00020\u00072\u0006\u0010N\u001a\u00020\u001f2\u0006\u0010\u001b\u001a\u00020?2\u0006\u0010H\u001a\u00020GH\u0002J\u0010\u0010P\u001a\u00020\u00072\u0006\u0010@\u001a\u00020?H\u0002J\u0010\u0010Q\u001a\u00020\u00072\u0006\u0010@\u001a\u00020?H\u0002J\u0018\u0010T\u001a\u00020\u00072\u0006\u0010R\u001a\u00020\u001f2\u0006\u0010S\u001a\u00020\u001cH\u0002J\u0010\u0010U\u001a\u00020\u001c2\u0006\u0010S\u001a\u00020\u001cH\u0002J \u0010V\u001a\u00020\u00072\u0006\u0010N\u001a\u00020\u001f2\u0006\u0010@\u001a\u00020?2\u0006\u0010H\u001a\u00020GH\u0002J\u0008\u0010X\u001a\u00020WH\u0002J\u0008\u0010Y\u001a\u00020\u001fH\u0002J\u0008\u0010Z\u001a\u00020\u0007H\u0002J\u0018\u0010^\u001a\u00020\u00072\u0006\u0010\\\u001a\u00020[2\u0006\u0010]\u001a\u00020[H\u0002J\u0018\u0010_\u001a\u00020\u00072\u0006\u0010\\\u001a\u00020[2\u0006\u0010]\u001a\u00020[H\u0002J\u0018\u0010`\u001a\u00020\u00072\u0006\u0010\\\u001a\u00020[2\u0006\u0010]\u001a\u00020[H\u0002J\u0018\u0010b\u001a\u00020a2\u0006\u0010\\\u001a\u00020[2\u0006\u0010]\u001a\u00020[H\u0002J\u0008\u0010c\u001a\u00020\u0007H\u0002J \u0010d\u001a\u00020\u00072\u0006\u0010N\u001a\u00020\u001f2\u0006\u0010@\u001a\u00020?2\u0006\u0010H\u001a\u00020GH\u0002J\u001a\u0010f\u001a\u0004\u0018\u00010e2\u0006\u0010@\u001a\u00020?2\u0006\u0010H\u001a\u00020GH\u0002J&\u0010h\u001a\u0010\u0012\u0004\u0012\u00020\u001c\u0012\u0004\u0012\u00020\u001c\u0018\u00010g2\u0006\u0010@\u001a\u00020?2\u0006\u0010H\u001a\u00020GH\u0002J\u0010\u0010k\u001a\u00020\u00072\u0006\u0010j\u001a\u00020iH\u0002J\u0008\u0010l\u001a\u00020\u0007H\u0002J\u0010\u0010m\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\nH\u0002J\u0010\u0010n\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\nH\u0002J\u0008\u0010o\u001a\u00020\u0007H\u0002J\u0008\u0010p\u001a\u00020\u0007H\u0002J\u0008\u0010q\u001a\u00020\u0007H\u0002J\u0008\u0010r\u001a\u00020\u0007H\u0002J\u0008\u0010s\u001a\u00020\u0007H\u0002J\u0010\u0010v\u001a\u00020\u00072\u0006\u0010u\u001a\u00020tH\u0002J\u0008\u0010w\u001a\u00020\u0007H\u0002J\u0008\u0010x\u001a\u00020\u0007H\u0002J\u001c\u0010|\u001a\u00020\u00072\u0008\u0008\u0002\u0010z\u001a\u00020y2\u0008\u0008\u0002\u0010{\u001a\u00020\u001fH\u0002J\u0008\u0010}\u001a\u00020\u0007H\u0002J\u0010\u0010\u007f\u001a\u00020\u00072\u0006\u0010~\u001a\u00020\u001fH\u0002J\t\u0010\u0080\u0001\u001a\u00020\u0007H\u0002J\t\u0010\u0081\u0001\u001a\u00020\u0007H\u0002J\t\u0010\u0082\u0001\u001a\u00020\u0007H\u0002J\t\u0010\u0083\u0001\u001a\u00020\u0007H\u0002J\u0012\u0010\u0085\u0001\u001a\u00020\u00072\u0007\u0010\u0084\u0001\u001a\u00020tH\u0002J\u0012\u0010\u0086\u0001\u001a\u00020\u00072\u0007\u0010\u0084\u0001\u001a\u00020tH\u0002J\u0019\u0010\u0088\u0001\u001a\t\u0012\u0004\u0012\u00020\u00110\u0087\u00012\u0007\u0010\u0084\u0001\u001a\u00020tH\u0002J\u0014\u0010\u008a\u0001\u001a\u00020\u00072\t\u0010\u0089\u0001\u001a\u0004\u0018\u00010iH\u0002J\u001a\u0010\u008c\u0001\u001a\u00020\u001f2\u0006\u0010@\u001a\u00020?2\u0007\u0010\u008b\u0001\u001a\u00020GH\u0002J\u001b\u0010\u008f\u0001\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\n2\u0008\u0010\u008e\u0001\u001a\u00030\u008d\u0001H\u0002J\t\u0010\u0090\u0001\u001a\u00020\u0007H\u0002J\u0019\u0010\u0091\u0001\u001a\u00020\u00072\u0006\u0010N\u001a\u00020\u001f2\u0006\u0010H\u001a\u00020GH\u0002J\u0012\u0010\u0093\u0001\u001a\u00020\u00072\u0007\u0010\u0092\u0001\u001a\u00020tH\u0002J\u001a\u0010\u0095\u0001\u001a\u00020\u00072\u0007\u0010H\u001a\u00030\u0094\u00012\u0006\u0010J\u001a\u00020\u001fH\u0002J\u0011\u0010\u0096\u0001\u001a\u00020\u00072\u0006\u0010J\u001a\u00020\u001fH\u0002J\t\u0010\u0097\u0001\u001a\u00020\u0007H\u0002J\u0013\u0010\u0098\u0001\u001a\u00020\u00072\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0016J\u0013\u0010\u009b\u0001\u001a\u00020\u00072\u0008\u0010\u009a\u0001\u001a\u00030\u0099\u0001H\u0016J\t\u0010\u009c\u0001\u001a\u00020\u0007H\u0016J\u0011\u0010\u000e\u001a\u00020\nH\u0000\u00a2\u0006\u0006\u0008\u009d\u0001\u0010\u009e\u0001J\u0013\u0010\u00a2\u0001\u001a\u00030\u009f\u0001H\u0000\u00a2\u0006\u0006\u0008\u00a0\u0001\u0010\u00a1\u0001J(\u0010\u00a6\u0001\u001a\u00020-2\u0008\u0010\u00a4\u0001\u001a\u00030\u00a3\u00012\t\u0010\u00a5\u0001\u001a\u0004\u0018\u00010\u001a2\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0016J\u001c\u0010\u00a8\u0001\u001a\u00020\u00072\u0007\u0010\u00a7\u0001\u001a\u00020-2\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0016J\u0013\u0010\u00ac\u0001\u001a\u00030\u00a9\u0001H\u0000\u00a2\u0006\u0006\u0008\u00aa\u0001\u0010\u00ab\u0001J\u0013\u0010\u00af\u0001\u001a\u00020\u00072\u0008\u0010\u00ae\u0001\u001a\u00030\u00ad\u0001H\u0016J\u0013\u0010\u00b2\u0001\u001a\u00020\u00072\u0008\u0010\u00b1\u0001\u001a\u00030\u00b0\u0001H\u0007J\t\u0010\u00b3\u0001\u001a\u00020\u0007H\u0016J\t\u0010\u00b4\u0001\u001a\u00020\u0007H\u0016J\t\u0010\u00b5\u0001\u001a\u00020\u0007H\u0016J\t\u0010\u00b6\u0001\u001a\u00020\u0007H\u0016J\u0013\u0010\u00b8\u0001\u001a\u00020\u00072\u0008\u0010\u00b1\u0001\u001a\u00030\u00b7\u0001H\u0007J\u0013\u0010\u00ba\u0001\u001a\u00020\u00072\u0008\u0010\u00b1\u0001\u001a\u00030\u00b9\u0001H\u0007J\u0013\u0010\u00bc\u0001\u001a\u00020\u00072\u0008\u0010\u00b1\u0001\u001a\u00030\u00bb\u0001H\u0007J\u0013\u0010\u00be\u0001\u001a\u00020\u00072\u0008\u0010\u00b1\u0001\u001a\u00030\u00bd\u0001H\u0007J\u0013\u0010\u00c0\u0001\u001a\u00020\u00072\u0008\u0010\u00b1\u0001\u001a\u00030\u00bf\u0001H\u0007J\u0013\u0010\u00c2\u0001\u001a\u00020\u00072\u0008\u0010\u00b1\u0001\u001a\u00030\u00c1\u0001H\u0007J\u0013\u0010\u00c4\u0001\u001a\u00020\u00072\u0008\u0010\u00b1\u0001\u001a\u00030\u00c3\u0001H\u0007J\u0013\u0010\u00c6\u0001\u001a\u00020\u00072\u0008\u0010\u00b1\u0001\u001a\u00030\u00c5\u0001H\u0007J\u0013\u0010\u00c8\u0001\u001a\u00020\u00072\u0008\u0010\u00b1\u0001\u001a\u00030\u00c7\u0001H\u0007J\u0013\u0010\u00ca\u0001\u001a\u00020\u00072\u0008\u0010\u00b1\u0001\u001a\u00030\u00c9\u0001H\u0007J\u0012\u0010\u00cd\u0001\u001a\u00020\u0007H\u0000\u00a2\u0006\u0006\u0008\u00cb\u0001\u0010\u00cc\u0001J\u0012\u0010\u00cf\u0001\u001a\u00020\u0007H\u0000\u00a2\u0006\u0006\u0008\u00ce\u0001\u0010\u00cc\u0001J\u0013\u0010\u00d3\u0001\u001a\u00030\u00d0\u0001H\u0000\u00a2\u0006\u0006\u0008\u00d1\u0001\u0010\u00d2\u0001J\u0013\u0010\u00d5\u0001\u001a\u00020\u00072\u0008\u0010\u00b1\u0001\u001a\u00030\u00d4\u0001H\u0007J\u0013\u0010\u00d7\u0001\u001a\u00020\u00072\u0008\u0010\u00b1\u0001\u001a\u00030\u00d6\u0001H\u0007J\u0013\u0010\u00d9\u0001\u001a\u00020\u00072\u0008\u0010\u00b1\u0001\u001a\u00030\u00d8\u0001H\u0007J\u0013\u0010\u00db\u0001\u001a\u00020\u00072\u0008\u0010\u00b1\u0001\u001a\u00030\u00da\u0001H\u0007J\u0013\u0010\u00dd\u0001\u001a\u00020\u00072\u0008\u0010\u00b1\u0001\u001a\u00030\u00dc\u0001H\u0007J\u0013\u0010\u00df\u0001\u001a\u00020\u00072\u0008\u0010\u00b1\u0001\u001a\u00030\u00de\u0001H\u0007J\u0013\u0010\u00e1\u0001\u001a\u00020\u00072\u0008\u0010\u00b1\u0001\u001a\u00030\u00e0\u0001H\u0007J\u0013\u0010\u00e3\u0001\u001a\u00020\u00072\u0008\u0010\u00b1\u0001\u001a\u00030\u00e2\u0001H\u0007J\u0013\u0010\u00e5\u0001\u001a\u00020\u00072\u0008\u0010\u00b1\u0001\u001a\u00030\u00e4\u0001H\u0007J\u0012\u0010\u00e7\u0001\u001a\u00020\u0007H\u0000\u00a2\u0006\u0006\u0008\u00e6\u0001\u0010\u00cc\u0001J\u001c\u0010\u00ec\u0001\u001a\u00020\u00072\u0008\u0010\u00e9\u0001\u001a\u00030\u00e8\u0001H\u0000\u00a2\u0006\u0006\u0008\u00ea\u0001\u0010\u00eb\u0001J\u0013\u0010\u00ee\u0001\u001a\u00020\u00072\u0008\u0010\u00b1\u0001\u001a\u00030\u00ed\u0001H\u0007J\u0013\u0010\u00f0\u0001\u001a\u00020\u00072\u0008\u0010\u00b1\u0001\u001a\u00030\u00ef\u0001H\u0007J\u0013\u0010\u00f2\u0001\u001a\u00020\u00072\u0008\u0010\u00b1\u0001\u001a\u00030\u00f1\u0001H\u0007J\u0013\u0010\u00f4\u0001\u001a\u00020\u00072\u0008\u0010\u00b1\u0001\u001a\u00030\u00f3\u0001H\u0007J\u0013\u0010\u00f6\u0001\u001a\u00020\u00072\u0008\u0010\u00b1\u0001\u001a\u00030\u00f5\u0001H\u0007J\u0013\u0010\u00f8\u0001\u001a\u00020\u00072\u0008\u0010\u00b1\u0001\u001a\u00030\u00f7\u0001H\u0007J\u0013\u0010\u00fa\u0001\u001a\u00020\u00072\u0008\u0010\u00b1\u0001\u001a\u00030\u00f9\u0001H\u0007J\u0013\u0010\u00fc\u0001\u001a\u00020\u00072\u0008\u0010\u00b1\u0001\u001a\u00030\u00fb\u0001H\u0007J\u0013\u0010\u00fe\u0001\u001a\u00020\u00072\u0008\u0010\u00b1\u0001\u001a\u00030\u00fd\u0001H\u0007J\u0013\u0010\u0080\u0002\u001a\u00020\u00072\u0008\u0010\u00b1\u0001\u001a\u00030\u00ff\u0001H\u0007J\u0013\u0010\u0082\u0002\u001a\u00020\u00072\u0008\u0010\u00b1\u0001\u001a\u00030\u0081\u0002H\u0007J\u0013\u0010\u0086\u0002\u001a\u00030\u0083\u0002H\u0000\u00a2\u0006\u0006\u0008\u0084\u0002\u0010\u0085\u0002J\u0013\u0010\u008a\u0002\u001a\u00030\u0087\u0002H\u0000\u00a2\u0006\u0006\u0008\u0088\u0002\u0010\u0089\u0002J\u0015\u0010\u008c\u0002\u001a\u0005\u0018\u00010\u0087\u0002H\u0000\u00a2\u0006\u0006\u0008\u008b\u0002\u0010\u0089\u0002J\u0013\u0010\u008e\u0002\u001a\u00020\u00072\u0008\u0010\u00b1\u0001\u001a\u00030\u008d\u0002H\u0007J\u0013\u0010\u0090\u0002\u001a\u00020\u00072\u0008\u0010\u00b1\u0001\u001a\u00030\u008f\u0002H\u0007J\u001b\u0010\u0093\u0002\u001a\u00020\u00072\u0007\u0010\u0091\u0002\u001a\u00020\n2\u0007\u0010\u0092\u0002\u001a\u00020\nH\u0016J\u0013\u0010\u0095\u0002\u001a\u00020\u00072\u0008\u0010\u00b1\u0001\u001a\u00030\u0094\u0002H\u0007J\u0013\u0010\u0097\u0002\u001a\u00020\u00072\u0008\u0010\u00b1\u0001\u001a\u00030\u0096\u0002H\u0007J\u0013\u0010\u0099\u0002\u001a\u00020\u00072\u0008\u0010\u00b1\u0001\u001a\u00030\u0098\u0002H\u0007J\u0013\u0010\u009b\u0002\u001a\u00020\u00072\u0008\u0010\u00b1\u0001\u001a\u00030\u009a\u0002H\u0007J\u0013\u0010\u009d\u0002\u001a\u00020\u00072\u0008\u0010\u00b1\u0001\u001a\u00030\u009c\u0002H\u0007J\u0013\u0010\u009f\u0002\u001a\u00020\u00072\u0008\u0010\u00b1\u0001\u001a\u00030\u009e\u0002H\u0007J\u0013\u0010\u00a1\u0002\u001a\u00020\u00072\u0008\u0010\u00b1\u0001\u001a\u00030\u00a0\u0002H\u0007J\u0013\u0010\u00a3\u0002\u001a\u00020\u00072\u0008\u0010\u00b1\u0001\u001a\u00030\u00a2\u0002H\u0007J\u0013\u0010\u00a5\u0002\u001a\u00020\u00072\u0008\u0010\u00b1\u0001\u001a\u00030\u00a4\u0002H\u0007J\u0013\u0010\u00a7\u0002\u001a\u00020\u00072\u0008\u0010\u00b1\u0001\u001a\u00030\u00a6\u0002H\u0007J\u0013\u0010\u00a9\u0002\u001a\u00020\u00072\u0008\u0010\u00b1\u0001\u001a\u00030\u00a8\u0002H\u0007J\u0012\u0010\u00ab\u0002\u001a\u00020\u00072\u0007\u0010\u00aa\u0002\u001a\u00020-H\u0016J\u001c\u0010\u00af\u0002\u001a\u00020\u00072\u0007\u0010\u00ac\u0002\u001a\u00020-2\u0008\u0010\u00ae\u0002\u001a\u00030\u00ad\u0002H\u0016J\u0014\u0010\u00b0\u0002\u001a\u00030\u00d0\u00012\u0008\u0010\u00ae\u0002\u001a\u00030\u00ad\u0002H\u0016J\t\u0010\u00b1\u0002\u001a\u00020\u001fH\u0016J\t\u0010\u00b2\u0002\u001a\u00020\u0007H\u0016J\u0008\u0010\u00b3\u0002\u001a\u00030\u0087\u0002J\'\u0010\u00b8\u0002\u001a\u00020\u00072\u0007\u0010\u00b4\u0002\u001a\u00020\u001c2\u0007\u0010\u00b5\u0002\u001a\u00020\u001c2\n\u0010\u00b7\u0002\u001a\u0005\u0018\u00010\u00b6\u0002H\u0016J\u0012\u0010\u00ba\u0002\u001a\u00020\u00072\u0007\u0010\u00b9\u0002\u001a\u00020tH\u0016J\u0012\u0010\u00bc\u0002\u001a\u00020\u00072\u0007\u0010\u00bb\u0002\u001a\u00020\u0005H\u0016J\u0013\u0010\u00bd\u0002\u001a\u00020\u00072\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0016R*\u0010\u00bf\u0002\u001a\u00030\u00be\u00028\u0000@\u0000X\u0080.\u00a2\u0006\u0018\n\u0006\u0008\u00bf\u0002\u0010\u00c0\u0002\u001a\u0006\u0008\u00c1\u0002\u0010\u00c2\u0002\"\u0006\u0008\u00c3\u0002\u0010\u00c4\u0002R)\u0010\u00cb\u0002\u001a\u00030\u00c5\u00028\u0000@\u0000X\u0080\u000e\u00a2\u0006\u0017\n\u0005\u0008\u0016\u0010\u00c6\u0002\u001a\u0006\u0008\u00c7\u0002\u0010\u00c8\u0002\"\u0006\u0008\u00c9\u0002\u0010\u00ca\u0002R \u0010\u00cf\u0002\u001a\n\u0012\u0005\u0012\u00030\u00cd\u00020\u00cc\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u00086\u0010\u00ce\u0002R\u001a\u0010\u00d1\u0002\u001a\u0004\u0018\u00010\u00118\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008>\u0010\u00d0\u0002R*\u0010\u00d3\u0002\u001a\u00030\u00d2\u00028\u0006@\u0006X\u0086.\u00a2\u0006\u0018\n\u0006\u0008\u00d3\u0002\u0010\u00d4\u0002\u001a\u0006\u0008\u00d5\u0002\u0010\u00d6\u0002\"\u0006\u0008\u00d7\u0002\u0010\u00d8\u0002R*\u0010\u00da\u0002\u001a\u00030\u00d9\u00028\u0000@\u0000X\u0080.\u00a2\u0006\u0018\n\u0006\u0008\u00da\u0002\u0010\u00db\u0002\u001a\u0006\u0008\u00dc\u0002\u0010\u00dd\u0002\"\u0006\u0008\u00de\u0002\u0010\u00df\u0002R\u001b\u0010\u00e2\u0002\u001a\u0005\u0018\u00010\u00e0\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008A\u0010\u00e1\u0002R(\u0010\u00e4\u0002\u001a\u00020\u001f8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0017\n\u0005\u0008B\u0010\u00e3\u0002\u001a\u0006\u0008\u00e4\u0002\u0010\u00e5\u0002\"\u0006\u0008\u00e6\u0002\u0010\u00e7\u0002\u00a8\u0006\u00e9\u0002"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;",
        "Lcom/onyx/galaxy/note/common/base/BaseFragment;",
        "Lcom/onyx/android/sdk/universal/editor/view/EditorViewFocusChangeListener;",
        "Lcom/onyx/android/sdk/universal/editor/view/SplitScreenListener;",
        "Lcom/onyx/android/sdk/universal/editor/view/EditorViewDownListener;",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "J1",
        "u1",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "I0",
        "F1",
        "y0",
        "editorBundle",
        "z0",
        "V0",
        "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
        "syncNoteModel",
        "a1",
        "E1",
        "k1",
        "d1",
        "Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;",
        "it",
        "g2",
        "Landroid/view/ViewGroup;",
        "sideBarLayout",
        "",
        "topBottomMargin",
        "h2",
        "",
        "isDragging",
        "dockType",
        "e2",
        "j1",
        "A0",
        "c1",
        "w1",
        "forceHide",
        "A1",
        "b2",
        "Lcom/onyx/android/sdk/device/bean/NotchType;",
        "notchType",
        "m2",
        "Landroid/view/View;",
        "topView",
        "n2",
        "i1",
        "p1",
        "visibility",
        "Z1",
        "j2",
        "N1",
        "e1",
        "V1",
        "W0",
        "",
        "Lcom/onyx/android/sdk/data/common/data/GuideInfo;",
        "N0",
        "X0",
        "Y1",
        "f1",
        "Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;",
        "sidebarLayout",
        "g1",
        "h1",
        "b1",
        "Y0",
        "l1",
        "m1",
        "Lcom/onyx/galaxy/note/editor/data/SlideBarType;",
        "type",
        "K0",
        "left",
        "L0",
        "P1",
        "R1",
        "show",
        "L1",
        "f2",
        "i2",
        "showSideBar",
        "sideBarWidth",
        "B0",
        "D0",
        "C0",
        "Lcom/onyx/galaxy/note/editor/event/EditorSideBarInfo;",
        "F0",
        "R0",
        "O0",
        "",
        "leftSideWidth",
        "rightSideWidth",
        "U1",
        "X1",
        "W1",
        "Landroid/graphics/PointF;",
        "M0",
        "C1",
        "S1",
        "Landroidx/fragment/app/Fragment;",
        "G0",
        "Lkotlin/Pair;",
        "E0",
        "Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;",
        "noteTabData",
        "t0",
        "v1",
        "x1",
        "z1",
        "J0",
        "T1",
        "u0",
        "v0",
        "a2",
        "",
        "activeProviderName",
        "l2",
        "y1",
        "S0",
        "Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;",
        "touchMode",
        "anim",
        "o2",
        "T0",
        "hide",
        "U0",
        "k2",
        "B1",
        "I1",
        "x0",
        "docId",
        "K1",
        "d2",
        "Lio/reactivex/rxjava3/core/Observable;",
        "c2",
        "tabData",
        "q1",
        "slideBarType",
        "n1",
        "Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;",
        "editorViewDragLayout",
        "D1",
        "H0",
        "H1",
        "eventId",
        "G1",
        "Lcom/onyx/galaxy/note/editor/data/ShortcutType;",
        "P0",
        "Q0",
        "s1",
        "onCreate",
        "Landroid/content/Context;",
        "context",
        "onAttach",
        "onDetach",
        "editorBundle$note_overseasRelease",
        "()Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;",
        "getSelectionMenuView$note_overseasRelease",
        "()Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;",
        "getSelectionMenuView",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "container",
        "onCreateView",
        "view",
        "onViewCreated",
        "Lcom/onyx/android/sdk/textbox/widget/TextBoxView;",
        "getTextBox$note_overseasRelease",
        "()Lcom/onyx/android/sdk/textbox/widget/TextBoxView;",
        "getTextBox",
        "Landroid/content/res/Configuration;",
        "newConfig",
        "onConfigurationChanged",
        "Lcom/onyx/galaxy/note/editor/event/CloseSideBarEvent;",
        "event",
        "onCloseSideBarEvent",
        "onDestroyView",
        "onPause",
        "onStop",
        "onDestroy",
        "Lcom/onyx/android/sdk/data/account/event/ActivationStateChangedEvent;",
        "onActivationStateChangedEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/note/HideSelectionMenuEvent;",
        "onHideSelectionMenuEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/note/ShapeHandlerChangedEvent;",
        "onShapeHandlerChangedEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/note/TextToolViewVisibleChangeEvent;",
        "onTextInputToolViewVisibleChangeEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/note/QuitNoteDocumentEvent;",
        "onQuitNoteDocumentEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/app/ScrollBeginEvent;",
        "onScrollBeginEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/app/ScaleBeginEvent;",
        "onScaleBeginEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/app/RequestPermissionEvent;",
        "onRequestPermissionEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/app/MoveScribbleActivityToBackEvent;",
        "onMoveActivityToBackEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/note/ChangeTouchModeEvent;",
        "onChangeTouchModeEvent",
        "closeSelectionMenu$note_overseasRelease",
        "()V",
        "closeSelectionMenu",
        "hideSelectionMenu$note_overseasRelease",
        "hideSelectionMenu",
        "Landroid/graphics/RectF;",
        "getSelectionMenuDisplayRect$note_overseasRelease",
        "()Landroid/graphics/RectF;",
        "getSelectionMenuDisplayRect",
        "Lcom/onyx/android/sdk/universal/editor/events/note/BeforeChangePenArgsEvent;",
        "onBeforeChangePenEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/note/ChangePenArgsEvent;",
        "onChangePenArgsEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/note/ShapeToolTypeRecoverEvent;",
        "onShapeToolTypeRecoverEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/app/ActivateDocumentEvent;",
        "onActivateDocumentEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/app/ShowTagShapePopupEvent;",
        "onShowTagShapePopupEvent",
        "Lcom/onyx/galaxy/note/editor/event/OpenSlideBarEvents;",
        "onOpenSlideBarEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/note/ShowQuotePopupEvent;",
        "onShowQuotePopupEvent",
        "Lcom/onyx/galaxy/note/editor/event/ChangeDockTypeEvent;",
        "onChangeDockTypeEvent",
        "Lcom/onyx/galaxy/note/editor/event/ShapeToolbarChangeEvent;",
        "onShapeToolbarChangeEvent",
        "switchToLastTool$note_overseasRelease",
        "switchToLastTool",
        "Lcom/onyx/galaxy/note/editor/data/ShapeToolType;",
        "toolType",
        "ensureSwitchUserTool$note_overseasRelease",
        "(Lcom/onyx/galaxy/note/editor/data/ShapeToolType;)V",
        "ensureSwitchUserTool",
        "Lcom/onyx/android/sdk/universal/editor/events/note/ChangeSubShapeTypeEvent;",
        "onChangeSubShapeTypeEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/note/SwitchExcerptTypeEvent;",
        "onSwitchExcerptTypeEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/app/GlobalDocumentOpenSuccessEvent;",
        "onGlobalDocumentOpenSuccessEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/app/DocumentOpenSuccessEvent;",
        "onGDocumentOpenSuccessEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/note/PickImagesToInsertPagesEvent;",
        "onPickImagesToInsertPagesEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/note/PickFileToInsertPagesEvent;",
        "onPickFileToInsertPagesEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/note/ChangeEraseTypeEvent;",
        "onChangeEraseTypeEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/app/ContentViewSizeChangedEvent;",
        "onContentViewSizeChangedEvent",
        "Lcom/onyx/android/sdk/universal/common/events/ConfigurationChangedEvent;",
        "onConfigurationChangedEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/app/NoteOverviewStartActivateDocumentEvent;",
        "onNoteOverviewStartActivateDocumentEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/app/NoteOverviewCloseDocumentEvent;",
        "onNoteOverviewCloseDocumentEvent",
        "Landroid/graphics/Rect;",
        "getEditorContainerRect$note_overseasRelease",
        "()Landroid/graphics/Rect;",
        "getEditorContainerRect",
        "",
        "getEditorContainerLocation$note_overseasRelease",
        "()[I",
        "getEditorContainerLocation",
        "getRootLocation$note_overseasRelease",
        "getRootLocation",
        "Lcom/onyx/android/sdk/universal/editor/events/note/PickInsertImageShapesEvent;",
        "onPickerInsertImageShapeEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/app/UserNoteListImportedEvent;",
        "onUserNoteListImportedEvent",
        "last",
        "current",
        "onEditorFocusChanged",
        "Lcom/onyx/android/sdk/universal/editor/data/FocusedEditorDocSwitchEvent;",
        "onFocusedEditorDocSwitched",
        "Lcom/onyx/android/sdk/universal/editor/events/note/QuitPendingHandlerEvent;",
        "onQuitPendingHandlerEvent",
        "Lcom/onyx/galaxy/note/editor/event/ShowShortcutBarCustomPopupEvent;",
        "onShowShortcutBarCustomPopupEvent",
        "Lcom/onyx/galaxy/note/category/event/MemberChargeEvent;",
        "onMemberChargeEvent",
        "Lcom/onyx/android/sdk/cloudstorage/event/CloudStorageRefreshTokenFailedEvent;",
        "onCloudStorageRefreshTokenFailedEvent",
        "Lcom/onyx/galaxy/note/receiver/ScreenOffEvent;",
        "onScreenOffEvent",
        "Lcom/onyx/galaxy/note/receiver/ScreenOnEvent;",
        "onScreenOnEvent",
        "Lcom/onyx/galaxy/note/editor/event/ReLockNoteEvent;",
        "onReLockNoteEvent",
        "Lcom/onyx/galaxy/note/editor/event/CheckEditorAutoReLockEvent;",
        "onCheckEditorAutoReLockEvent",
        "Lcom/onyx/galaxy/note/editor/event/EditNoteEncryptionChangedEvent;",
        "onEditNoteEncryptionChangedEvent",
        "Lcom/onyx/galaxy/note/editor/event/UpdateAllLockedNotePasswordEvent;",
        "onUpdateAllLockedNotePasswordEvent",
        "goneView",
        "exitSplitScreen",
        "editorView",
        "Lcom/onyx/android/sdk/universal/editor/config/SplitScreenPosition;",
        "position",
        "splitScreen",
        "getSplitScreenSize",
        "isEnabledSplitScreen",
        "onResume",
        "getEditorViewOffsetLocation",
        "requestCode",
        "resultCode",
        "Landroid/content/Intent;",
        "data",
        "onActivityResult",
        "id",
        "onDown",
        "outState",
        "onSaveInstanceState",
        "onViewStateRestored",
        "Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;",
        "binding",
        "Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;",
        "getBinding$note_overseasRelease",
        "()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;",
        "setBinding$note_overseasRelease",
        "(Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;)V",
        "Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;",
        "Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;",
        "getEditorBundleManager$note_overseasRelease",
        "()Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;",
        "setEditorBundleManager$note_overseasRelease",
        "(Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;)V",
        "editorBundleManager",
        "",
        "Lcom/onyx/android/sdk/universal/editor/eventhandler/EventHandler;",
        "Ljava/util/List;",
        "globalEventHandlers",
        "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
        "noteModel",
        "Lcom/onyx/galaxy/note/editor/viewmodel/NoteScribbleViewModel;",
        "viewModel",
        "Lcom/onyx/galaxy/note/editor/viewmodel/NoteScribbleViewModel;",
        "getViewModel",
        "()Lcom/onyx/galaxy/note/editor/viewmodel/NoteScribbleViewModel;",
        "setViewModel",
        "(Lcom/onyx/galaxy/note/editor/viewmodel/NoteScribbleViewModel;)V",
        "Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;",
        "penViewModel",
        "Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;",
        "getPenViewModel$note_overseasRelease",
        "()Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;",
        "setPenViewModel$note_overseasRelease",
        "(Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;)V",
        "Landroid/view/View$OnLayoutChangeListener;",
        "Landroid/view/View$OnLayoutChangeListener;",
        "windowChangeListener",
        "Z",
        "isSideLayoutAnim",
        "()Z",
        "setSideLayoutAnim",
        "(Z)V",
        "<init>",
        "note_overseasRelease"
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
        "SMAP\nNoteScribbleFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoteScribbleFragment.kt\ncom/onyx/galaxy/note/editor/ui/NoteScribbleFragment\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 View.kt\nandroidx/core/view/ViewKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 5 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 6 Uri.kt\nandroidx/core/net/UriKt\n*L\n1#1,2309:1\n1855#2,2:2310\n1855#2,2:2328\n254#3:2312\n254#3:2313\n256#3,2:2314\n254#3:2319\n254#3:2320\n254#3:2321\n254#3:2322\n254#3:2323\n254#3:2324\n254#3:2325\n254#3:2326\n254#3:2327\n256#3,2:2330\n254#3:2332\n254#3:2333\n256#3,2:2335\n1#4:2316\n1282#5,2:2317\n36#6:2334\n*S KotlinDebug\n*F\n+ 1 NoteScribbleFragment.kt\ncom/onyx/galaxy/note/editor/ui/NoteScribbleFragment\n*L\n374#1:2310,2\n1468#1:2328,2\n583#1:2312\n699#1:2313\n702#1:2314,2\n1040#1:2319\n1183#1:2320\n1196#1:2321\n1197#1:2322\n1209#1:2323\n1232#1:2324\n1233#1:2325\n1246#1:2326\n1247#1:2327\n1575#1:2330,2\n1880#1:2332\n1884#1:2333\n1009#1:2335,2\n982#1:2317,2\n2303#1:2334\n*E\n"
    }
.end annotation


# instance fields
.field public binding:Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

.field public d1:Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public e1:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/universal/editor/eventhandler/EventHandler;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public f1:Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public g1:Landroid/view/View$OnLayoutChangeListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public h1:Z

.field public penViewModel:Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;

.field public viewModel:Lcom/onyx/galaxy/note/editor/viewmodel/NoteScribbleViewModel;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lcom/onyx/galaxy/note/common/base/BaseFragment;-><init>()V

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;

    invoke-direct {v0, p0, p0, p0}, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;-><init>(Lcom/onyx/android/sdk/universal/editor/view/EditorViewFocusChangeListener;Lcom/onyx/android/sdk/universal/editor/view/SplitScreenListener;Lcom/onyx/android/sdk/universal/editor/view/EditorViewDownListener;)V

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->d1:Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;

    const/16 v1, 0x8

    new-array v1, v1, [Lcom/onyx/android/sdk/universal/editor/eventhandler/EventHandler;

    new-instance v2, Lcom/onyx/galaxy/note/editor/handler/GlobalEventHandler;

    invoke-direct {v2, v0}, Lcom/onyx/galaxy/note/editor/handler/GlobalEventHandler;-><init>(Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;)V

    const/4 v0, 0x0

    aput-object v2, v1, v0

    new-instance v0, Lcom/onyx/galaxy/note/editor/handler/QuickFunctionEventHandler;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/editor/handler/QuickFunctionEventHandler;-><init>(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;)V

    const/4 v2, 0x1

    aput-object v0, v1, v2

    new-instance v0, Lcom/onyx/galaxy/note/editor/handler/PenBoxEventHandler;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/editor/handler/PenBoxEventHandler;-><init>(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;)V

    const/4 v2, 0x2

    aput-object v0, v1, v2

    new-instance v0, Lcom/onyx/galaxy/note/editor/handler/TextBoxKeyboardEventHandler;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/editor/handler/TextBoxKeyboardEventHandler;-><init>(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;)V

    const/4 v2, 0x3

    aput-object v0, v1, v2

    new-instance v0, Lcom/onyx/galaxy/note/editor/handler/SplitScreenEventHandler;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/editor/handler/SplitScreenEventHandler;-><init>(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;)V

    const/4 v2, 0x4

    aput-object v0, v1, v2

    new-instance v0, Lcom/onyx/galaxy/note/editor/handler/NoteCounterUIHandler;

    sget-object v2, Lcom/onyx/galaxy/note/editor/ui/CounterBundle;->Companion:Lcom/onyx/galaxy/note/editor/ui/CounterBundle$Companion;

    invoke-virtual {v2}, Lcom/onyx/galaxy/note/editor/ui/CounterBundle$Companion;->getDefaultBundle()Lcom/onyx/galaxy/note/editor/ui/CounterBundle;

    move-result-object v3

    invoke-direct {v0, v3, p0}, Lcom/onyx/galaxy/note/editor/handler/NoteCounterUIHandler;-><init>(Lcom/onyx/galaxy/note/editor/ui/CounterBundle;Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;)V

    const/4 v3, 0x5

    aput-object v0, v1, v3

    new-instance v0, Lcom/onyx/galaxy/note/editor/handler/CounterAlarmHandler;

    invoke-virtual {v2}, Lcom/onyx/galaxy/note/editor/ui/CounterBundle$Companion;->getDefaultBundle()Lcom/onyx/galaxy/note/editor/ui/CounterBundle;

    move-result-object v2

    invoke-direct {v0, v2, p0}, Lcom/onyx/galaxy/note/editor/handler/CounterAlarmHandler;-><init>(Lcom/onyx/galaxy/note/editor/ui/CounterBundle;Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;)V

    const/4 v2, 0x6

    aput-object v0, v1, v2

    new-instance v0, Lcom/onyx/galaxy/note/editor/handler/SystemBarEventHandler;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/editor/handler/SystemBarEventHandler;-><init>(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;)V

    const/4 v2, 0x7

    aput-object v0, v1, v2

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->e1:Ljava/util/List;

    return-void
.end method

.method public static final M1(ZLcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;Lcom/onyx/galaxy/note/editor/data/SlideBarType;Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$type"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$sideBarLayout"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->shapeAndTool:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;->getToolDragView()Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->isToolbarAlignedWithSidebar(Lcom/onyx/galaxy/note/editor/data/SlideBarType;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->U0(Z)V

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->I1()V

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->editorBundle$note_overseasRelease()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    new-instance v0, Lcom/onyx/galaxy/note/editor/event/VisiblePenBoxEvent;

    const/4 v1, 0x1

    invoke-direct {v0, p2, v1}, Lcom/onyx/galaxy/note/editor/event/VisiblePenBoxEvent;-><init>(Lcom/onyx/galaxy/note/editor/data/SlideBarType;Z)V

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    invoke-virtual {p1, p3}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->i2(Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;)V

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->p1()V

    return-void
.end method

.method public static final O1(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;Ljava/util/List;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$showTabLayoutGuide$2$1;

    invoke-direct {v0, p0, p1}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$showTabLayoutGuide$2$1;-><init>(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;Ljava/util/List;)V

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/base/extension/FragmentKt;->requireContextSafety(Landroidx/fragment/app/Fragment;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final Q1(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;Ljava/util/List;)V
    .locals 5

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/galaxy/note/editor/data/SlideBarType;->SLIDE_MORE_SETTING:Lcom/onyx/galaxy/note/editor/data/SlideBarType;

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->K0(Lcom/onyx/galaxy/note/editor/data/SlideBarType;)Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    const/4 v3, 0x1

    invoke-virtual {p0, v3, v1, v0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->S1(ZLcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;Lcom/onyx/galaxy/note/editor/data/SlideBarType;)V

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->INSTANCE:Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->getNoteEditConfigInfo()Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;->getShortcutBarData()Lcom/onyx/galaxy/note/editor/data/ShortcutBarData;

    move-result-object v1

    sget-object v3, Lcom/onyx/galaxy/note/editor/data/ShortcutType;->SHORTCUT_OTHER_SETTINGS:Lcom/onyx/galaxy/note/editor/data/ShortcutType;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->funcLayout:Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;

    const-string v4, "funcLayout"

    invoke-static {p0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/onyx/galaxy/note/common/extension/ViewExtKt;->isLayoutDirectionRtl(Landroid/view/View;)Z

    move-result p0

    invoke-virtual {v1, v3, p0}, Lcom/onyx/galaxy/note/editor/data/ShortcutBarData;->isLeftSideShortcut(Lcom/onyx/galaxy/note/editor/data/ShortcutType;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;->LEFT:Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;->RIGHT:Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    :goto_0
    check-cast v0, Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/data/common/data/GuideInfo;

    invoke-virtual {v0, p1, p0}, Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment;->showPageWhiteSpaceGuide(Lcom/onyx/android/sdk/data/common/data/GuideInfo;Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;)V

    :cond_1
    return-void
.end method

.method public static final Z0(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;Landroid/view/View;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->tabLayout:Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;->showManagementPopup(Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic access$activateDocument(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->t0(Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;)V

    return-void
.end method

.method public static final synthetic access$computeEditorOffsetBySidebar(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;I)I
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->D0(I)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$createEditorSideBarInfo(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;)Lcom/onyx/galaxy/note/editor/event/EditorSideBarInfo;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->F0()Lcom/onyx/galaxy/note/editor/event/EditorSideBarInfo;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$ensureQuitPendingHandler(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->J0()V

    return-void
.end method

.method public static final synthetic access$getNoteModel$p(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;)Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->f1:Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    return-object p0
.end method

.method public static final synthetic access$getSideBarLayout(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;Z)Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->L0(Z)Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$handleDragToolGuidePopup(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->N0(Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic access$handleDragToolOffset(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->O0()V

    return-void
.end method

.method public static final synthetic access$handleFunctionTool(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;Lcom/onyx/galaxy/note/editor/data/ShortcutType;Z)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->P0(Lcom/onyx/galaxy/note/editor/data/ShortcutType;Z)V

    return-void
.end method

.method public static final synthetic access$hasSideBarShow(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->R0()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$hidePenBox(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->T0()V

    return-void
.end method

.method public static final synthetic access$hideToolDragView(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->U0(Z)V

    return-void
.end method

.method public static final synthetic access$initCounter(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->V0()V

    return-void
.end method

.method public static final synthetic access$initGuide(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->a1(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V

    return-void
.end method

.method public static final synthetic access$onContainerRectChanged(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->p1()V

    return-void
.end method

.method public static final synthetic access$onNoteTabDataChanged(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->q1(Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;)V

    return-void
.end method

.method public static final synthetic access$onWindowLocationChanged(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->u1()V

    return-void
.end method

.method public static final synthetic access$quitNote(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->y1()V

    return-void
.end method

.method public static final synthetic access$reactivatePenBox(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->A1(Z)V

    return-void
.end method

.method public static final synthetic access$refreshScrollerParams(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->C1()V

    return-void
.end method

.method public static final synthetic access$reportEvent(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->G1(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$resetPenBoxPosition(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->I1()V

    return-void
.end method

.method public static final synthetic access$setNoteModel$p(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->f1:Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    return-void
.end method

.method public static final synthetic access$showSideBarLayout(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;ZLcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;Lcom/onyx/galaxy/note/editor/data/SlideBarType;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->L1(ZLcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;Lcom/onyx/galaxy/note/editor/data/SlideBarType;)V

    return-void
.end method

.method public static final synthetic access$toggleSideBarLayout(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;Lcom/onyx/galaxy/note/editor/data/SlideBarType;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->R1(Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;Lcom/onyx/galaxy/note/editor/data/SlideBarType;)V

    return-void
.end method

.method public static final synthetic access$toggleSideLayoutFragment(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;ZLcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;Lcom/onyx/galaxy/note/editor/data/SlideBarType;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->S1(ZLcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;Lcom/onyx/galaxy/note/editor/data/SlideBarType;)V

    return-void
.end method

.method public static final synthetic access$updateDragEffectView(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;ZLcom/onyx/galaxy/note/editor/view/toolbar/DockType;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->V1(ZLcom/onyx/galaxy/note/editor/view/toolbar/DockType;)V

    return-void
.end method

.method public static final synthetic access$updateEditorScrollerParams(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->Y1()V

    return-void
.end method

.method public static final synthetic access$updateFunctionLayoutUi(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->Z1(I)V

    return-void
.end method

.method public static final synthetic access$updateInputHelperLocation(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->a2()V

    return-void
.end method

.method public static final synthetic access$updateNotch(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->b2()V

    return-void
.end method

.method public static final synthetic access$updateNoteTabLayout(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->d2(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$updateShapeView(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;ZLcom/onyx/galaxy/note/editor/view/toolbar/DockType;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->e2(ZLcom/onyx/galaxy/note/editor/view/toolbar/DockType;)V

    return-void
.end method

.method public static final synthetic access$updateSideBarView(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->g2(Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;)V

    return-void
.end method

.method public static final synthetic access$updateSidebarAreaRect(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->i2(Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;)V

    return-void
.end method

.method public static final synthetic access$updateTabLayoutAndIndicator(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->j2()V

    return-void
.end method

.method public static final synthetic access$updateTopView(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;Lcom/onyx/android/sdk/device/bean/NotchType;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->m2(Lcom/onyx/android/sdk/device/bean/NotchType;)V

    return-void
.end method

.method public static synthetic l0(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->O1(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic m0(ZLcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;Lcom/onyx/galaxy/note/editor/data/SlideBarType;Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->M1(ZLcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;Lcom/onyx/galaxy/note/editor/data/SlideBarType;Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;)V

    return-void
.end method

.method public static synthetic n0(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->Q1(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic o0(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->o1(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;)V

    return-void
.end method

.method public static final o1(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->p1()V

    return-void
.end method

.method public static synthetic p0(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->t1(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V

    return-void
.end method

.method public static synthetic p2(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;ZILjava/lang/Object;)V
    .locals 1

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    sget-object p1, Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;

    const/4 p4, 0x0

    const/4 v0, 0x1

    invoke-static {p1, p4, v0, p4}, Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;->getEditTouchMode$default(Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;Ljava/lang/String;ILjava/lang/Object;)Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;

    move-result-object p1

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const/4 p2, 0x0

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->o2(Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;Z)V

    return-void
.end method

.method public static synthetic q0(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;Lcom/onyx/android/sdk/universal/editor/events/app/RequestPermissionEvent;ZLjava/util/List;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->r1(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;Lcom/onyx/android/sdk/universal/editor/events/app/RequestPermissionEvent;ZLjava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic r0(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->Z0(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;Landroid/view/View;)V

    return-void
.end method

.method public static final r1(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;Lcom/onyx/android/sdk/universal/editor/events/app/RequestPermissionEvent;ZLjava/util/List;Ljava/util/List;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<anonymous parameter 1>"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "deniedList"

    invoke-static {p4, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    sget-object p1, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "These permissions are denied: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const-string p1, "requireActivity(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/String;

    invoke-static {p4}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p2

    const-string p3, "first(...)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x0

    aput-object p2, p1, p3

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/extension/ActivityKt;->shouldShowGuideToPermissionSettings(Landroid/app/Activity;[Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->editorBundle$note_overseasRelease()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/app/RequestPermissionEvent;->getNextEvent()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic s0(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->w0(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;)V

    return-void
.end method

.method public static final t1(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->f1:Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    return-void
.end method

.method public static final w0(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->inputTextLayout:Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;->destroy()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->b1()V

    return-void
.end method


# virtual methods
.method public final A0()V
    .locals 1

    sget-object p0, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/GlobalBundle;

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/events/note/SystemBarWindowInsetsEvent;

    invoke-direct {v0}, Lcom/onyx/android/sdk/universal/editor/events/note/SystemBarWindowInsetsEvent;-><init>()V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->postEvent(Ljava/lang/Object;)V

    return-void
.end method

.method public final A1(Z)V
    .locals 4

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->editorBundle$note_overseasRelease()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    new-instance v0, Lcom/onyx/android/sdk/universal/common/events/ReactivePenBoxEvent;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, p1, v3, v1, v2}, Lcom/onyx/android/sdk/universal/common/events/ReactivePenBoxEvent;-><init>(ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    return-void
.end method

.method public final B0(ZI)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p0, p2}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->D0(I)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->shapeAndTool:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutShpaeAndToolContainerBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/LayoutShpaeAndToolContainerBinding;->flShapeContent:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 v0, 0x12c

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method public final B1()V
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->shapeAndTool:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutShpaeAndToolContainerBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/LayoutShpaeAndToolContainerBinding;->splitScreen:Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->getBinding()Lcom/onyx/galaxy/note/databinding/SplitScreenLayoutBinding;

    move-result-object p0

    iget-object v0, p0, Lcom/onyx/galaxy/note/databinding/SplitScreenLayoutBinding;->editorViewDragLayout:Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;->refreshPageScrollerLayout()V

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/SplitScreenLayoutBinding;->editorViewDragLayout2:Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;->refreshPageScrollerLayout()V

    return-void
.end method

.method public final C0(ZLcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;Lcom/onyx/galaxy/note/editor/data/SlideBarType;)V
    .locals 4

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p0, v0, p2, p3}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->S1(ZLcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;Lcom/onyx/galaxy/note/editor/data/SlideBarType;)V

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v1

    sget v2, Lcom/onyx/galaxy/note/R$id;->left_side_bar_layout:I

    if-ne v1, v2, :cond_1

    new-instance v1, Landroidx/transition/Slide;

    const v2, 0x800003

    invoke-direct {v1, v2}, Landroidx/transition/Slide;-><init>(I)V

    goto :goto_0

    :cond_1
    new-instance v1, Landroidx/transition/Slide;

    const v2, 0x800005

    invoke-direct {v1, v2}, Landroidx/transition/Slide;-><init>(I)V

    :goto_0
    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroidx/transition/Transition;->setDuration(J)Landroidx/transition/Transition;

    invoke-virtual {v1, p2}, Landroidx/transition/Transition;->addTarget(Landroid/view/View;)Landroidx/transition/Transition;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->editorBundle$note_overseasRelease()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v2

    new-instance v3, Lcom/onyx/galaxy/note/editor/event/FunctionToolPopupHideEvent;

    invoke-direct {v3}, Lcom/onyx/galaxy/note/editor/event/FunctionToolPopupHideEvent;-><init>()V

    invoke-static {v2, v3}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    new-instance v2, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$animateSideBar$1;

    invoke-direct {v2, p1, p0, p2, p3}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$animateSideBar$1;-><init>(ZLcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;Lcom/onyx/galaxy/note/editor/data/SlideBarType;)V

    invoke-virtual {v1, v2}, Landroidx/transition/Transition;->addListener(Landroidx/transition/Transition$TransitionListener;)Landroidx/transition/Transition;

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p3

    const-string v2, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-static {p3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Landroid/view/ViewGroup;

    invoke-static {p3, v1}, Landroidx/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroidx/transition/Transition;)V

    iput-boolean v0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->h1:Z

    invoke-static {p2, p1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrGone(Landroid/view/View;Z)V

    return-void
.end method

.method public final C1()V
    .locals 10

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->shapeAndTool:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;->getToolDragView()Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->getToolContainer()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->globalVisibleRect(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->leftSideBarLayout:Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;

    invoke-static {v1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->isVisible(Landroid/view/View;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    if-eqz v1, :cond_1

    invoke-static {v1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->globalVisibleRect(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, v3

    :goto_1
    sget-object v2, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$refreshScrollerParams$leftSideBarRect$2;->INSTANCE:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$refreshScrollerParams$leftSideBarRect$2;

    invoke-static {v1, v2}, Lcom/onyx/android/sdk/base/extension/AnyKt;->getOrElse(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->rightSideBarLayout:Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;

    invoke-static {v1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->isVisible(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    move-object v1, v3

    :goto_2
    if-eqz v1, :cond_3

    invoke-static {v1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->globalVisibleRect(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v3

    :cond_3
    sget-object v1, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$refreshScrollerParams$rightSideBarRect$2;->INSTANCE:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$refreshScrollerParams$rightSideBarRect$2;

    invoke-static {v3, v1}, Lcom/onyx/android/sdk/base/extension/AnyKt;->getOrElse(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/graphics/Rect;

    sget-object v1, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->INSTANCE:Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;

    new-instance v2, Lcom/onyx/galaxy/note/editor/event/ChangeScrollerConfigEvent;

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->shapeAndTool:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutShpaeAndToolContainerBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/LayoutShpaeAndToolContainerBinding;->flShapeContent:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/view/View;->getTranslationX()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    move-object v4, v2

    invoke-direct/range {v4 .. v9}, Lcom/onyx/galaxy/note/editor/event/ChangeScrollerConfigEvent;-><init>(Ljava/lang/Boolean;Ljava/lang/Integer;Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/lang/Float;)V

    invoke-virtual {v1, v2}, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->postEvent(Ljava/lang/Object;)V

    return-void
.end method

.method public final D0(I)I
    .locals 1

    sget-object p0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v0, Lcom/onyx/galaxy/note/R$integer;->editor_offset_ratio_when_sidebar_on:I

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getInteger(I)I

    move-result p0

    invoke-static {p1, p0}, Lcom/onyx/android/sdk/base/extension/IntKt;->safeDivide(II)I

    move-result p0

    return p0
.end method

.method public final D1(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;)V
    .locals 9

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getUiBundle()Lcom/onyx/android/sdk/universal/editor/UIBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/UIBundle;->getEventHandlerManager()Lcom/onyx/android/sdk/universal/editor/eventhandler/EventHandlerManager;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/handler/DocumentEventHandler;

    invoke-direct {v1, p1}, Lcom/onyx/galaxy/note/editor/handler/DocumentEventHandler;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    const-string v2, "document"

    invoke-virtual {v0, v2, v1}, Lcom/onyx/android/sdk/universal/editor/eventhandler/EventHandlerManager;->registerEventHandler(Ljava/lang/String;Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getUiBundle()Lcom/onyx/android/sdk/universal/editor/UIBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/UIBundle;->getEventHandlerManager()Lcom/onyx/android/sdk/universal/editor/eventhandler/EventHandlerManager;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/handler/ScaleEventHandler;

    invoke-direct {v1, p1}, Lcom/onyx/galaxy/note/editor/handler/ScaleEventHandler;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    const-string v2, "scale"

    invoke-virtual {v0, v2, v1}, Lcom/onyx/android/sdk/universal/editor/eventhandler/EventHandlerManager;->registerEventHandler(Ljava/lang/String;Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getUiBundle()Lcom/onyx/android/sdk/universal/editor/UIBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/UIBundle;->getEventHandlerManager()Lcom/onyx/android/sdk/universal/editor/eventhandler/EventHandlerManager;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/handler/PageEventHandler;

    invoke-direct {v1, p1, p2}, Lcom/onyx/galaxy/note/editor/handler/PageEventHandler;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;)V

    const-string v2, "page"

    invoke-virtual {v0, v2, v1}, Lcom/onyx/android/sdk/universal/editor/eventhandler/EventHandlerManager;->registerEventHandler(Ljava/lang/String;Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getUiBundle()Lcom/onyx/android/sdk/universal/editor/UIBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/UIBundle;->getEventHandlerManager()Lcom/onyx/android/sdk/universal/editor/eventhandler/EventHandlerManager;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/handler/StatisticEventHandler;

    invoke-direct {v1, p1}, Lcom/onyx/galaxy/note/editor/handler/StatisticEventHandler;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    const-string v2, "statistic"

    invoke-virtual {v0, v2, v1}, Lcom/onyx/android/sdk/universal/editor/eventhandler/EventHandlerManager;->registerEventHandler(Ljava/lang/String;Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getUiBundle()Lcom/onyx/android/sdk/universal/editor/UIBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/UIBundle;->getEventHandlerManager()Lcom/onyx/android/sdk/universal/editor/eventhandler/EventHandlerManager;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/handler/OperationTipEventHandler;

    new-instance v2, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$registerAppEventHandler$1;

    invoke-direct {v2, p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$registerAppEventHandler$1;-><init>(Ljava/lang/Object;)V

    invoke-direct {v1, p1, v2}, Lcom/onyx/galaxy/note/editor/handler/OperationTipEventHandler;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lkotlin/jvm/functions/Function0;)V

    const-string v2, "operation_tip"

    invoke-virtual {v0, v2, v1}, Lcom/onyx/android/sdk/universal/editor/eventhandler/EventHandlerManager;->registerEventHandler(Ljava/lang/String;Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getUiBundle()Lcom/onyx/android/sdk/universal/editor/UIBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/UIBundle;->getEventHandlerManager()Lcom/onyx/android/sdk/universal/editor/eventhandler/EventHandlerManager;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/handler/ShapesLocationBarEventHandler;

    invoke-virtual {p2}, Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;->getShapesLocationBar()Lcom/onyx/galaxy/note/editor/view/custom/ShapesLocationBar;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcom/onyx/galaxy/note/editor/handler/ShapesLocationBarEventHandler;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/galaxy/note/editor/view/custom/ShapesLocationBar;)V

    const-string v2, "shapes_location_bar"

    invoke-virtual {v0, v2, v1}, Lcom/onyx/android/sdk/universal/editor/eventhandler/EventHandlerManager;->registerEventHandler(Ljava/lang/String;Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getUiBundle()Lcom/onyx/android/sdk/universal/editor/UIBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/UIBundle;->getEventHandlerManager()Lcom/onyx/android/sdk/universal/editor/eventhandler/EventHandlerManager;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/handler/ShapesSelectionEventHandler;

    invoke-direct {v1, p1, p0}, Lcom/onyx/galaxy/note/editor/handler/ShapesSelectionEventHandler;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;)V

    const-string v2, "shapes_selection"

    invoke-virtual {v0, v2, v1}, Lcom/onyx/android/sdk/universal/editor/eventhandler/EventHandlerManager;->registerEventHandler(Ljava/lang/String;Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getUiBundle()Lcom/onyx/android/sdk/universal/editor/UIBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/UIBundle;->getEventHandlerManager()Lcom/onyx/android/sdk/universal/editor/eventhandler/EventHandlerManager;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/handler/LongPressEventHandler;

    invoke-direct {v1, p1, p0}, Lcom/onyx/galaxy/note/editor/handler/LongPressEventHandler;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;)V

    const-string v2, "long_press"

    invoke-virtual {v0, v2, v1}, Lcom/onyx/android/sdk/universal/editor/eventhandler/EventHandlerManager;->registerEventHandler(Ljava/lang/String;Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getUiBundle()Lcom/onyx/android/sdk/universal/editor/UIBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/UIBundle;->getEventHandlerManager()Lcom/onyx/android/sdk/universal/editor/eventhandler/EventHandlerManager;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/handler/EraseEventHandler;

    invoke-direct {v1, p1, p0}, Lcom/onyx/galaxy/note/editor/handler/EraseEventHandler;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;)V

    const-string v2, "erase"

    invoke-virtual {v0, v2, v1}, Lcom/onyx/android/sdk/universal/editor/eventhandler/EventHandlerManager;->registerEventHandler(Ljava/lang/String;Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getUiBundle()Lcom/onyx/android/sdk/universal/editor/UIBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/UIBundle;->getEventHandlerManager()Lcom/onyx/android/sdk/universal/editor/eventhandler/EventHandlerManager;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/handler/RulerHandler;

    invoke-direct {v1, p1, p0}, Lcom/onyx/galaxy/note/editor/handler/RulerHandler;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;)V

    const-string v2, "ruler"

    invoke-virtual {v0, v2, v1}, Lcom/onyx/android/sdk/universal/editor/eventhandler/EventHandlerManager;->registerEventHandler(Ljava/lang/String;Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getUiBundle()Lcom/onyx/android/sdk/universal/editor/UIBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/UIBundle;->getEventHandlerManager()Lcom/onyx/android/sdk/universal/editor/eventhandler/EventHandlerManager;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/handler/InkBeautifyEventHandler;

    invoke-direct {v1, p1, p0}, Lcom/onyx/galaxy/note/editor/handler/InkBeautifyEventHandler;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;)V

    const-string v2, "beautify"

    invoke-virtual {v0, v2, v1}, Lcom/onyx/android/sdk/universal/editor/eventhandler/EventHandlerManager;->registerEventHandler(Ljava/lang/String;Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getUiBundle()Lcom/onyx/android/sdk/universal/editor/UIBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/UIBundle;->getEventHandlerManager()Lcom/onyx/android/sdk/universal/editor/eventhandler/EventHandlerManager;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/handler/TemplateEventHandler;

    invoke-direct {v1, p1, p0}, Lcom/onyx/galaxy/note/editor/handler/TemplateEventHandler;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;)V

    const-string v2, "template"

    invoke-virtual {v0, v2, v1}, Lcom/onyx/android/sdk/universal/editor/eventhandler/EventHandlerManager;->registerEventHandler(Ljava/lang/String;Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getUiBundle()Lcom/onyx/android/sdk/universal/editor/UIBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/UIBundle;->getEventHandlerManager()Lcom/onyx/android/sdk/universal/editor/eventhandler/EventHandlerManager;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/handler/EditorSyncEventHandler;

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->d1:Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;

    invoke-direct {v1, v2, p1}, Lcom/onyx/galaxy/note/editor/handler/EditorSyncEventHandler;-><init>(Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    const-string v2, "sync"

    invoke-virtual {v0, v2, v1}, Lcom/onyx/android/sdk/universal/editor/eventhandler/EventHandlerManager;->registerEventHandler(Ljava/lang/String;Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getUiBundle()Lcom/onyx/android/sdk/universal/editor/UIBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/UIBundle;->getEventHandlerManager()Lcom/onyx/android/sdk/universal/editor/eventhandler/EventHandlerManager;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/handler/EditorAutoReLockHandler;

    invoke-virtual {p2}, Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;->getEditorViewLockLayout()Lcom/onyx/galaxy/note/editor/view/EditorViewAutoReLocLayout;

    move-result-object v2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object v3

    iget-object v3, v3, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->shapeAndTool:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;

    invoke-virtual {v3}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;->getSplitScreenLayout()Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;

    move-result-object v3

    invoke-direct {v1, p1, v2, v3}, Lcom/onyx/galaxy/note/editor/handler/EditorAutoReLockHandler;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/galaxy/note/editor/view/EditorViewAutoReLocLayout;Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;)V

    const-string v2, "editor_encryption"

    invoke-virtual {v0, v2, v1}, Lcom/onyx/android/sdk/universal/editor/eventhandler/EventHandlerManager;->registerEventHandler(Ljava/lang/String;Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getUiBundle()Lcom/onyx/android/sdk/universal/editor/UIBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/UIBundle;->getEventHandlerManager()Lcom/onyx/android/sdk/universal/editor/eventhandler/EventHandlerManager;

    move-result-object v0

    new-instance v8, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;

    invoke-virtual {p2}, Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;->getEditorViewDragLayoutBinding()Lcom/onyx/galaxy/note/databinding/EditorViewDragLayoutBinding;

    move-result-object v3

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v1, v8

    move-object v2, p0

    move-object v4, p1

    invoke-direct/range {v1 .. v7}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;-><init>(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;Lcom/onyx/galaxy/note/databinding/EditorViewDragLayoutBinding;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/EditorBundle;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const-string p0, "magnifier"

    invoke-virtual {v0, p0, v8}, Lcom/onyx/android/sdk/universal/editor/eventhandler/EventHandlerManager;->registerEventHandler(Ljava/lang/String;Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getUiBundle()Lcom/onyx/android/sdk/universal/editor/UIBundle;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/UIBundle;->getEventHandlerManager()Lcom/onyx/android/sdk/universal/editor/eventhandler/EventHandlerManager;

    move-result-object p0

    new-instance v0, Lcom/onyx/galaxy/note/editor/StashEventHandler;

    invoke-direct {v0, p1}, Lcom/onyx/galaxy/note/editor/StashEventHandler;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    const-string v1, "stash"

    invoke-virtual {p0, v1, v0}, Lcom/onyx/android/sdk/universal/editor/eventhandler/EventHandlerManager;->registerEventHandler(Ljava/lang/String;Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getUiBundle()Lcom/onyx/android/sdk/universal/editor/UIBundle;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/UIBundle;->getEventHandlerManager()Lcom/onyx/android/sdk/universal/editor/eventhandler/EventHandlerManager;

    move-result-object p0

    new-instance v0, Lcom/onyx/galaxy/note/editor/handler/TextIndexEventHandler;

    invoke-direct {v0, p1}, Lcom/onyx/galaxy/note/editor/handler/TextIndexEventHandler;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    const-string v1, "text_index"

    invoke-virtual {p0, v1, v0}, Lcom/onyx/android/sdk/universal/editor/eventhandler/EventHandlerManager;->registerEventHandler(Ljava/lang/String;Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getUiBundle()Lcom/onyx/android/sdk/universal/editor/UIBundle;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/UIBundle;->getEventHandlerManager()Lcom/onyx/android/sdk/universal/editor/eventhandler/EventHandlerManager;

    move-result-object p0

    new-instance v0, Lcom/onyx/galaxy/note/editor/handler/MouseEventHandler;

    invoke-direct {v0, p1, p2}, Lcom/onyx/galaxy/note/editor/handler/MouseEventHandler;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;)V

    const-string p1, "mouse"

    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/universal/editor/eventhandler/EventHandlerManager;->registerEventHandler(Ljava/lang/String;Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;)V

    return-void
.end method

.method public final E0(Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;Lcom/onyx/galaxy/note/editor/data/SlideBarType;)Lkotlin/Pair;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;",
            "Lcom/onyx/galaxy/note/editor/data/SlideBarType;",
            ")",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->isVisible(Landroid/view/View;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p0

    sget p1, Lcom/onyx/galaxy/note/R$id;->right_side_bar_layout:I

    if-ne p0, p1, :cond_2

    sget-object p0, Lcom/onyx/galaxy/note/editor/data/SlideBarType;->SLIDE_OUTLINE:Lcom/onyx/galaxy/note/editor/data/SlideBarType;

    if-ne p2, p0, :cond_1

    new-instance p0, Lkotlin/Pair;

    sget p1, Lcom/onyx/galaxy/note/R$anim;->anim_side_bar_left_in:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    sget p2, Lcom/onyx/galaxy/note/R$anim;->anim_side_bar_right_out:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    new-instance p0, Lkotlin/Pair;

    sget p1, Lcom/onyx/galaxy/note/R$anim;->anim_side_bar_right_in:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    sget p2, Lcom/onyx/galaxy/note/R$anim;->anim_side_bar_right_out:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    sget-object p0, Lcom/onyx/galaxy/note/editor/data/SlideBarType;->SLIDE_OUTLINE:Lcom/onyx/galaxy/note/editor/data/SlideBarType;

    if-ne p2, p0, :cond_3

    new-instance p0, Lkotlin/Pair;

    sget p1, Lcom/onyx/galaxy/note/R$anim;->anim_side_bar_right_out:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    sget p2, Lcom/onyx/galaxy/note/R$anim;->anim_side_bar_left_in:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    new-instance p0, Lkotlin/Pair;

    sget p1, Lcom/onyx/galaxy/note/R$anim;->anim_side_bar_left_in:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    sget p2, Lcom/onyx/galaxy/note/R$anim;->anim_side_bar_right_out:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    return-object p0
.end method

.method public final E1()V
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->editorBundle$note_overseasRelease()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->register(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    sget-object v0, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->INSTANCE:Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;

    invoke-virtual {v0, p0}, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->ensureRegister(Ljava/lang/Object;)V

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/GlobalBundle;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->register(Ljava/lang/Object;)V

    sget-object v0, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->INSTANCE:Lcom/onyx/android/sdk/data/account/AccountDataBundle;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public final F0()Lcom/onyx/galaxy/note/editor/event/EditorSideBarInfo;
    .locals 5

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->leftSideBarLayout:Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->isVisible(Landroid/view/View;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->globalVisibleRectF(Landroid/view/View;)Landroid/graphics/RectF;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v2

    :goto_1
    sget-object v1, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$createEditorSideBarInfo$leftSideBarRect$2;->INSTANCE:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$createEditorSideBarInfo$leftSideBarRect$2;

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/base/extension/AnyKt;->getOrElse(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->rightSideBarLayout:Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;

    invoke-static {v1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->isVisible(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    move-object v1, v2

    :goto_2
    if-eqz v1, :cond_3

    invoke-static {v1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->globalVisibleRectF(Landroid/view/View;)Landroid/graphics/RectF;

    move-result-object v2

    :cond_3
    sget-object v1, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$createEditorSideBarInfo$rightSideBarRect$2;->INSTANCE:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$createEditorSideBarInfo$rightSideBarRect$2;

    invoke-static {v2, v1}, Lcom/onyx/android/sdk/base/extension/AnyKt;->getOrElse(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/RectF;

    new-instance v2, Lcom/onyx/galaxy/note/editor/event/EditorSideBarInfo;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object v3

    iget-object v3, v3, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->shapeAndTool:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;

    invoke-virtual {v3}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutShpaeAndToolContainerBinding;

    move-result-object v3

    iget-object v3, v3, Lcom/onyx/galaxy/note/databinding/LayoutShpaeAndToolContainerBinding;->flShapeContent:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/view/View;->getTranslationX()F

    move-result v3

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->shapeAndTool:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutShpaeAndToolContainerBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/LayoutShpaeAndToolContainerBinding;->flShapeContent:Landroid/widget/FrameLayout;

    const-string v4, "flShapeContent"

    invoke-static {p0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->globalVisibleRectF(Landroid/view/View;)Landroid/graphics/RectF;

    move-result-object p0

    invoke-direct {v2, v3, p0, v1, v0}, Lcom/onyx/galaxy/note/editor/event/EditorSideBarInfo;-><init>(FLandroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    return-object v2
.end method

.method public final F1()V
    .locals 1

    sget-object p0, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/GlobalBundle;

    new-instance v0, Lcom/onyx/galaxy/note/editor/event/RegisterKeyboardHelperEvent;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/editor/event/RegisterKeyboardHelperEvent;-><init>()V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->postEvent(Ljava/lang/Object;)V

    return-void
.end method

.method public final G0(Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;Lcom/onyx/galaxy/note/editor/data/SlideBarType;)Landroidx/fragment/app/Fragment;
    .locals 3

    sget-object v0, Lcom/onyx/galaxy/note/editor/data/SlideBarType;->SLIDE_OUTLINE:Lcom/onyx/galaxy/note/editor/data/SlideBarType;

    if-ne p2, v0, :cond_0

    new-instance v0, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;-><init>()V

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->d1:Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->focusEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->setEditBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->I0()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->setDocManagerBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;->getCurrentLevel()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->setCurrentVisibleLevel(I)V

    new-instance v1, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$createFragment$noteOutlineFragment$1$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$createFragment$noteOutlineFragment$1$1;-><init>(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;Lcom/onyx/galaxy/note/editor/data/SlideBarType;)V

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->setCloseAction(Lkotlin/jvm/functions/Function0;)V

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->tabLayout:Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;->getSelectedItem()Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    new-instance v1, Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment;

    invoke-direct {v1}, Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment;-><init>()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->editorBundle$note_overseasRelease()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment;->setEditBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->I0()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment;->setDocManagerBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->f1:Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment;->setSyncNoteModel(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V

    invoke-virtual {v1, v0}, Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment;->setNoteTabData(Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;)V

    new-instance v0, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$createFragment$noteSettingMoreFragment$1$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$createFragment$noteSettingMoreFragment$1$1;-><init>(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;Lcom/onyx/galaxy/note/editor/data/SlideBarType;)V

    invoke-virtual {v1, v0}, Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment;->setCloseAction(Lkotlin/jvm/functions/Function0;)V

    new-instance p1, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$createFragment$noteSettingMoreFragment$1$2;

    invoke-direct {p1, p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$createFragment$noteSettingMoreFragment$1$2;-><init>(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;)V

    invoke-virtual {v1, p1}, Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment;->setListener(Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment$NoteDocMoreSettingsListener;)V

    return-object v1
.end method

.method public final G1(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->editorBundle$note_overseasRelease()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->docId(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "note_id"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->INSTANCE:Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;

    new-instance v1, Lcom/onyx/android/sdk/data/OnyxStatisticEvent;

    invoke-direct {v1, p1, v0}, Lcom/onyx/android/sdk/data/OnyxStatisticEvent;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {p0, v1}, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->postEvent(Ljava/lang/Object;)V

    return-void
.end method

.method public final H0()V
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->editorBundle$note_overseasRelease()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/events/note/DismissShapeSelectionStyleMenuEvent;

    invoke-direct {v0}, Lcom/onyx/android/sdk/universal/editor/events/note/DismissShapeSelectionStyleMenuEvent;-><init>()V

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    return-void
.end method

.method public final H1(ZLcom/onyx/galaxy/note/editor/data/SlideBarType;)V
    .locals 0

    sget-object p1, Lcom/onyx/galaxy/note/editor/data/SlideBarType;->SLIDE_OUTLINE:Lcom/onyx/galaxy/note/editor/data/SlideBarType;

    if-ne p2, p1, :cond_0

    const-string p1, "click_galaxy_sidebar_0001"

    goto :goto_0

    :cond_0
    const-string p1, "click_galaxy_docsSetting_0001"

    :goto_0
    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->G1(Ljava/lang/String;)V

    return-void
.end method

.method public final I0()Lcom/onyx/android/sdk/universal/editor/EditorBundle;
    .locals 0

    sget-object p0, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->INSTANCE:Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->docManagerBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    return-object p0
.end method

.method public final I1()V
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->editorBundle$note_overseasRelease()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    new-instance v0, Lcom/onyx/android/sdk/universal/common/events/ResetPenBoxPositionEvent;

    invoke-direct {v0}, Lcom/onyx/android/sdk/universal/common/events/ResetPenBoxPositionEvent;-><init>()V

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    return-void
.end method

.method public final J0()V
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->editorBundle$note_overseasRelease()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->x1(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->editorBundle$note_overseasRelease()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->z1(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->d1:Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->isEnabledSplitScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->d1:Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->unfocusedEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->x1(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->z1(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->editorBundle$note_overseasRelease()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/events/note/RestoreUserProviderEvent;

    invoke-direct {v0}, Lcom/onyx/android/sdk/universal/editor/events/note/RestoreUserProviderEvent;-><init>()V

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    return-void
.end method

.method public final J1(Landroid/os/Bundle;)V
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getViewModel()Lcom/onyx/galaxy/note/editor/viewmodel/NoteScribbleViewModel;

    move-result-object p0

    const-string v0, "take_picture"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/viewmodel/NoteScribbleViewModel;->setTakePicturePath(Ljava/lang/String;)V

    return-void
.end method

.method public final K0(Lcom/onyx/galaxy/note/editor/data/SlideBarType;)Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;
    .locals 2

    sget-object v0, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->INSTANCE:Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->getNoteEditConfigInfo()Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;->getShortcutBarData()Lcom/onyx/galaxy/note/editor/data/ShortcutBarData;

    move-result-object v0

    invoke-static {p1}, Lcom/onyx/galaxy/note/editor/data/SlideBarTypeKt;->toShortcutType(Lcom/onyx/galaxy/note/editor/data/SlideBarType;)Lcom/onyx/galaxy/note/editor/data/ShortcutType;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/onyx/galaxy/note/editor/data/ShortcutBarData;->isLeftSideShortcut(Lcom/onyx/galaxy/note/editor/data/ShortcutType;Z)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->L0(Z)Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;

    move-result-object p0

    return-object p0
.end method

.method public final K1(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->tabLayout:Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;

    invoke-virtual {v0, p1}, Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;->setSelectedItem(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->tabLayout:Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;->getSelectedItem()Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->d2(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final L0(Z)Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->leftSideBarLayout:Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->rightSideBarLayout:Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    :goto_0
    return-object p0
.end method

.method public final L1(ZLcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;Lcom/onyx/galaxy/note/editor/data/SlideBarType;)V
    .locals 5

    iget-boolean v0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->h1:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v2

    :goto_1
    sget-object v3, Lcom/onyx/android/sdk/universal/editor/feature/touch/TouchModeFeatureManager;->Companion:Lcom/onyx/android/sdk/universal/editor/feature/touch/TouchModeFeatureManager$Companion;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/universal/editor/feature/touch/TouchModeFeatureManager$Companion;->isCurTouchModeSupportEdit()Z

    move-result v3

    if-nez v0, :cond_4

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->shapeAndTool:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;->getToolDragView()Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->isToolbarAlignedWithSidebar(Lcom/onyx/galaxy/note/editor/data/SlideBarType;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, v1}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->U0(Z)V

    :cond_3
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->editorBundle$note_overseasRelease()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    new-instance v4, Lcom/onyx/galaxy/note/editor/event/VisiblePenBoxEvent;

    invoke-direct {v4, p3, v2}, Lcom/onyx/galaxy/note/editor/event/VisiblePenBoxEvent;-><init>(Lcom/onyx/galaxy/note/editor/data/SlideBarType;Z)V

    invoke-static {v0, v4}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    :cond_4
    if-eqz p1, :cond_6

    invoke-virtual {p2}, Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;->reset()V

    sget-object v0, Lcom/onyx/galaxy/note/editor/data/SlideBarType;->SLIDE_OUTLINE:Lcom/onyx/galaxy/note/editor/data/SlideBarType;

    if-ne p3, v0, :cond_5

    move v0, v1

    goto :goto_2

    :cond_5
    move v0, v2

    :goto_2
    invoke-virtual {p2, v0}, Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;->setEnableDrag(Z)V

    :cond_6
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->C0(ZLcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;Lcom/onyx/galaxy/note/editor/data/SlideBarType;)V

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v4

    if-lez v4, :cond_7

    goto :goto_3

    :cond_7
    move v1, v2

    :goto_3
    if-eqz v1, :cond_8

    goto :goto_4

    :cond_8
    const/4 v0, 0x0

    :goto_4
    sget-object v1, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$showSideBarLayout$width$2;->INSTANCE:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$showSideBarLayout$width$2;

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/base/extension/AnyKt;->getOrElse(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v1

    sget v2, Lcom/onyx/galaxy/note/R$id;->right_side_bar_layout:I

    if-ne v1, v2, :cond_9

    mul-int/lit8 v0, v0, -0x1

    :cond_9
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->leftSideBarLayout:Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;

    const-string v2, "leftSideBarLayout"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/onyx/galaxy/note/common/extension/ViewExtKt;->isLayoutDirectionRtl(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_a

    mul-int/lit8 v0, v0, -0x1

    :cond_a
    invoke-virtual {p0, p1, v0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->B0(ZI)V

    new-instance p1, Lcom/sunia/HTREnginev2/l1k;

    invoke-direct {p1, v3, p0, p3, p2}, Lcom/sunia/HTREnginev2/l1k;-><init>(ZLcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;Lcom/onyx/galaxy/note/editor/data/SlideBarType;Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;)V

    const-wide/16 v0, 0x1f4

    sget p3, Lcom/onyx/galaxy/note/R$id;->tag_sidebar_animation_done_runnable:I

    invoke-static {p2, p1, v0, v1, p3}, Lcom/onyx/android/sdk/base/extension/ViewKt;->postDelayedLastTaskWithTag(Landroid/view/View;Ljava/lang/Runnable;JI)V

    invoke-virtual {p0, p2}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->f2(Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;)V

    return-void
.end method

.method public final M0(FF)Landroid/graphics/PointF;
    .locals 7

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->leftSideBarLayout:Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;

    const-string v1, "leftSideBarLayout"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    const/4 v4, 0x0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move p1, v4

    :goto_1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->rightSideBarLayout:Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;

    const-string v5, "rightSideBarLayout"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    if-eqz v2, :cond_3

    goto :goto_3

    :cond_3
    move p2, v4

    :goto_3
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->leftSideBarLayout:Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/onyx/galaxy/note/common/extension/ViewExtKt;->isLayoutDirectionRtl(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_4

    move v6, p2

    move p2, p1

    move p1, v6

    :cond_4
    new-instance p0, Landroid/graphics/PointF;

    invoke-direct {p0, p1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p0
.end method

.method public final N0(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/data/common/data/GuideInfo;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/data/common/data/GuideInfo;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/common/data/GuideInfo;->getEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    new-instance v0, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$handleDragToolGuidePopup$1;

    invoke-direct {v0, p0, p1}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$handleDragToolGuidePopup$1;-><init>(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;Lcom/onyx/android/sdk/data/common/data/GuideInfo;)V

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/base/extension/FragmentKt;->requireContextSafety(Landroidx/fragment/app/Fragment;Lkotlin/jvm/functions/Function1;)V

    :cond_1
    return-void
.end method

.method public final N1()V
    .locals 4

    new-instance v0, Lcom/onyx/galaxy/note/common/action/LoadGuideInfoAction;

    const-string v1, "guide_open_two_notes"

    const-wide/16 v2, 0x1f4

    invoke-direct {v0, v1, v2, v3}, Lcom/onyx/galaxy/note/common/action/LoadGuideInfoAction;-><init>(Ljava/lang/String;J)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v1, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$showTabLayoutGuide$1;->INSTANCE:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$showTabLayoutGuide$1;

    new-instance v2, Lcom/sunia/HTREnginev2/k1k;

    invoke-direct {v2, p0}, Lcom/sunia/HTREnginev2/k1k;-><init>(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;)V

    invoke-static {v0, v1, v2}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->doOnNextIf(Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final O0()V
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->leftSideBarLayout:Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->rightSideBarLayout:Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->X1(FF)V

    invoke-virtual {p0, v0, v1}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->W1(FF)V

    invoke-virtual {p0, v0, v1}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->U1(FF)V

    return-void
.end method

.method public final P0(Lcom/onyx/galaxy/note/editor/data/ShortcutType;Z)V
    .locals 1

    sget-object v0, Lcom/onyx/galaxy/note/editor/data/ShortcutType;->SHORTCUT_NOTE_OVERVIEW:Lcom/onyx/galaxy/note/editor/data/ShortcutType;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->Q0(Z)V

    :cond_0
    return-void
.end method

.method public final P1()V
    .locals 4

    new-instance v0, Lcom/onyx/galaxy/note/common/action/LoadGuideInfoAction;

    const-string v1, "guide_page_white_space"

    const-wide/16 v2, 0x3e8

    invoke-direct {v0, v1, v2, v3}, Lcom/onyx/galaxy/note/common/action/LoadGuideInfoAction;-><init>(Ljava/lang/String;J)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$showWhiteSpaceGuide$1;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$showWhiteSpaceGuide$1;-><init>(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;)V

    new-instance v2, Lcom/sunia/HTREnginev2/g1k;

    invoke-direct {v2, p0}, Lcom/sunia/HTREnginev2/g1k;-><init>(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;)V

    invoke-static {v0, v1, v2}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->doOnNextIf(Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final Q0(Z)V
    .locals 1

    new-instance v0, Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;-><init>()V

    invoke-virtual {v0, p1}, Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;->setLocationOnLeft(Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->editorBundle$note_overseasRelease()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;->setEditorBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    new-instance p1, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$handleNoteOverview$1;

    invoke-direct {p1, p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$handleNoteOverview$1;-><init>(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;)V

    invoke-virtual {v0, p1}, Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;->setDragListener(Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment$DragListenerDelegateListener;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-class p1, Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;

    invoke-static {p1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p1

    invoke-interface {p1}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public final R0()Z
    .locals 3

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->leftSideBarLayout:Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;

    const-string v1, "leftSideBarLayout"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->rightSideBarLayout:Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;

    const-string v0, "rightSideBarLayout"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_1

    move p0, v1

    goto :goto_1

    :cond_1
    move p0, v2

    :goto_1
    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :cond_3
    :goto_2
    return v1
.end method

.method public final R1(Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;Lcom/onyx/galaxy/note/editor/data/SlideBarType;)V
    .locals 3

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getViewModel()Lcom/onyx/galaxy/note/editor/viewmodel/NoteScribbleViewModel;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/onyx/galaxy/note/editor/viewmodel/NoteScribbleViewModel;->setSlideBarType(Lcom/onyx/galaxy/note/editor/data/SlideBarType;)V

    sget-object v0, Lcom/onyx/galaxy/note/editor/data/SlideBarType;->SLIDE_OUTLINE:Lcom/onyx/galaxy/note/editor/data/SlideBarType;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p2, v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    invoke-virtual {p0, v1, p2}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->H1(ZLcom/onyx/galaxy/note/editor/data/SlideBarType;)V

    invoke-virtual {p0, v1, p1, p2}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->L1(ZLcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;Lcom/onyx/galaxy/note/editor/data/SlideBarType;)V

    return-void
.end method

.method public final S0()V
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->inputTextLayout:Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrInvisible(Landroid/view/View;Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->inputTextLayout:Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;->getTextInputHelper()Lcom/onyx/android/sdk/universal/editor/helper/TextInputHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/helper/TextInputHelper;->getTextBoxView()Lcom/onyx/android/sdk/textbox/widget/TextBoxView;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrInvisible(Landroid/view/View;Z)V

    return-void
.end method

.method public final S1(ZLcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;Lcom/onyx/galaxy/note/editor/data/SlideBarType;)V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    const-class v1, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    sget-object p1, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "scribble fragment not been attached yet, or maybe is detached:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p2, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v1, p0, p2}, Lcom/onyx/android/sdk/base/utils/Debug;->w(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isStateSaved()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-string p1, "scribble fragment is state saved don\'t perform onSaveInstanceState"

    new-array p2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v1, p1, p2}, Lcom/onyx/android/sdk/base/utils/Debug;->w(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    if-eqz p1, :cond_5

    invoke-virtual {p0, p2, p3}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->G0(Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;Lcom/onyx/galaxy/note/editor/data/SlideBarType;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0, p2, p3}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->E0(Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;Lcom/onyx/galaxy/note/editor/data/SlideBarType;)Lkotlin/Pair;

    move-result-object v0

    invoke-virtual {p2, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    const-string v1, "beginTransaction(...)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Landroidx/fragment/app/FragmentTransaction;->setCustomAnimations(II)Landroidx/fragment/app/FragmentTransaction;

    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->commitNow()V

    sget-object p0, Lcom/onyx/galaxy/note/editor/data/SlideBarType;->SLIDE_OUTLINE:Lcom/onyx/galaxy/note/editor/data/SlideBarType;

    if-ne p3, p0, :cond_4

    const/4 v2, 0x1

    :cond_4
    invoke-virtual {p2, v2}, Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;->setEnableDrag(Z)V

    goto :goto_1

    :cond_5
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    instance-of p3, p1, Landroidx/fragment/app/Fragment;

    const/4 v0, 0x0

    if-eqz p3, :cond_6

    check-cast p1, Landroidx/fragment/app/Fragment;

    goto :goto_0

    :cond_6
    move-object p1, v0

    :goto_0
    if-nez p1, :cond_7

    return-void

    :cond_7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public final T0()V
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->editorBundle$note_overseasRelease()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    new-instance v0, Lcom/onyx/android/sdk/universal/common/events/HidePenBoxEvent;

    invoke-direct {v0}, Lcom/onyx/android/sdk/universal/common/events/HidePenBoxEvent;-><init>()V

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    return-void
.end method

.method public final T1()V
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->editorBundle$note_overseasRelease()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->unregister(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    sget-object v0, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->INSTANCE:Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;

    invoke-virtual {v0, p0}, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->ensureUnRegister(Ljava/lang/Object;)V

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/GlobalBundle;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->unregister(Ljava/lang/Object;)V

    sget-object v0, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->INSTANCE:Lcom/onyx/android/sdk/data/account/AccountDataBundle;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public final U0(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->shapeAndTool:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;->getToolDragView()Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;

    move-result-object p0

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrGone(Landroid/view/View;Z)V

    return-void
.end method

.method public final U1(FF)V
    .locals 3

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->leftSideBarLayout:Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;

    const-string v1, "leftSideBarLayout"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->rightSideBarLayout:Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;

    const-string v0, "rightSideBarLayout"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    if-eqz v1, :cond_3

    neg-float p1, p2

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    :goto_2
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->shapeAndTool:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;

    invoke-virtual {p2}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;->getDragEffectView()Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;

    move-result-object p2

    invoke-static {p2}, Lcom/onyx/galaxy/note/common/extension/ViewExtKt;->isLayoutDirectionRtl(Landroid/view/View;)Z

    move-result p2

    if-eqz p2, :cond_4

    const/4 p2, -0x1

    int-to-float p2, p2

    mul-float/2addr p1, p2

    :cond_4
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->shapeAndTool:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;->getDragEffectView()Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;->updateTranslateXOffset(F)V

    return-void
.end method

.method public final V0()V
    .locals 6

    new-instance v0, Lcom/onyx/galaxy/note/editor/action/counter/RecoverCounterStateAction;

    sget-object p0, Lcom/onyx/galaxy/note/editor/ui/CounterBundle;->Companion:Lcom/onyx/galaxy/note/editor/ui/CounterBundle$Companion;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/CounterBundle$Companion;->getDefaultBundle()Lcom/onyx/galaxy/note/editor/ui/CounterBundle;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/editor/action/counter/RecoverCounterStateAction;-><init>(Lcom/onyx/galaxy/note/editor/ui/CounterBundle;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->execute$default(Lcom/onyx/android/sdk/base/rx/RxBaseAction;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final V1(ZLcom/onyx/galaxy/note/editor/view/toolbar/DockType;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->shapeAndTool:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;->getDragEffectView()Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;->updateEffect(ZLcom/onyx/galaxy/note/editor/view/toolbar/DockType;)V

    return-void
.end method

.method public final W0()V
    .locals 4

    new-instance v0, Lcom/onyx/galaxy/note/common/action/LoadGuideInfoAction;

    const-string v1, "guide_drag_tool"

    const-wide/16 v2, 0x1f4

    invoke-direct {v0, v1, v2, v3}, Lcom/onyx/galaxy/note/common/action/LoadGuideInfoAction;-><init>(Ljava/lang/String;J)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$i;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$i;-><init>(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final W1(FF)V
    .locals 7

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->leftSideBarLayout:Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;

    const-string v1, "leftSideBarLayout"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    const/4 v4, 0x0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move p1, v4

    :goto_1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->rightSideBarLayout:Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;

    const-string v5, "rightSideBarLayout"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    if-eqz v2, :cond_3

    goto :goto_3

    :cond_3
    move p2, v4

    :goto_3
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->leftSideBarLayout:Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/onyx/galaxy/note/common/extension/ViewExtKt;->isLayoutDirectionRtl(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v6, p2

    move p2, p1

    move p1, v6

    :cond_4
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->shapeAndTool:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;->getToolDragView()Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->updateSideBarWidth(FF)V

    return-void
.end method

.method public final X0()V
    .locals 4

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->d1:Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->getFirstEditorViewHandler()Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-string v2, "requireActivity(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;->attachActivity(Landroid/app/Activity;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->shapeAndTool:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;->getEditorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;->initEditorView(Landroid/view/View;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->shapeAndTool:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutShpaeAndToolContainerBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/LayoutShpaeAndToolContainerBinding;->splitScreen:Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->getBinding()Lcom/onyx/galaxy/note/databinding/SplitScreenLayoutBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/SplitScreenLayoutBinding;->editorViewDragLayout:Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;

    const-string v3, "editorViewDragLayout"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->D1(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->d1:Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->getSecondEditorViewHandler()Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;->attachActivity(Landroid/app/Activity;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->shapeAndTool:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;->getEditorView2()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;->initEditorView(Landroid/view/View;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->shapeAndTool:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutShpaeAndToolContainerBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/LayoutShpaeAndToolContainerBinding;->splitScreen:Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->getBinding()Lcom/onyx/galaxy/note/databinding/SplitScreenLayoutBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/SplitScreenLayoutBinding;->editorViewDragLayout2:Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;

    const-string v2, "editorViewDragLayout2"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->D1(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->editorContainer:Lcom/onyx/android/sdk/theme/widgets/TintRelativeLayout;

    const-string v1, "editorContainer"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$initEditorView$3;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$initEditorView$3;-><init>(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;)V

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->addOnLayoutChangeListener(Landroid/view/View;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public final X1(FF)V
    .locals 4

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->shapeAndTool:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;->getToolDragView()Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->getDockType()Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->rightSideBarLayout:Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;

    const-string v2, "rightSideBarLayout"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v3, 0x0

    if-eqz v1, :cond_2

    sget-object v1, Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;->RIGHT:Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->rightSideBarLayout:Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/onyx/galaxy/note/common/extension/ViewExtKt;->isLayoutDirectionRtl(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_1

    neg-float v3, p2

    :cond_1
    sget-object v1, Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;->LEFT:Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->rightSideBarLayout:Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/onyx/galaxy/note/common/extension/ViewExtKt;->isLayoutDirectionRtl(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    move p2, v3

    :goto_1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->leftSideBarLayout:Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;

    invoke-static {v1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->isVisible(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;->LEFT:Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    if-ne v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->rightSideBarLayout:Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/onyx/galaxy/note/common/extension/ViewExtKt;->isLayoutDirectionRtl(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_3

    move p2, p1

    :cond_3
    sget-object v1, Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;->RIGHT:Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    if-ne v0, v1, :cond_4

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->leftSideBarLayout:Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;

    const-string v1, "leftSideBarLayout"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/onyx/galaxy/note/common/extension/ViewExtKt;->isLayoutDirectionRtl(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_4

    neg-float p2, p1

    :cond_4
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->shapeAndTool:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;->getToolDragView()Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->updateTranslateXOffset(F)V

    return-void
.end method

.method public final Y0()V
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->funcLayout:Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->editorBundle$note_overseasRelease()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->setEditorBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->funcLayout:Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->I0()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->setDocManagerBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->funcLayout:Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->getIvTabIndicator()Lcom/onyx/galaxy/note/editor/view/PalmCollectionImageView;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/i1k;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/i1k;-><init>(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->funcLayout:Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;

    new-instance v1, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$initFuncToolView$2;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$initFuncToolView$2;-><init>(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;)V

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->setToggleSideBarLayoutFunc(Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->funcLayout:Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;

    new-instance v1, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$initFuncToolView$3;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$initFuncToolView$3;-><init>(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;)V

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->setFunctionToolListener(Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout$FunctionToolListener;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->funcLayout:Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;

    new-instance v1, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$initFuncToolView$4;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$initFuncToolView$4;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->setGetEditorContainerRectFunc(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final Y1()V
    .locals 10

    sget-object v0, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->INSTANCE:Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;

    new-instance v9, Lcom/onyx/galaxy/note/editor/event/ChangeScrollerConfigEvent;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->shapeAndTool:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;->getToolDragView()Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->getToolContainer()Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->globalVisibleRect(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1d

    const/4 v8, 0x0

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lcom/onyx/galaxy/note/editor/event/ChangeScrollerConfigEvent;-><init>(Ljava/lang/Boolean;Ljava/lang/Integer;Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/lang/Float;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, v9}, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->postEvent(Ljava/lang/Object;)V

    return-void
.end method

.method public final Z1(I)V
    .locals 1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->topBarGradientView:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    sget v0, Lcom/onyx/android/sdk/skin/R$drawable;->shape_theme_popup_title_bg:I

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/theme/widgets/TintImageView;->setBackgroundResource(I)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->funcLayout:Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutFunctionToolBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/LayoutFunctionToolBinding;->autoLayout:Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;

    sget v0, Lcom/onyx/android/sdk/skin/R$color;->theme_background_function_layout_color:I

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;->setBackgroundResource(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->topBarGradientView:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    sget v0, Lcom/onyx/android/sdk/skin/R$drawable;->shape_theme_popup_title_bg_hidden:I

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/theme/widgets/TintImageView;->setBackgroundResource(I)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->funcLayout:Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutFunctionToolBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/LayoutFunctionToolBinding;->autoLayout:Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;

    sget v0, Lcom/onyx/galaxy/note/R$color;->transparent:I

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;->setBackgroundResource(I)V

    :goto_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->funcLayout:Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;

    new-instance v0, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$updateFunctionLayoutUi$1;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$updateFunctionLayoutUi$1;-><init>(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;)V

    invoke-static {p1, v0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->postSelf(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final a1(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V
    .locals 2

    sget-object v0, Lcom/onyx/galaxy/note/utils/GuideUtils;->INSTANCE:Lcom/onyx/galaxy/note/utils/GuideUtils;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/utils/GuideUtils;->isDragToolGuideNeed()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->W0()V

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/onyx/galaxy/note/utils/GuideUtils;->isPageWhiteSpaceGuideNeed()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->m1(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->P1()V

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/onyx/galaxy/note/utils/GuideUtils;->isOpenTwoNotesNeed()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->N1()V

    :cond_2
    return-void
.end method

.method public final a2()V
    .locals 7

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getEditorViewOffsetLocation()[I

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->inputTextLayout:Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;->getTextInputHelper()Lcom/onyx/android/sdk/universal/editor/helper/TextInputHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/helper/TextInputHelper;->getOffset()[I

    move-result-object v1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object v2

    iget-object v2, v2, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->inputTextLayout:Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;

    invoke-virtual {v2}, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;->getTextInputHelper()Lcom/onyx/android/sdk/universal/editor/helper/TextInputHelper;

    move-result-object v2

    const/4 v3, 0x0

    aget v4, v0, v3

    const/4 v5, 0x1

    aget v6, v0, v5

    invoke-virtual {v2, v4, v6}, Lcom/onyx/android/sdk/universal/editor/helper/TextInputHelper;->setOffset(II)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->shapeAndTool:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;->getTextBoxView()Lcom/onyx/android/sdk/textbox/widget/TextBoxView;

    move-result-object p0

    aget v2, v0, v3

    aget v3, v1, v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    aget v0, v0, v5

    aget v1, v1, v5

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p0, v2, v0}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->updatePosition(FF)V

    return-void
.end method

.method public final b1()V
    .locals 4

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/helper/TextInputHelper;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->editorBundle$note_overseasRelease()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object v2

    iget-object v2, v2, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->shapeAndTool:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;

    invoke-virtual {v2}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;->getTextBoxView()Lcom/onyx/android/sdk/textbox/widget/TextBoxView;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/universal/editor/helper/TextInputHelper;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/textbox/widget/TextBoxView;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getEditorViewOffsetLocation()[I

    move-result-object v1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object v2

    iget-object v2, v2, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->inputTextLayout:Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;

    const-string v3, "inputTextLayout"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/universal/editor/helper/TextInputHelper;->setToolView(Landroid/view/View;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/helper/TextInputHelper;->initRichListener()V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/universal/editor/helper/TextInputHelper;->activateEventListening(Z)V

    const/4 v3, 0x0

    aget v3, v1, v3

    aget v1, v1, v2

    invoke-virtual {v0, v3, v1}, Lcom/onyx/android/sdk/universal/editor/helper/TextInputHelper;->setOffset(II)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->inputTextLayout:Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->editorBundle$note_overseasRelease()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;->setEditorBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->inputTextLayout:Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;

    invoke-virtual {v1, v0}, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;->setTextInputHelper(Lcom/onyx/android/sdk/universal/editor/helper/TextInputHelper;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->inputTextLayout:Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;->active()V

    return-void
.end method

.method public final b2()V
    .locals 3

    sget-object v0, Lcom/onyx/android/sdk/device/DeviceFactory;->INSTANCE:Lcom/onyx/android/sdk/device/DeviceFactory;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/device/DeviceFactory;->getNotchDevice()Lcom/onyx/android/sdk/device/INotch;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-string v2, "requireActivity(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$updateNotch$1;

    invoke-direct {v2, p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$updateNotch$1;-><init>(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;)V

    invoke-interface {v0, v1, v2}, Lcom/onyx/android/sdk/device/INotch;->getNotchRect(Landroid/app/Activity;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public final c1()V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->b2()V

    return-void
.end method

.method public final c2(Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->editorBundle$note_overseasRelease()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/doc/LoadNoteModelAction;

    invoke-direct {v1, v0, p1}, Lcom/onyx/android/sdk/universal/editor/action/doc/LoadNoteModelAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$q;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$q;-><init>(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "doOnNext(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final closeSelectionMenu$note_overseasRelease()V
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getSelectionMenuView$note_overseasRelease()Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getSelectionMenuView$note_overseasRelease()Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->cancel()V

    :cond_0
    return-void
.end method

.method public final d1()V
    .locals 2

    const-class v0, Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/base/extension/FragmentKt;->getViewModel(Landroidx/fragment/app/Fragment;Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->setPenViewModel$note_overseasRelease(Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->shapeAndTool:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getPenViewModel$note_overseasRelease()Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;->bindPenViewModel(Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getPenViewModel$note_overseasRelease()Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;->loadConfig()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getPenViewModel$note_overseasRelease()Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;->getDockType()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->g2(Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;)V

    return-void
.end method

.method public final d2(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->c2(Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$r;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$r;-><init>(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$s;

    invoke-direct {v1, p0, p1}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$s;-><init>(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final e1()V
    .locals 3

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->shapeAndTool:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->editorBundle$note_overseasRelease()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;->setEditorBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getSelectionMenuView$note_overseasRelease()Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->editorBundle$note_overseasRelease()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->setEditorBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "getParentFragmentManager(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->setFragmentManager(Landroidx/fragment/app/FragmentManager;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->shapeAndTool:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;->getToolDragView()Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$initShapeToolView$1;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$initShapeToolView$1;-><init>(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;)V

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->setOnDragListener(Lcom/onyx/galaxy/note/editor/view/toolbar/OnShapeToolDragListener;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->shapeAndTool:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;->getToolDragView()Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$initShapeToolView$2;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$initShapeToolView$2;-><init>(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;)V

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->setAnimateCallBack(Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView$AnimateCallBack;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->shapeAndTool:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;

    new-instance v1, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$initShapeToolView$3;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$initShapeToolView$3;-><init>(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;)V

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;->setEditorContainerChangeCallback(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final e2(ZLcom/onyx/galaxy/note/editor/view/toolbar/DockType;)V
    .locals 3

    if-eqz p1, :cond_0

    return-void

    :cond_0
    sget-object p1, Lcom/onyx/android/sdk/universal/editor/feature/touch/TouchModeFeatureManager;->Companion:Lcom/onyx/android/sdk/universal/editor/feature/touch/TouchModeFeatureManager$Companion;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/feature/touch/TouchModeFeatureManager$Companion;->isCurTouchModeSupportEdit()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    sget-object v1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v2, Lcom/onyx/galaxy/note/R$dimen;->drag_tool_height:I

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result v1

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    if-eqz p1, :cond_2

    sget-object p1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v2, Lcom/onyx/galaxy/note/R$dimen;->drag_tool_width:I

    invoke-virtual {p1, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result p1

    goto :goto_1

    :cond_2
    move p1, v0

    :goto_1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->shapeAndTool:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutShpaeAndToolContainerBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/LayoutShpaeAndToolContainerBinding;->flShapeContent:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    const-string v2, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    sget-object v2, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v2, p2

    const/4 v2, 0x1

    if-eq p2, v2, :cond_6

    const/4 v2, 0x2

    if-eq p2, v2, :cond_5

    const/4 v1, 0x3

    if-eq p2, v1, :cond_4

    const/4 v1, 0x4

    if-eq p2, v1, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p0, v0, v0, p1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto :goto_2

    :cond_4
    invoke-virtual {p0, p1, v0, v0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto :goto_2

    :cond_5
    invoke-virtual {p0, v0, v0, v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto :goto_2

    :cond_6
    invoke-virtual {p0, v0, v1, v0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    :goto_2
    return-void
.end method

.method public final editorBundle$note_overseasRelease()Lcom/onyx/android/sdk/universal/editor/EditorBundle;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->d1:Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->focusEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    return-object p0
.end method

.method public final ensureSwitchUserTool$note_overseasRelease(Lcom/onyx/galaxy/note/editor/data/ShapeToolType;)V
    .locals 3
    .param p1    # Lcom/onyx/galaxy/note/editor/data/ShapeToolType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "toolType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getPenViewModel$note_overseasRelease()Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;->getPenType()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getPenViewModel$note_overseasRelease()Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;->getShapeToolHandlerMap()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown shape tool type "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/data/ShapeToolType;->getShapeType()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", use dummy provider"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/blankj/utilcode/util/LogUtils;->file(Ljava/lang/Object;)V

    const-string p0, "dummy"

    :cond_0
    sget-object v0, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->INSTANCE:Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/events/note/ActivateShapeHandlerEvent;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/data/ShapeToolType;->getShapeType()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2, p1}, Lcom/onyx/android/sdk/universal/editor/events/note/ActivateShapeHandlerEvent;-><init>(Ljava/lang/String;ZLjava/lang/Integer;)V

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->postEvent(Ljava/lang/Object;)V

    return-void
.end method

.method public exitSplitScreen(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "goneView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->shapeAndTool:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;->getSplitScreenLayout()Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->exitSplitScreen(Landroid/view/View;)V

    return-void
.end method

.method public final f1()V
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->leftSideBarLayout:Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;

    const-string v1, "leftSideBarLayout"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->g1(Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->rightSideBarLayout:Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;

    const-string v1, "rightSideBarLayout"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->g1(Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;)V

    return-void
.end method

.method public final f2(Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;)V
    .locals 3

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getScreenWidth()F

    move-result v1

    sget v2, Lcom/onyx/galaxy/note/R$dimen;->sidebar_max_draggable_extra_size:I

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v1, v0

    float-to-int v0, v1

    invoke-virtual {p1, v0}, Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;->setMaxDraggableWidth(I)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->i2(Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;)V

    return-void
.end method

.method public final g1(Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;)V
    .locals 6

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/onyx/galaxy/note/R$id;->left_side_bar_layout:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    sget-object v1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v4, Lcom/onyx/galaxy/note/R$dimen;->side_bar_layout_width:I

    invoke-virtual {v1, v4}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {p1, v4}, Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;->setDefaultWidth(I)V

    sget v4, Lcom/onyx/galaxy/note/R$dimen;->side_bar_collapse_threshold:I

    invoke-virtual {v1, v4}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {p1, v4}, Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;->setCollapseThreshold(I)V

    invoke-virtual {p1, v0}, Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;->setDragViewLocation(Z)V

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Integer;

    sget v5, Lcom/onyx/galaxy/note/R$dimen;->side_bar_layout_width:I

    invoke-virtual {v1, v5}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimensionPixelSize(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    sget v3, Lcom/onyx/galaxy/note/R$dimen;->side_bar_level_two_width:I

    invoke-virtual {v1, v3}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimensionPixelSize(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v2

    sget v2, Lcom/onyx/galaxy/note/R$dimen;->side_bar_level_three_width:I

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimensionPixelSize(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v4, v3

    sget v2, Lcom/onyx/galaxy/note/R$dimen;->side_bar_level_four_width:I

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimensionPixelSize(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v4, v2

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;->setAdjustableSizeList(Ljava/util/List;)V

    new-instance v1, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$initSidebarView$1;

    invoke-direct {v1, p0, v0, p1}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$initSidebarView$1;-><init>(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;ZLcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;)V

    invoke-virtual {p1, v1}, Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;->setCallback(Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer$Callback;)V

    return-void
.end method

.method public final g2(Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;)V
    .locals 3

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/feature/touch/TouchModeFeatureManager;->Companion:Lcom/onyx/android/sdk/universal/editor/feature/touch/TouchModeFeatureManager$Companion;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/feature/touch/TouchModeFeatureManager$Companion;->isCurTouchModeSupportEdit()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v1, Lcom/onyx/galaxy/note/R$dimen;->drag_tool_height:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->rightSideBarLayout:Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;

    const-string v2, "rightSideBarLayout"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v1, v0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->h2(Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;Landroid/view/ViewGroup;I)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->leftSideBarLayout:Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;

    const-string v2, "leftSideBarLayout"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v1, v0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->h2(Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;Landroid/view/ViewGroup;I)V

    return-void
.end method

.method public final getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->binding:Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getEditorBundleManager$note_overseasRelease()Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->d1:Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;

    return-object p0
.end method

.method public final getEditorContainerLocation$note_overseasRelease()[I
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->editorContainer:Lcom/onyx/android/sdk/theme/widgets/TintRelativeLayout;

    const-string v1, "editorContainer"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->getLocationOnScreen(Landroid/view/View;)[I

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->shapeAndTool:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;->getToolDragView()Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->editorContainer:Lcom/onyx/android/sdk/theme/widgets/TintRelativeLayout;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p0

    add-int/2addr v2, p0

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->getDockType()Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    move-result-object p0

    sget-object v1, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v1, p0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_1

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    aget v1, v0, p0

    add-int/2addr v1, v2

    aput v1, v0, p0

    goto :goto_0

    :cond_1
    aget p0, v0, v1

    add-int/2addr p0, v2

    aput p0, v0, v1

    :goto_0
    return-object v0
.end method

.method public final getEditorContainerRect$note_overseasRelease()Landroid/graphics/Rect;
    .locals 7
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->editorContainer:Lcom/onyx/android/sdk/theme/widgets/TintRelativeLayout;

    const-string v1, "editorContainer"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->globalVisibleRect(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object v2

    iget-object v2, v2, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->editorContainer:Lcom/onyx/android/sdk/theme/widgets/TintRelativeLayout;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object v2

    iget-object v2, v2, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->editorContainer:Lcom/onyx/android/sdk/theme/widgets/TintRelativeLayout;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->shapeAndTool:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;->getToolDragView()Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;

    move-result-object v1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object v2

    iget-object v2, v2, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->shapeAndTool:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;

    invoke-virtual {v2}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;->getDriveTokenExpiredTipContainer()Lcom/onyx/galaxy/note/editor/view/toolbar/DriveTokenExpiredTipContainer;

    move-result-object v2

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v4, :cond_0

    move v4, v6

    goto :goto_0

    :cond_0
    move v4, v5

    :goto_0
    if-eqz v4, :cond_1

    iget v4, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v4, v2

    iput v4, v0, Landroid/graphics/Rect;->top:I

    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    move v5, v6

    :cond_2
    if-eqz v5, :cond_7

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->getDockType()Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    move-result-object v1

    sget-object v2, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v2, v1

    if-eq v1, v6, :cond_6

    const/4 v2, 0x2

    if-eq v1, v2, :cond_5

    const/4 v2, 0x3

    if-eq v1, v2, :cond_4

    const/4 v2, 0x4

    if-eq v1, v2, :cond_3

    goto :goto_1

    :cond_3
    iget v1, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v3

    iput v1, v0, Landroid/graphics/Rect;->right:I

    goto :goto_1

    :cond_4
    iget v1, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v3

    iput v1, v0, Landroid/graphics/Rect;->left:I

    goto :goto_1

    :cond_5
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v3

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    :cond_6
    iget v1, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v3

    iput v1, v0, Landroid/graphics/Rect;->top:I

    :cond_7
    :goto_1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->rightSideBarLayout:Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;

    invoke-static {v1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->isVisible(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v1}, Lcom/onyx/galaxy/note/common/extension/ViewExtKt;->isLayoutDirectionRtl(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget v1, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    goto :goto_2

    :cond_8
    iget v1, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    :cond_9
    :goto_2
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->leftSideBarLayout:Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->isVisible(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p0}, Lcom/onyx/galaxy/note/common/extension/ViewExtKt;->isLayoutDirectionRtl(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_a

    iget p0, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr p0, v1

    iput p0, v0, Landroid/graphics/Rect;->right:I

    goto :goto_3

    :cond_a
    iget p0, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr p0, v1

    iput p0, v0, Landroid/graphics/Rect;->left:I

    :cond_b
    :goto_3
    return-object v0
.end method

.method public final getEditorViewOffsetLocation()[I
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->shapeAndTool:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;->getSplitScreenLayout()Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->getLocationInWindow(Landroid/view/View;)[I

    move-result-object v0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->d1:Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->focusEditorView()Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->getLocationInWindow(Landroid/view/View;)[I

    move-result-object p0

    const/4 v1, 0x0

    aget v2, p0, v1

    aget v1, v0, v1

    sub-int/2addr v2, v1

    const/4 v1, 0x1

    aget p0, p0, v1

    aget v0, v0, v1

    sub-int/2addr p0, v0

    filled-new-array {v2, p0}, [I

    move-result-object p0

    return-object p0
.end method

.method public final getPenViewModel$note_overseasRelease()Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->penViewModel:Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "penViewModel"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getRootLocation$note_overseasRelease()[I
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->getLocationOnScreen(Landroid/view/View;)[I

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final getSelectionMenuDisplayRect$note_overseasRelease()Landroid/graphics/RectF;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->d1:Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->focusEditorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->localVisibleRectF(Landroid/view/View;)Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->shapeAndTool:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;->getToolDragView()Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->getDockType()Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    move-result-object p0

    sget-object v2, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v2, p0

    const/4 v2, 0x1

    if-eq p0, v2, :cond_3

    const/4 v2, 0x2

    if-eq p0, v2, :cond_2

    const/4 v2, 0x3

    if-eq p0, v2, :cond_1

    const/4 v2, 0x4

    if-eq p0, v2, :cond_0

    goto :goto_0

    :cond_0
    iget p0, v0, Landroid/graphics/RectF;->right:F

    int-to-float v1, v1

    sub-float/2addr p0, v1

    iput p0, v0, Landroid/graphics/RectF;->right:F

    goto :goto_0

    :cond_1
    iget p0, v0, Landroid/graphics/RectF;->left:F

    int-to-float v1, v1

    add-float/2addr p0, v1

    iput p0, v0, Landroid/graphics/RectF;->left:F

    goto :goto_0

    :cond_2
    iget p0, v0, Landroid/graphics/RectF;->bottom:F

    int-to-float v1, v1

    sub-float/2addr p0, v1

    iput p0, v0, Landroid/graphics/RectF;->bottom:F

    goto :goto_0

    :cond_3
    iget p0, v0, Landroid/graphics/RectF;->top:F

    int-to-float v1, v1

    add-float/2addr p0, v1

    iput p0, v0, Landroid/graphics/RectF;->top:F

    :goto_0
    return-object v0
.end method

.method public final getSelectionMenuView$note_overseasRelease()Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->shapeAndTool:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;->getSelectionMenuView()Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;

    move-result-object p0

    return-object p0
.end method

.method public getSplitScreenSize(Lcom/onyx/android/sdk/universal/editor/config/SplitScreenPosition;)Landroid/graphics/RectF;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/config/SplitScreenPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "position"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->shapeAndTool:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;->getSplitScreenLayout()Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->getSplitScreenAnimTargetViewSize(Lcom/onyx/android/sdk/universal/editor/config/SplitScreenPosition;)Landroid/graphics/RectF;

    move-result-object p0

    return-object p0
.end method

.method public final getTextBox$note_overseasRelease()Lcom/onyx/android/sdk/textbox/widget/TextBoxView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->shapeAndTool:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutShpaeAndToolContainerBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/LayoutShpaeAndToolContainerBinding;->textBoxView:Lcom/onyx/android/sdk/textbox/widget/TextBoxView;

    const-string v0, "textBoxView"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getViewModel()Lcom/onyx/galaxy/note/editor/viewmodel/NoteScribbleViewModel;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->viewModel:Lcom/onyx/galaxy/note/editor/viewmodel/NoteScribbleViewModel;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "viewModel"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final h1()V
    .locals 2

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/config/AppConfig;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/config/AppConfig;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/universal/editor/config/AppConfig;->setEnabledPageColumn(Z)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->d1:Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->resizeCache()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->shapeAndTool:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;->getSplitScreenLayout()Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$initSplitScreenLayout$1;

    invoke-direct {v1, p0, v0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$initSplitScreenLayout$1;-><init>(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;)V

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->setListener(Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout$Listener;)V

    return-void
.end method

.method public final h2(Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;Landroid/view/ViewGroup;I)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    :goto_0
    const/4 p1, 0x1

    const/4 v0, 0x0

    if-eq p0, p1, :cond_3

    const/4 p1, 0x2

    if-eq p0, p1, :cond_2

    const/4 p1, 0x3

    if-eq p0, p1, :cond_1

    const/4 p1, 0x4

    if-eq p0, p1, :cond_1

    invoke-virtual {p2, v0, v0, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_1

    :cond_1
    invoke-virtual {p2, v0, v0, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_1

    :cond_2
    invoke-virtual {p2, v0, v0, v0, p3}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_1

    :cond_3
    invoke-virtual {p2, v0, p3, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    :goto_1
    return-void
.end method

.method public final hideSelectionMenu$note_overseasRelease()V
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getSelectionMenuView$note_overseasRelease()Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getSelectionMenuView$note_overseasRelease()Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->hide()V

    :cond_0
    return-void
.end method

.method public final i1()V
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->tabLayout:Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;

    new-instance v1, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$initTabView$1;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$initTabView$1;-><init>(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;)V

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;->setDragListener(Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup$DragListenerDelegateListener;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->tabLayout:Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;

    new-instance v1, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$initTabView$2;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$initTabView$2;-><init>(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;)V

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;->setNoteTabListener(Lcom/onyx/galaxy/note/editor/view/NoteTabLayout$TabListener;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->tabLayout:Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->d1:Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;->setEditorBundleManager(Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;)V

    sget-object v0, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->INSTANCE:Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->getNoteEditConfigInfo()Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;->getTabCountOption()Lcom/onyx/android/sdk/data/utils/IntOption;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/utils/IntOption;->get()I

    move-result v1

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->getNoteEditConfigInfo()Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;->isTabOptionShow()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    if-ne v1, v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->tabLayout:Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrGone(Landroid/view/View;Z)V

    :cond_1
    return-void
.end method

.method public final i2(Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;)V
    .locals 3

    sget-object p0, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/GlobalBundle;

    new-instance v0, Lcom/onyx/galaxy/note/editor/event/SideBarAreaEvent;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment;

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->windowVisibleRect(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object p1

    sget-object v2, Lcom/onyx/galaxy/note/editor/data/SlideBarType;->SLIDE_MORE_SETTING:Lcom/onyx/galaxy/note/editor/data/SlideBarType;

    invoke-direct {v0, v1, p1, v2}, Lcom/onyx/galaxy/note/editor/event/SideBarAreaEvent;-><init>(ZLandroid/graphics/Rect;Lcom/onyx/galaxy/note/editor/data/SlideBarType;)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->postEvent(Ljava/lang/Object;)V

    return-void
.end method

.method public isEnabledSplitScreen()Z
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->shapeAndTool:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;->getSplitScreenLayout()Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->isEnabledSplitScreen()Z

    move-result p0

    return p0
.end method

.method public final isSideLayoutAnim()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->h1:Z

    return p0
.end method

.method public final j1()V
    .locals 3

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->A0()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->i1()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->e1()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->h1()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->X0()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->f1()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->b1()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->Y0()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->w1()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->c1()V

    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1, v2}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->p2(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;ZILjava/lang/Object;)V

    return-void
.end method

.method public final j2()V
    .locals 6

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->tabLayout:Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;->getDataList()Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->INSTANCE:Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->getNoteEditConfigInfo()Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;->getTabCountOption()Lcom/onyx/android/sdk/data/utils/IntOption;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/data/utils/IntOption;->put(I)V

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->getNoteEditConfigInfo()Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;->isTabOptionShow()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-static {v1}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->getSize(Ljava/util/Collection;)I

    move-result v1

    if-le v1, v3, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object v4

    iget-object v4, v4, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->tabLayout:Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;

    const-string v5, "tabLayout"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    if-eq v4, v1, :cond_2

    move v4, v3

    goto :goto_2

    :cond_2
    move v4, v2

    :goto_2
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object v5

    iget-object v5, v5, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->tabLayout:Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;

    invoke-static {v5, v1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrGone(Landroid/view/View;Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object v5

    iget-object v5, v5, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->funcLayout:Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;

    if-eqz v1, :cond_4

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->getSize(Ljava/util/Collection;)I

    move-result v0

    if-ne v0, v3, :cond_3

    goto :goto_3

    :cond_3
    move v3, v2

    :cond_4
    :goto_3
    invoke-virtual {v5, v3}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->showTabIndicator(Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->guideViewTab:Landroid/view/View;

    const-string v3, "guideViewTab"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_5

    goto :goto_4

    :cond_5
    const/16 v2, 0x8

    :goto_4
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    if-eqz v4, :cond_6

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->tabLayout:Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;

    new-instance v1, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$updateTabLayoutAndIndicator$1;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$updateTabLayoutAndIndicator$1;-><init>(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;)V

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->postSelf(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    :cond_6
    return-void
.end method

.method public final k1()V
    .locals 4

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getViewModel()Lcom/onyx/galaxy/note/editor/viewmodel/NoteScribbleViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/viewmodel/NoteScribbleViewModel;->getTabNoteList()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$initViewModel$1;

    invoke-direct {v2, p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$initViewModel$1;-><init>(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;)V

    new-instance v3, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$p;

    invoke-direct {v3, v2}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$p;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->d1()V

    return-void
.end method

.method public final k2()V
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->tabLayout:Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;

    new-instance v1, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$updateToolView$1;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$updateToolView$1;-><init>(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;)V

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->postSelf(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->shapeAndTool:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;

    new-instance v1, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$updateToolView$2;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$updateToolView$2;-><init>(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;)V

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->postSelf(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final l1(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V
    .locals 1

    sget-object v0, Lcom/onyx/galaxy/note/utils/GuideUtils;->INSTANCE:Lcom/onyx/galaxy/note/utils/GuideUtils;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/utils/GuideUtils;->isPageWhiteSpaceGuideNeed()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->m1(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->P1()V

    :cond_0
    return-void
.end method

.method public final l2(Ljava/lang/String;)V
    .locals 1

    const-string v0, "text_input_provider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lcom/onyx/galaxy/note/editor/data/ShapeToolType;->EDIT_TEXT:Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    goto :goto_0

    :cond_0
    const-string v0, "excerpt_provider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/onyx/galaxy/note/editor/data/ShapeToolType;->EXCERPT:Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->shapeAndTool:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;->setSelectByType(Lcom/onyx/galaxy/note/editor/data/ShapeToolType;Z)V

    return-void
.end method

.method public final m1(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)Z
    .locals 7

    sget-object p0, Lcom/onyx/android/sdk/replicator/note/data/constant/NoteScene;->INSTANCE:Lcom/onyx/android/sdk/replicator/note/data/constant/NoteScene;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->getActiveScene()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/replicator/note/data/constant/NoteScene;->isPdfScribbleScene(I)Z

    move-result p0

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v1, Lcom/onyx/galaxy/note/R$array;->tutorial_names:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->getTitle()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x0

    if-ge v3, v1, :cond_2

    aget-object v5, v0, v3

    const/4 v6, 0x2

    invoke-static {p1, v5, v2, v6, v4}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v5

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz p0, :cond_3

    if-nez v4, :cond_3

    const/4 v2, 0x1

    :cond_3
    return v2
.end method

.method public final m2(Lcom/onyx/android/sdk/device/bean/NotchType;)V
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->tabLayout:Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;

    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->funcLayout:Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutFunctionToolBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/LayoutFunctionToolBinding;->autoLayout:Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;

    invoke-virtual {p0, v0, v0, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_3

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->tabLayout:Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;

    const-string v2, "tabLayout"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object v3

    iget-object v3, v3, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->funcLayout:Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;

    invoke-virtual {v3}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutFunctionToolBinding;

    move-result-object v3

    iget-object v3, v3, Lcom/onyx/galaxy/note/databinding/LayoutFunctionToolBinding;->autoLayout:Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;

    invoke-virtual {v3, v0, v0, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object v3

    iget-object v3, v3, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->tabLayout:Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;

    invoke-virtual {v3, v0, v0, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    :goto_1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object v0

    if-eqz v1, :cond_3

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->tabLayout:Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->funcLayout:Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutFunctionToolBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutFunctionToolBinding;->autoLayout:Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;

    const-string v1, "autoLayout"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_2
    invoke-virtual {p0, v0, p1}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->n2(Landroid/view/View;Lcom/onyx/android/sdk/device/bean/NotchType;)V

    :goto_3
    return-void
.end method

.method public final n1(Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;Lcom/onyx/galaxy/note/editor/data/SlideBarType;)Z
    .locals 0

    sget-object p0, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p0, p0, p2

    const/4 p2, 0x1

    if-eq p0, p2, :cond_1

    const/4 p2, 0x2

    if-ne p0, p2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    instance-of p0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment;

    goto :goto_0

    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    instance-of p0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;

    :goto_0
    return p0
.end method

.method public final n2(Landroid/view/View;Lcom/onyx/android/sdk/device/bean/NotchType;)V
    .locals 1

    sget-object p0, Lcom/onyx/android/sdk/device/bean/NotchType;->RIGHT_TOP:Lcom/onyx/android/sdk/device/bean/NotchType;

    const/4 v0, 0x0

    if-ne p2, p0, :cond_0

    invoke-virtual {p2}, Lcom/onyx/android/sdk/device/bean/NotchType;->getPositionOffset()Landroid/graphics/Point;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Point;->x:I

    invoke-virtual {p1, v0, v0, p0, v0}, Landroid/view/View;->setPadding(IIII)V

    :cond_0
    sget-object p0, Lcom/onyx/android/sdk/device/bean/NotchType;->LEFT_TOP:Lcom/onyx/android/sdk/device/bean/NotchType;

    if-ne p2, p0, :cond_1

    invoke-virtual {p2}, Lcom/onyx/android/sdk/device/bean/NotchType;->getPositionOffset()Landroid/graphics/Point;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Point;->x:I

    invoke-virtual {p1, p0, v0, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    :cond_1
    return-void
.end method

.method public final o2(Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;Z)V
    .locals 4

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/feature/touch/TouchModeFeatureManager;->Companion:Lcom/onyx/android/sdk/universal/editor/feature/touch/TouchModeFeatureManager$Companion;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/universal/editor/feature/touch/TouchModeFeatureManager$Companion;->getTouchModeFeature(Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;)Lcom/onyx/android/sdk/universal/editor/feature/touch/TouchModeFeature;

    move-result-object p1

    invoke-interface {p1}, Lcom/onyx/android/sdk/universal/editor/feature/touch/TouchModeFeature;->supportEdit()Z

    move-result p1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->shapeAndTool:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;->getToolDragView()Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->getDockType()Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    const/16 v3, 0x8

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->editorBundle$note_overseasRelease()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p2

    new-instance v2, Lcom/onyx/galaxy/note/editor/event/FunctionToolPopupDismissEvent;

    invoke-direct {v2}, Lcom/onyx/galaxy/note/editor/event/FunctionToolPopupDismissEvent;-><init>()V

    invoke-static {p2, v2}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->shapeAndTool:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;

    invoke-virtual {p2, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;->coordinateToolbarAnimation(Z)V

    new-instance p2, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$updateViewByTouchMode$1$1;

    invoke-direct {p2, p0, v1, v0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$updateViewByTouchMode$1$1;-><init>(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;)V

    invoke-static {v0, v1, p1, p2}, Lcom/onyx/galaxy/note/common/extension/ViewExtKt;->startShowHideAnimation(Landroid/view/View;Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;ZLkotlin/jvm/functions/Function0;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->updateView()V

    invoke-virtual {p0, v2, v1}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->e2(ZLcom/onyx/galaxy/note/editor/view/toolbar/DockType;)V

    invoke-virtual {p0, v1}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->g2(Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->p1()V

    :goto_1
    return-void
.end method

.method public final onActivateDocumentEvent(Lcom/onyx/android/sdk/universal/editor/events/app/ActivateDocumentEvent;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/app/ActivateDocumentEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->f1:Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/app/ActivateDocumentEvent;->getSyncNoteModel()Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/app/ActivateDocumentEvent;->getSyncNoteModel()Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    move-result-object v1

    iput-object v1, p0, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->f1:Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->u0()V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/app/ActivateDocumentEvent;->getUpdateTab()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/app/ActivateDocumentEvent;->getSyncNoteModel()Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->d2(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getViewModel()Lcom/onyx/galaxy/note/editor/viewmodel/NoteScribbleViewModel;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/app/ActivateDocumentEvent;->getSyncNoteModel()Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/onyx/galaxy/note/editor/viewmodel/NoteScribbleViewModel;->loadTabNote(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$j;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$j;-><init>(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->s1()V

    return-void
.end method

.method public final onActivationStateChangedEvent(Lcom/onyx/android/sdk/data/account/event/ActivationStateChangedEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/data/account/event/ActivationStateChangedEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getSelectionMenuView$note_overseasRelease()Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->update()V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .param p3    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    return-void

    :cond_0
    const/16 p2, 0x3eb

    if-eq p1, p2, :cond_3

    const/16 p2, 0x7e5

    if-eq p1, p2, :cond_2

    const/16 p2, 0x3ee

    if-eq p1, p2, :cond_1

    const/16 p2, 0x3ef

    if-eq p1, p2, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p3}, Lcom/onyx/android/sdk/matisse/Matisse;->obtainResult(Landroid/content/Intent;)Ljava/util/List;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object p3, p2

    check-cast p3, Ljava/util/Collection;

    invoke-interface {p3}, Ljava/util/Collection;->isEmpty()Z

    move-result p3

    xor-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_4

    sget-object p3, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->INSTANCE:Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;

    invoke-virtual {p3, p2, p1}, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->reportPickPictureEventFromInsertShape(Ljava/util/List;I)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->editorBundle$note_overseasRelease()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    new-instance p1, Lcom/onyx/android/sdk/universal/editor/events/note/InsertImagesEvent;

    invoke-direct {p1, p2}, Lcom/onyx/android/sdk/universal/editor/events/note/InsertImagesEvent;-><init>(Ljava/util/List;)V

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;->INSTANCE:Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;

    new-instance p1, Lcom/onyx/galaxy/note/editor/action/importfiles/ObtainDocumentListAction;

    invoke-direct {p1, p3}, Lcom/onyx/galaxy/note/editor/action/importfiles/ObtainDocumentListAction;-><init>(Landroid/content/Intent;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance p2, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$k;

    invoke-direct {p2, p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$k;-><init>(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;)V

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    const-string p0, "flatMap(...)"

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;->subscribeWithErrorHandler$default(Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    goto :goto_0

    :cond_3
    invoke-static {p3}, Lcom/onyx/android/sdk/matisse/Matisse;->obtainResult(Landroid/content/Intent;)Ljava/util/List;

    move-result-object p1

    move-object p2, p1

    check-cast p2, Ljava/util/Collection;

    invoke-static {p2}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->isNonBlank(Ljava/util/Collection;)Z

    move-result p2

    if-eqz p2, :cond_4

    sget-object p2, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->INSTANCE:Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/16 p3, 0xbbc

    invoke-virtual {p2, p1, p3}, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->reportPickPictureEventFromInsertPage(Ljava/util/List;I)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->editorBundle$note_overseasRelease()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    new-instance p2, Lcom/onyx/android/sdk/universal/editor/events/note/InsertImagePagesEvent;

    invoke-direct {p2, p1}, Lcom/onyx/android/sdk/universal/editor/events/note/InsertImagePagesEvent;-><init>(Ljava/util/List;)V

    invoke-static {p0, p2}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    sget-object v0, Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager;->Companion:Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager$Companion;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager$Companion;->getOurInstance()Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager;->register(Ljava/lang/Object;)V

    new-instance v0, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$onAttach$1;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$onAttach$1;-><init>(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;)V

    invoke-static {p1, v0}, Lcom/onyx/android/sdk/base/extension/ContextKt;->registerWindowLocationChangeListener(Landroid/content/Context;Lkotlin/jvm/functions/Function0;)Landroid/view/View$OnLayoutChangeListener;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->g1:Landroid/view/View$OnLayoutChangeListener;

    return-void
.end method

.method public final onBeforeChangePenEvent(Lcom/onyx/android/sdk/universal/editor/events/note/BeforeChangePenArgsEvent;)V
    .locals 7
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/BeforeChangePenArgsEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager;->Companion:Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager$Companion;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager$Companion;->hasPenBox()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getPenViewModel$note_overseasRelease()Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;

    move-result-object p1

    new-instance v6, Lcom/onyx/galaxy/note/editor/data/PenContext;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getPenViewModel$note_overseasRelease()Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;->getPenType()Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/onyx/galaxy/note/editor/data/PenContext;-><init>(Lcom/onyx/galaxy/note/editor/data/ShapeToolType;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p1, v6}, Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;->setLastPenType(Lcom/onyx/galaxy/note/editor/data/PenContext;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->shapeAndTool:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;->getToolDragView()Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->getBinding()Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;->rlShapeToolViewAuto:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;

    const-string v2, "rlShapeToolViewAuto"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->dismissAllPopup()V

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager$Companion;->getPenBox$default(Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager$Companion;Ljava/lang/String;ILjava/lang/Object;)Lcom/onyx/android/sdk/replicator/note/data/pen/PencilBox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/data/pen/PencilBox;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/data/pen/PencilBox;->getSelectedId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/BeforeChangePenArgsEvent;->getNextSelectId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getPenViewModel$note_overseasRelease()Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;

    move-result-object p0

    new-instance p1, Lcom/onyx/galaxy/note/editor/data/PenContext;

    const/4 v2, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/onyx/galaxy/note/editor/data/PenContext;-><init>(Lcom/onyx/galaxy/note/editor/data/ShapeToolType;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;->setLastPenType(Lcom/onyx/galaxy/note/editor/data/PenContext;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getPenViewModel$note_overseasRelease()Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;

    move-result-object p1

    new-instance v6, Lcom/onyx/galaxy/note/editor/data/PenContext;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getPenViewModel$note_overseasRelease()Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;->getPenType()Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/onyx/galaxy/note/editor/data/PenContext;-><init>(Lcom/onyx/galaxy/note/editor/data/ShapeToolType;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p1, v6}, Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;->setLastPenType(Lcom/onyx/galaxy/note/editor/data/PenContext;)V

    :goto_0
    return-void
.end method

.method public final onChangeDockTypeEvent(Lcom/onyx/galaxy/note/editor/event/ChangeDockTypeEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/editor/event/ChangeDockTypeEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getPenViewModel$note_overseasRelease()Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;->getDockType()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/event/ChangeDockTypeEvent;->getDockType()Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->I1()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->p1()V

    return-void
.end method

.method public final onChangeEraseTypeEvent(Lcom/onyx/android/sdk/universal/editor/events/note/ChangeEraseTypeEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/ChangeEraseTypeEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->shapeAndTool:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;

    sget-object p1, Lcom/onyx/android/sdk/universal/editor/data/EraserPropertyOption;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/data/EraserPropertyOption;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/EraserPropertyOption;->getEraserTypeOption()Lcom/onyx/android/sdk/data/utils/IntOption;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/utils/IntOption;->get()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;->updateEraserTypeUi(I)V

    return-void
.end method

.method public final onChangePenArgsEvent(Lcom/onyx/android/sdk/universal/editor/events/note/ChangePenArgsEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/ChangePenArgsEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/ChangePenArgsEvent;->getFromPenBox()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->shapeAndTool:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;

    sget-object p1, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$onChangePenArgsEvent$1;->INSTANCE:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$onChangePenArgsEvent$1;

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->postSelf(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final onChangeSubShapeTypeEvent(Lcom/onyx/android/sdk/universal/editor/events/note/ChangeSubShapeTypeEvent;)V
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/ChangeSubShapeTypeEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->INSTANCE:Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->getNoteEditConfigInfo()Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;->getPenProperty()Lcom/onyx/galaxy/note/editor/data/PenPropertyBean;

    move-result-object v1

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->getNoteEditConfigInfo()Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;->ensureSelectShapeType()Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/galaxy/note/editor/data/ShapeToolType;->getShapeType()I

    move-result v2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/ChangeSubShapeTypeEvent;->getShapeType()I

    move-result p1

    invoke-virtual {v1, v2, p1}, Lcom/onyx/galaxy/note/editor/data/PenPropertyBean;->saveSubShapeType(II)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->shapeAndTool:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->getNoteEditConfigInfo()Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;->getLassoProperty()Lcom/onyx/android/sdk/universal/editor/data/LassoPropertyOption;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/data/LassoPropertyOption;->getLassoType()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;->updateLassoTypeUi(I)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->shapeAndTool:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;->showTapeSizeContainer()V

    return-void
.end method

.method public final onChangeTouchModeEvent(Lcom/onyx/android/sdk/universal/editor/events/note/ChangeTouchModeEvent;)V
    .locals 8
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/ChangeTouchModeEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/penbox/ActivatePenBoxViewAction;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->editorBundle$note_overseasRelease()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v7, 0x0

    invoke-direct {v1, v0, v7, v2, v3}, Lcom/onyx/android/sdk/universal/editor/action/penbox/ActivatePenBoxViewAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x7

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->execute$default(Lcom/onyx/android/sdk/base/rx/RxBaseAction;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/ChangeTouchModeEvent;->getNewTouchMode()Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/ChangeTouchModeEvent;->hasReadingMode()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/ChangeTouchModeEvent;->isModeChanged()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v7, 0x1

    :cond_0
    invoke-virtual {p0, v0, v7}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->o2(Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;Z)V

    sget-object p1, Lcom/onyx/android/sdk/universal/editor/feature/touch/TouchModeFeatureManager;->Companion:Lcom/onyx/android/sdk/universal/editor/feature/touch/TouchModeFeatureManager$Companion;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/feature/touch/TouchModeFeatureManager$Companion;->isCurTouchModeSupportEdit()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->J0()V

    :cond_1
    return-void
.end method

.method public final onCheckEditorAutoReLockEvent(Lcom/onyx/galaxy/note/editor/event/CheckEditorAutoReLockEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/editor/event/CheckEditorAutoReLockEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->editorBundle$note_overseasRelease()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p1

    invoke-static {p1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->docId(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->d2(Ljava/lang/String;)V

    return-void
.end method

.method public final onCloseSideBarEvent(Lcom/onyx/galaxy/note/editor/event/CloseSideBarEvent;)V
    .locals 2
    .param p1    # Lcom/onyx/galaxy/note/editor/event/CloseSideBarEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/event/CloseSideBarEvent;->getType()Lcom/onyx/galaxy/note/editor/data/SlideBarType;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getViewModel()Lcom/onyx/galaxy/note/editor/viewmodel/NoteScribbleViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/viewmodel/NoteScribbleViewModel;->getSlideBarType()Lcom/onyx/galaxy/note/editor/data/SlideBarType;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->K0(Lcom/onyx/galaxy/note/editor/data/SlideBarType;)Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p1}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->L1(ZLcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;Lcom/onyx/galaxy/note/editor/data/SlideBarType;)V

    return-void
.end method

.method public final onCloudStorageRefreshTokenFailedEvent(Lcom/onyx/android/sdk/cloudstorage/event/CloudStorageRefreshTokenFailedEvent;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/event/CloudStorageRefreshTokenFailedEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$onCloudStorageRefreshTokenFailedEvent$1;

    invoke-direct {v0, p0, p1}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$onCloudStorageRefreshTokenFailedEvent$1;-><init>(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;Lcom/onyx/android/sdk/cloudstorage/event/CloudStorageRefreshTokenFailedEvent;)V

    const/4 p1, 0x1

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p1, v1}, Lcom/onyx/android/sdk/base/extension/FragmentKt;->requireActivitySafety$default(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/Lifecycle$State;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1    # Landroid/content/res/Configuration;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "newConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/onyx/galaxy/note/common/base/BaseFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->shapeAndTool:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;->flushUI()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->tabLayout:Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;

    sget-object v0, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$onConfigurationChanged$1;->INSTANCE:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$onConfigurationChanged$1;

    invoke-static {p1, v0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->postSelf(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->b2()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->funcLayout:Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->updateToolsIconByScreen()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->editorBundle$note_overseasRelease()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p1

    new-instance v0, Lcom/onyx/galaxy/note/editor/event/FunctionToolPopupHideEvent;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/editor/event/FunctionToolPopupHideEvent;-><init>()V

    invoke-static {p1, v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->funcLayout:Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;

    new-instance v0, Lcom/sunia/HTREnginev2/f1k;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/f1k;-><init>(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;)V

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->A1(Z)V

    return-void
.end method

.method public final onConfigurationChangedEvent(Lcom/onyx/android/sdk/universal/common/events/ConfigurationChangedEvent;)V
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/universal/common/events/ConfigurationChangedEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/GlobalBundle;

    new-instance v0, Lcom/onyx/galaxy/note/editor/event/ForceCloseKeyboardEvent;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Lcom/onyx/galaxy/note/editor/event/ForceCloseKeyboardEvent;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->postEvent(Ljava/lang/Object;)V

    new-instance v0, Lcom/onyx/galaxy/note/editor/event/UnregisterKeyboardHelperEvent;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/editor/event/UnregisterKeyboardHelperEvent;-><init>()V

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->postEvent(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->F1()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->J0()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->H0()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->B1()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->leftSideBarLayout:Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;

    const-string v0, "leftSideBarLayout"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->f2(Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->rightSideBarLayout:Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;

    const-string v0, "rightSideBarLayout"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->f2(Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->k2()V

    return-void
.end method

.method public final onContentViewSizeChangedEvent(Lcom/onyx/android/sdk/universal/editor/events/app/ContentViewSizeChangedEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/app/ContentViewSizeChangedEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->a2()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const v1, -0x54ffffb1

    const v3, 0x1

    new-array v0, v3, [Ljava/lang/Object;

    const v3, 0x0

    check-cast p1, Ljava/lang/Object;

    aput-object p1, v0, v3

    invoke-static {v1, p0, v0}, Lcom/sagittarius/v6/AB;->v(ILjava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object p1

    const-string p2, "inflate(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->setBinding$note_overseasRelease(Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->j1()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->k1()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p0

    const-string p1, "getRoot(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/onyx/galaxy/note/common/base/BaseFragment;->onDestroy()V

    sget-object v0, Lcom/onyx/galaxy/note/utils/AutoReLockNoteManager;->INSTANCE:Lcom/onyx/galaxy/note/utils/AutoReLockNoteManager;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/utils/AutoReLockNoteManager;->stop()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->J0()V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->d1:Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->destroy()V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->e1:Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/universal/editor/eventhandler/EventHandler;

    invoke-interface {v0}, Lcom/onyx/android/sdk/universal/editor/eventhandler/EventHandler;->destroy()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    invoke-super {p0}, Lcom/onyx/galaxy/note/common/base/BaseFragment;->onDestroyView()V

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/GlobalBundle;

    new-instance v1, Lcom/onyx/galaxy/note/editor/event/UnregisterKeyboardHelperEvent;

    invoke-direct {v1}, Lcom/onyx/galaxy/note/editor/event/UnregisterKeyboardHelperEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->postEvent(Ljava/lang/Object;)V

    invoke-static {}, Lcom/hjq/window/EasyWindow;->recycleAll()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->editorBundle$note_overseasRelease()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/events/note/StopScreenCaptureServiceEvent;

    invoke-direct {v1}, Lcom/onyx/android/sdk/universal/editor/events/note/StopScreenCaptureServiceEvent;-><init>()V

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->T1()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->funcLayout:Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->stopMedia()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->inputTextLayout:Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;->destroy()V

    return-void
.end method

.method public onDetach()V
    .locals 2

    sget-object v0, Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager;->Companion:Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager$Companion;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager$Companion;->getOurInstance()Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager;->unregister(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->g1:Landroid/view/View$OnLayoutChangeListener;

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/base/extension/ContextKt;->unregisterWindowLocationChangeListener(Landroid/content/Context;Landroid/view/View$OnLayoutChangeListener;)V

    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDetach()V

    return-void
.end method

.method public onDown(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "id"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/galaxy/note/utils/AutoReLockNoteManager;->INSTANCE:Lcom/onyx/galaxy/note/utils/AutoReLockNoteManager;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/utils/AutoReLockNoteManager;->delayReLockNoteTask(Ljava/lang/String;)V

    return-void
.end method

.method public final onEditNoteEncryptionChangedEvent(Lcom/onyx/galaxy/note/editor/event/EditNoteEncryptionChangedEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/editor/event/EditNoteEncryptionChangedEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->editorBundle$note_overseasRelease()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p1

    invoke-static {p1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->docId(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->d2(Ljava/lang/String;)V

    return-void
.end method

.method public onEditorFocusChanged(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "last"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "current"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->unregister(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    invoke-static {p2, p0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->register(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->u0()V

    invoke-static {p1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->docId(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->docId(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->docId(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->K1(Ljava/lang/String;)V

    :cond_0
    sget-object v0, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->INSTANCE:Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/events/app/EditorBundleChangedEvent;

    invoke-direct {v1, p1, p2}, Lcom/onyx/android/sdk/universal/editor/events/app/EditorBundleChangedEvent;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->postEvent(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->closeSelectionMenu$note_overseasRelease()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->J0()V

    sget-object p0, Lcom/onyx/galaxy/note/utils/AutoReLockNoteManager;->INSTANCE:Lcom/onyx/galaxy/note/utils/AutoReLockNoteManager;

    invoke-static {p2}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->docId(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/utils/AutoReLockNoteManager;->delayReLockNoteTask(Ljava/lang/String;)V

    return-void
.end method

.method public final onFocusedEditorDocSwitched(Lcom/onyx/android/sdk/universal/editor/data/FocusedEditorDocSwitchEvent;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/universal/editor/data/FocusedEditorDocSwitchEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->tabLayout:Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;->getSelectedItem()Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/FocusedEditorDocSwitchEvent;->getDocId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/FocusedEditorDocSwitchEvent;->getDocId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->K1(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->closeSelectionMenu$note_overseasRelease()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->J0()V

    :cond_1
    return-void
.end method

.method public final onGDocumentOpenSuccessEvent(Lcom/onyx/android/sdk/universal/editor/events/app/DocumentOpenSuccessEvent;)V
    .locals 10
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/app/DocumentOpenSuccessEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/galaxy/note/editor/action/pen/InitTapeShapeGlobalStateAction;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->editorBundle$note_overseasRelease()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->d1:Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/onyx/galaxy/note/editor/action/pen/InitTapeShapeGlobalStateAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;Z)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x7

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->subscribeWithDefault$default(Lio/reactivex/rxjava3/core/Observable;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/app/DocumentOpenSuccessEvent;->getOpenDocArgs()Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;->getSearchText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/StringKt;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    return-void

    :cond_1
    sget-object v1, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->Companion:Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment$Companion;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment$Companion;->clearLastOutlineType()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->editorBundle$note_overseasRelease()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    new-instance v2, Lcom/onyx/galaxy/note/editor/event/OpenSlideBarEvents;

    sget-object v3, Lcom/onyx/galaxy/note/editor/data/SlideBarType;->SLIDE_OUTLINE:Lcom/onyx/galaxy/note/editor/data/SlideBarType;

    new-instance v4, Lcom/onyx/galaxy/note/editor/event/OverviewSearchEvent;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/app/DocumentOpenSuccessEvent;->getOpenDocArgs()Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;

    move-result-object v5

    invoke-virtual {v5}, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;->getSearchType()Lcom/onyx/android/sdk/universal/editor/data/TextSearchType;

    move-result-object v5

    invoke-direct {v4, v0, v5}, Lcom/onyx/galaxy/note/editor/event/OverviewSearchEvent;-><init>(Ljava/lang/String;Lcom/onyx/android/sdk/universal/editor/data/TextSearchType;)V

    invoke-direct {v2, v3, v4}, Lcom/onyx/galaxy/note/editor/event/OpenSlideBarEvents;-><init>(Lcom/onyx/galaxy/note/editor/data/SlideBarType;Ljava/lang/Object;)V

    invoke-static {v1, v2}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/app/DocumentOpenSuccessEvent;->getOpenDocArgs()Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;->getSearchRectList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    sget-object v1, Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;->INSTANCE:Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/action/page/LocateRectInPageAction;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->editorBundle$note_overseasRelease()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/app/DocumentOpenSuccessEvent;->getOpenDocArgs()Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;->getPageId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p0, p1, v0}, Lcom/onyx/android/sdk/universal/editor/action/page/LocateRectInPageAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/String;Landroid/graphics/RectF;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;->executeWithErrorHandler$default(Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;Lcom/onyx/android/sdk/base/rx/RxBaseAction;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    :cond_3
    :goto_1
    return-void
.end method

.method public final onGlobalDocumentOpenSuccessEvent(Lcom/onyx/android/sdk/universal/editor/events/app/GlobalDocumentOpenSuccessEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/app/GlobalDocumentOpenSuccessEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager;->Companion:Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager$Companion;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager$Companion;->hasSelectedPen()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->x0()V

    return-void
.end method

.method public final onHideSelectionMenuEvent(Lcom/onyx/android/sdk/universal/editor/events/note/HideSelectionMenuEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/HideSelectionMenuEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getSelectionMenuView$note_overseasRelease()Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->cancel()V

    return-void
.end method

.method public final onMemberChargeEvent(Lcom/onyx/galaxy/note/category/event/MemberChargeEvent;)V
    .locals 7
    .param p1    # Lcom/onyx/galaxy/note/category/event/MemberChargeEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/onyx/galaxy/note/member/data/FeatureChargeArgs;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/member/data/FeatureChargeArgs;-><init>()V

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/event/MemberChargeEvent;->getTriggerFrom()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/onyx/galaxy/note/member/data/FeatureChargeArgs;->setFunctionFrom(Ljava/lang/String;)V

    new-instance p1, Lcom/onyx/galaxy/note/member/action/OpenMemberChargeAction;

    invoke-direct {p1, v0}, Lcom/onyx/galaxy/note/member/action/OpenMemberChargeAction;-><init>(Lcom/onyx/galaxy/note/member/data/FeatureChargeArgs;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const-string v0, "requireActivity(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Lcom/onyx/galaxy/note/common/base/RxBaseNoteAppAction;->setActivityContext(Landroid/content/Context;)Lcom/onyx/android/sdk/base/rx/RxBaseAction;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x7

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->execute$default(Lcom/onyx/android/sdk/base/rx/RxBaseAction;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final onMoveActivityToBackEvent(Lcom/onyx/android/sdk/universal/editor/events/app/MoveScribbleActivityToBackEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/app/MoveScribbleActivityToBackEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->moveTaskToBack(Z)Z

    return-void
.end method

.method public final onNoteOverviewCloseDocumentEvent(Lcom/onyx/android/sdk/universal/editor/events/app/NoteOverviewCloseDocumentEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/app/NoteOverviewCloseDocumentEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->tabLayout:Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/app/NoteOverviewCloseDocumentEvent;->getTab()Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;->closeTab(Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;)V

    return-void
.end method

.method public final onNoteOverviewStartActivateDocumentEvent(Lcom/onyx/android/sdk/universal/editor/events/app/NoteOverviewStartActivateDocumentEvent;)V
    .locals 9
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/app/NoteOverviewStartActivateDocumentEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->J0()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->editorBundle$note_overseasRelease()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    new-instance v8, Lcom/onyx/android/sdk/universal/editor/events/app/StartActivateDocumentEvent;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/app/NoteOverviewStartActivateDocumentEvent;->getDocId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1a

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/onyx/android/sdk/universal/editor/events/app/StartActivateDocumentEvent;-><init>(Ljava/lang/String;Ljava/lang/String;ZLcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {p0, v8}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    return-void
.end method

.method public final onOpenSlideBarEvent(Lcom/onyx/galaxy/note/editor/event/OpenSlideBarEvents;)V
    .locals 3
    .param p1    # Lcom/onyx/galaxy/note/editor/event/OpenSlideBarEvents;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/event/OpenSlideBarEvents;->getSlideBarType()Lcom/onyx/galaxy/note/editor/data/SlideBarType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->K0(Lcom/onyx/galaxy/note/editor/data/SlideBarType;)Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/event/OpenSlideBarEvents;->getSlideBarType()Lcom/onyx/galaxy/note/editor/data/SlideBarType;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->n1(Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;Lcom/onyx/galaxy/note/editor/data/SlideBarType;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/event/OpenSlideBarEvents;->getSlideBarType()Lcom/onyx/galaxy/note/editor/data/SlideBarType;

    move-result-object v2

    invoke-virtual {p0, v1, v0, v2}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->L1(ZLcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;Lcom/onyx/galaxy/note/editor/data/SlideBarType;)V

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/event/OpenSlideBarEvents;->getSubEvent()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$onOpenSlideBarEvent$1$1;

    invoke-direct {v1, p0, p1}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$onOpenSlideBarEvent$1$1;-><init>(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;Lcom/onyx/galaxy/note/editor/event/OpenSlideBarEvents;)V

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->postSelf(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Lcom/onyx/galaxy/note/common/base/BaseFragment;->onPause()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->editorBundle$note_overseasRelease()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getUiBundle()Lcom/onyx/android/sdk/universal/editor/UIBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/UIBundle;->checkUIState()V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->d1:Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/events/app/ActivityPausedEvent;

    invoke-direct {v0}, Lcom/onyx/android/sdk/universal/editor/events/app/ActivityPausedEvent;-><init>()V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->postEvent(Ljava/lang/Object;)V

    sget-object p0, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/GlobalBundle;

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/events/app/CancelFingerClickTimerEvent;

    invoke-direct {v0}, Lcom/onyx/android/sdk/universal/editor/events/app/CancelFingerClickTimerEvent;-><init>()V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->postEvent(Ljava/lang/Object;)V

    return-void
.end method

.method public final onPickFileToInsertPagesEvent(Lcom/onyx/android/sdk/universal/editor/events/note/PickFileToInsertPagesEvent;)V
    .locals 4
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/PickFileToInsertPagesEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/filepicker/FilePickerBuilder;->Companion:Lcom/onyx/android/sdk/filepicker/FilePickerBuilder$Companion;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/filepicker/FilePickerBuilder$Companion;->getInstance()Lcom/onyx/android/sdk/filepicker/FilePickerBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/filepicker/FilePickerBuilder;->onlyPdf()Lcom/onyx/android/sdk/filepicker/FilePickerBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/filepicker/FilePickerBuilder;->multiEnable(Z)Lcom/onyx/android/sdk/filepicker/FilePickerBuilder;

    move-result-object v0

    sget-object v2, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v3, Lcom/onyx/galaxy/note/R$integer;->file_picker_insert_page_max_count:I

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/base/utils/ResManager;->getInteger(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/filepicker/FilePickerBuilder;->setMaxSelectCount(I)Lcom/onyx/android/sdk/filepicker/FilePickerBuilder;

    move-result-object v0

    new-instance v2, Lcom/onyx/android/sdk/filepicker/FilePickerArgs;

    invoke-direct {v2}, Lcom/onyx/android/sdk/filepicker/FilePickerArgs;-><init>()V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/PickFileToInsertPagesEvent;->getInsertPageIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/filepicker/FilePickerArgs;->setInsertPageIndex(I)V

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/filepicker/FilePickerBuilder;->addFilePickerPageArgs(Lcom/onyx/android/sdk/filepicker/FilePickerArgs;)Lcom/onyx/android/sdk/filepicker/FilePickerBuilder;

    move-result-object v0

    new-instance v2, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$onPickFileToInsertPagesEvent$2;

    invoke-direct {v2, p1}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$onPickFileToInsertPagesEvent$2;-><init>(Lcom/onyx/android/sdk/universal/editor/events/note/PickFileToInsertPagesEvent;)V

    const/16 p1, 0x7e5

    invoke-virtual {v0, p0, v1, p1, v2}, Lcom/onyx/android/sdk/filepicker/FilePickerBuilder;->pickFile(Landroidx/fragment/app/Fragment;ZILkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public final onPickImagesToInsertPagesEvent(Lcom/onyx/android/sdk/universal/editor/events/note/PickImagesToInsertPagesEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/PickImagesToInsertPagesEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/onyx/android/sdk/matisse/Matisse;->from(Landroidx/fragment/app/Fragment;)Lcom/onyx/android/sdk/matisse/Matisse;

    move-result-object p0

    const-string p1, "from(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/onyx/galaxy/note/common/extension/MatisseKt;->buildSelectionCreator(Lcom/onyx/android/sdk/matisse/Matisse;)Lcom/onyx/android/sdk/matisse/SelectionCreator;

    move-result-object p0

    const/16 p1, 0x3eb

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/matisse/SelectionCreator;->forResult(I)V

    return-void
.end method

.method public final onPickerInsertImageShapeEvent(Lcom/onyx/android/sdk/universal/editor/events/note/PickInsertImageShapesEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/PickInsertImageShapesEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/onyx/android/sdk/matisse/Matisse;->from(Landroidx/fragment/app/Fragment;)Lcom/onyx/android/sdk/matisse/Matisse;

    move-result-object p0

    const-string v0, "from(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/onyx/galaxy/note/common/extension/MatisseKt;->buildSelectionCreator(Lcom/onyx/android/sdk/matisse/Matisse;)Lcom/onyx/android/sdk/matisse/SelectionCreator;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/PickInsertImageShapesEvent;->getRequestCode()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/matisse/SelectionCreator;->forResult(I)V

    return-void
.end method

.method public final onQuitNoteDocumentEvent(Lcom/onyx/android/sdk/universal/editor/events/note/QuitNoteDocumentEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/QuitNoteDocumentEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->y1()V

    return-void
.end method

.method public final onQuitPendingHandlerEvent(Lcom/onyx/android/sdk/universal/editor/events/note/QuitPendingHandlerEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/QuitPendingHandlerEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->closeSelectionMenu$note_overseasRelease()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->J0()V

    return-void
.end method

.method public final onReLockNoteEvent(Lcom/onyx/galaxy/note/editor/event/ReLockNoteEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/editor/event/ReLockNoteEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->editorBundle$note_overseasRelease()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p1

    invoke-static {p1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->docId(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->d2(Ljava/lang/String;)V

    return-void
.end method

.method public final onRequestPermissionEvent(Lcom/onyx/android/sdk/universal/editor/events/app/RequestPermissionEvent;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/app/RequestPermissionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/permissionx/guolindev/PermissionX;->init(Landroidx/fragment/app/Fragment;)Lcom/permissionx/guolindev/PermissionMediator;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/app/RequestPermissionEvent;->getPermissionList()Ljava/util/LinkedHashSet;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/permissionx/guolindev/PermissionMediator;->permissions(Ljava/util/List;)Lcom/permissionx/guolindev/request/PermissionBuilder;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/h1k;

    invoke-direct {v1, p0, p1}, Lcom/sunia/HTREnginev2/h1k;-><init>(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;Lcom/onyx/android/sdk/universal/editor/events/app/RequestPermissionEvent;)V

    invoke-virtual {v0, v1}, Lcom/permissionx/guolindev/request/PermissionBuilder;->request(Lcom/permissionx/guolindev/callback/RequestCallback;)V

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/onyx/galaxy/note/common/base/BaseFragment;->onResume()V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->d1:Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/events/app/ActivityResumeEvent;

    invoke-direct {v1}, Lcom/onyx/android/sdk/universal/editor/events/app/ActivityResumeEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->postEvent(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->C1()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "outState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->f1:Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v2, Lcom/onyx/android/sdk/data/utils/JSONUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/JSONUtils;

    sget-object v3, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;->Companion:Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs$Companion;

    invoke-virtual {v3, v0}, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs$Companion;->createFrom(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "args"

    invoke-virtual {v1, v2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getViewModel()Lcom/onyx/galaxy/note/editor/viewmodel/NoteScribbleViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/viewmodel/NoteScribbleViewModel;->getTakePicturePath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "take_picture"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public final onScaleBeginEvent(Lcom/onyx/android/sdk/universal/editor/events/app/ScaleBeginEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/app/ScaleBeginEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->S0()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->J0()V

    return-void
.end method

.method public final onScreenOffEvent(Lcom/onyx/galaxy/note/receiver/ScreenOffEvent;)V
    .locals 0
    .param p1    # Lcom/onyx/galaxy/note/receiver/ScreenOffEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string p0, "event"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/galaxy/note/utils/AutoReLockNoteManager;->INSTANCE:Lcom/onyx/galaxy/note/utils/AutoReLockNoteManager;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/utils/AutoReLockNoteManager;->onScreenOffEvent()V

    return-void
.end method

.method public final onScreenOnEvent(Lcom/onyx/galaxy/note/receiver/ScreenOnEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/receiver/ScreenOnEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->editorBundle$note_overseasRelease()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p1

    invoke-static {p1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->docId(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->d2(Ljava/lang/String;)V

    return-void
.end method

.method public final onScrollBeginEvent(Lcom/onyx/android/sdk/universal/editor/events/app/ScrollBeginEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/app/ScrollBeginEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->S0()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->J0()V

    return-void
.end method

.method public final onShapeHandlerChangedEvent(Lcom/onyx/android/sdk/universal/editor/events/note/ShapeHandlerChangedEvent;)V
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/ShapeHandlerChangedEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/ShapeHandlerChangedEvent;->getUpdateToolbar()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/ShapeHandlerChangedEvent;->getActiveProviderName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->l2(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->editorBundle$note_overseasRelease()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getUiBundle()Lcom/onyx/android/sdk/universal/editor/UIBundle;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/UIBundle;->getHandlerManager()Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->getShapeHandlerManager()Lcom/onyx/android/sdk/universal/editor/handler/shape/ShapeHandlerManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/handler/shape/ShapeHandlerManager;->isTextInputHandler()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->inputTextLayout:Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrGone(Landroid/view/View;Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->shapeAndTool:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;->getToolDragView()Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->updateBottomYOffset(F)V

    :cond_1
    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/handler/shape/ShapeHandlerManager;->isTransformHandler()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/handler/shape/ShapeHandlerManager;->isSelectionHandler()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/handler/shape/ShapeHandlerManager;->isAnnotationSelection()Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    if-nez v1, :cond_4

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getSelectionMenuView$note_overseasRelease()Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->cancel()V

    :cond_4
    return-void
.end method

.method public final onShapeToolTypeRecoverEvent(Lcom/onyx/android/sdk/universal/editor/events/note/ShapeToolTypeRecoverEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/ShapeToolTypeRecoverEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->shapeAndTool:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;

    sget-object p1, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$onShapeToolTypeRecoverEvent$1;->INSTANCE:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$onShapeToolTypeRecoverEvent$1;

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->postSelf(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final onShapeToolbarChangeEvent(Lcom/onyx/galaxy/note/editor/event/ShapeToolbarChangeEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/editor/event/ShapeToolbarChangeEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getPenViewModel$note_overseasRelease()Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;->loadShapeToolbar()V

    return-void
.end method

.method public final onShowQuotePopupEvent(Lcom/onyx/android/sdk/universal/editor/events/note/ShowQuotePopupEvent;)V
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/ShowQuotePopupEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/popup/QuotePopup;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "requireContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->editorBundle$note_overseasRelease()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/ShowQuotePopupEvent;->getArgs()Lcom/onyx/android/sdk/universal/editor/events/note/ShowQuotePopupArgs;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lcom/onyx/galaxy/note/editor/view/popup/QuotePopup;-><init>(Landroid/content/Context;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/events/note/ShowQuotePopupArgs;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->d1:Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->focusEditorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/galaxy/note/editor/view/popup/QuotePopup;->show(Landroid/view/View;)V

    return-void
.end method

.method public final onShowShortcutBarCustomPopupEvent(Lcom/onyx/galaxy/note/editor/event/ShowShortcutBarCustomPopupEvent;)V
    .locals 3
    .param p1    # Lcom/onyx/galaxy/note/editor/event/ShowShortcutBarCustomPopupEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->leftSideBarLayout:Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->isVisible(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    sget-object v2, Lcom/onyx/galaxy/note/editor/data/SlideBarType;->SLIDE_OUTLINE:Lcom/onyx/galaxy/note/editor/data/SlideBarType;

    invoke-virtual {p0, v0, p1, v2}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->L1(ZLcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;Lcom/onyx/galaxy/note/editor/data/SlideBarType;)V

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->rightSideBarLayout:Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->isVisible(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v1, p1

    :cond_2
    if-eqz v1, :cond_3

    sget-object p1, Lcom/onyx/galaxy/note/editor/data/SlideBarType;->SLIDE_OUTLINE:Lcom/onyx/galaxy/note/editor/data/SlideBarType;

    invoke-virtual {p0, v0, v1, p1}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->L1(ZLcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;Lcom/onyx/galaxy/note/editor/data/SlideBarType;)V

    :cond_3
    return-void
.end method

.method public final onShowTagShapePopupEvent(Lcom/onyx/android/sdk/universal/editor/events/app/ShowTagShapePopupEvent;)V
    .locals 4
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/app/ShowTagShapePopupEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/popup/TagShapePopup;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "requireContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->editorBundle$note_overseasRelease()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/app/ShowTagShapePopupEvent;->getBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v3

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/app/ShowTagShapePopupEvent;->getShape()Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object p1

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/onyx/galaxy/note/editor/view/popup/TagShapePopup;-><init>(Landroid/content/Context;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Lcom/onyx/android/sdk/note/common/shape/Shape;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->d1:Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->focusEditorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/galaxy/note/editor/view/popup/TagShapePopup;->show(Landroid/view/View;)V

    return-void
.end method

.method public onStop()V
    .locals 5

    invoke-super {p0}, Lcom/onyx/galaxy/note/common/base/BaseFragment;->onStop()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->J0()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sget-object v1, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/AnyKt;->toSimpleNameString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onStop, isFinishing = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3, v4}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->d1:Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->saveDocument()V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->d1:Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/events/app/ActivityStopEvent;

    invoke-direct {v0}, Lcom/onyx/android/sdk/universal/editor/events/app/ActivityStopEvent;-><init>()V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->postEvent(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public final onSwitchExcerptTypeEvent(Lcom/onyx/android/sdk/universal/editor/events/note/SwitchExcerptTypeEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/SwitchExcerptTypeEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->shapeAndTool:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;->updateExcerptTypeUi()V

    return-void
.end method

.method public final onTextInputToolViewVisibleChangeEvent(Lcom/onyx/android/sdk/universal/editor/events/note/TextToolViewVisibleChangeEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/TextToolViewVisibleChangeEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->shapeAndTool:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;->getToolDragView()Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/TextToolViewVisibleChangeEvent;->getDisplayHeight()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->updateBottomYOffset(F)V

    return-void
.end method

.method public final onUpdateAllLockedNotePasswordEvent(Lcom/onyx/galaxy/note/editor/event/UpdateAllLockedNotePasswordEvent;)V
    .locals 2
    .param p1    # Lcom/onyx/galaxy/note/editor/event/UpdateAllLockedNotePasswordEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/galaxy/note/category/action/UpdateEditorNoteModelEncryptionAction;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->editorBundle$note_overseasRelease()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/event/UpdateAllLockedNotePasswordEvent;->getPassword()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/onyx/galaxy/note/category/action/UpdateEditorNoteModelEncryptionAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$l;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$l;-><init>(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final onUserNoteListImportedEvent(Lcom/onyx/android/sdk/universal/editor/events/app/UserNoteListImportedEvent;)V
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/app/UserNoteListImportedEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getViewModel()Lcom/onyx/galaxy/note/editor/viewmodel/NoteScribbleViewModel;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->d1:Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/app/UserNoteListImportedEvent;->getCopyNoteListArgs()Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteListArgs;

    move-result-object p1

    new-instance v2, Lcom/sunia/HTREnginev2/m1k;

    invoke-direct {v2, p0}, Lcom/sunia/HTREnginev2/m1k;-><init>(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;)V

    invoke-virtual {v0, v1, p1, v2}, Lcom/onyx/galaxy/note/editor/viewmodel/NoteScribbleViewModel;->onUserNoteListImported(Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteListArgs;Lio/reactivex/rxjava3/functions/Consumer;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lcom/onyx/galaxy/note/common/base/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->F1()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->E1()V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->f1:Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    const-string p1, ""

    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-nez p2, :cond_2

    const/4 p2, 0x1

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    :goto_1
    if-eqz p2, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_3
    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->c2(Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance p2, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$m;

    invoke-direct {p2, p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$m;-><init>(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;)V

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance p2, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$n;

    invoke-direct {p2, p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$n;-><init>(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;)V

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance p2, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$o;

    invoke-direct {p2, p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$o;-><init>(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;)V

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    const-string p0, "doOnNext(...)"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->subscribeWithDefault$default(Lio/reactivex/rxjava3/core/Observable;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onViewStateRestored(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->J1(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public final p1()V
    .locals 2

    new-instance v0, Lcom/onyx/galaxy/note/editor/event/ContainerRectChangedEvent;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getEditorContainerRect$note_overseasRelease()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/onyx/galaxy/note/editor/event/ContainerRectChangedEvent;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->editorBundle$note_overseasRelease()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    sget-object p0, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/GlobalBundle;

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->postEvent(Ljava/lang/Object;)V

    return-void
.end method

.method public final q1(Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->f1:Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->I0()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/events/app/NoteTabDataChangedEvent;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->editorBundle$note_overseasRelease()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-direct {v2, p0, v0, p1}, Lcom/onyx/android/sdk/universal/editor/events/app/NoteTabDataChangedEvent;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;)V

    invoke-static {v1, v2}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    return-void
.end method

.method public final s1()V
    .locals 5

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getViewModel()Lcom/onyx/galaxy/note/editor/viewmodel/NoteScribbleViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/viewmodel/NoteScribbleViewModel;->getTakePicturePath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v2

    :goto_1
    if-eqz v3, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getViewModel()Lcom/onyx/galaxy/note/editor/viewmodel/NoteScribbleViewModel;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/onyx/galaxy/note/editor/viewmodel/NoteScribbleViewModel;->setTakePicturePath(Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    new-array v2, v2, [Landroid/net/Uri;

    aput-object v0, v2, v1

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->editorBundle$note_overseasRelease()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/events/note/InsertImagesEvent;

    invoke-direct {v1, v0}, Lcom/onyx/android/sdk/universal/editor/events/note/InsertImagesEvent;-><init>(Ljava/util/List;)V

    invoke-static {p0, v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public final setBinding$note_overseasRelease(Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->binding:Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    return-void
.end method

.method public final setEditorBundleManager$note_overseasRelease(Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->d1:Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;

    return-void
.end method

.method public final setPenViewModel$note_overseasRelease(Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->penViewModel:Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;

    return-void
.end method

.method public final setSideLayoutAnim(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->h1:Z

    return-void
.end method

.method public final setViewModel(Lcom/onyx/galaxy/note/editor/viewmodel/NoteScribbleViewModel;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/editor/viewmodel/NoteScribbleViewModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->viewModel:Lcom/onyx/galaxy/note/editor/viewmodel/NoteScribbleViewModel;

    return-void
.end method

.method public splitScreen(Landroid/view/View;Lcom/onyx/android/sdk/universal/editor/config/SplitScreenPosition;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/universal/editor/config/SplitScreenPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "editorView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "position"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->shapeAndTool:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;->getSplitScreenLayout()Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->splitScreen(Landroid/view/View;Lcom/onyx/android/sdk/universal/editor/config/SplitScreenPosition;)V

    return-void
.end method

.method public final switchToLastTool$note_overseasRelease()V
    .locals 3

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getPenViewModel$note_overseasRelease()Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;->getLastPenType()Lcom/onyx/galaxy/note/editor/data/PenContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/data/PenContext;->isInvalid()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getPenViewModel$note_overseasRelease()Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;->getLastPenType()Lcom/onyx/galaxy/note/editor/data/PenContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/data/PenContext;->getLastShapeTool()Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getPenViewModel$note_overseasRelease()Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;->getLastPenType()Lcom/onyx/galaxy/note/editor/data/PenContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/data/PenContext;->getLastShapeTool()Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->ensureSwitchUserTool$note_overseasRelease(Lcom/onyx/galaxy/note/editor/data/ShapeToolType;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getPenViewModel$note_overseasRelease()Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;->getLastPenType()Lcom/onyx/galaxy/note/editor/data/PenContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/data/PenContext;->getLastPenId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager;->Companion:Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager$Companion;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager$Companion;->hasPenBox()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    invoke-static {v0, v2, v1, v2}, Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager$Companion;->getPenBox$default(Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager$Companion;Ljava/lang/String;ILjava/lang/Object;)Lcom/onyx/android/sdk/replicator/note/data/pen/PencilBox;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getPenViewModel$note_overseasRelease()Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;->getLastPenType()Lcom/onyx/galaxy/note/editor/data/PenContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/data/PenContext;->getLastPenId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/replicator/note/data/pen/PencilBox;->getPenArgsById(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->editorBundle$note_overseasRelease()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    new-instance v0, Lcom/onyx/android/sdk/universal/common/events/ShowPenBoxEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v1}, Lcom/onyx/android/sdk/universal/common/events/ShowPenBoxEvent;-><init>(Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;Z)V

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public final t0(Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;)V
    .locals 9

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->J0()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->editorBundle$note_overseasRelease()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    new-instance v8, Lcom/onyx/android/sdk/universal/editor/events/app/StartActivateDocumentEvent;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1a

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/onyx/android/sdk/universal/editor/events/app/StartActivateDocumentEvent;-><init>(Ljava/lang/String;Ljava/lang/String;ZLcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {p0, v8}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    return-void
.end method

.method public final u0()V
    .locals 3

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->shapeAndTool:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->editorBundle$note_overseasRelease()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;->setEditorBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->funcLayout:Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->editorBundle$note_overseasRelease()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->setEditorBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->v0()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->editorBundle$note_overseasRelease()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/common/events/ReactivePenBoxEvent;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2}, Lcom/onyx/android/sdk/universal/common/events/ReactivePenBoxEvent;-><init>(ZZ)V

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;->getEditTouchMode$default(Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;Ljava/lang/String;ILjava/lang/Object;)Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->editorBundle$note_overseasRelease()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/events/note/ChangeTouchModeEvent;

    invoke-direct {v1, v0, v0}, Lcom/onyx/android/sdk/universal/editor/events/note/ChangeTouchModeEvent;-><init>(Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;)V

    invoke-static {p0, v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    return-void
.end method

.method public final u1()V
    .locals 3

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getRootLocation$note_overseasRelease()[I

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/GlobalBundle;

    new-instance v2, Lcom/onyx/galaxy/note/editor/event/WindowLocationChangedEvent;

    invoke-direct {v2, v0}, Lcom/onyx/galaxy/note/editor/event/WindowLocationChangedEvent;-><init>([I)V

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->postEvent(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->editorBundle$note_overseasRelease()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->shapeHandlerManager(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/universal/editor/handler/shape/ShapeHandlerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/ShapeHandlerManager;->isTextInputHandler()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->J0()V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getTextBox$note_overseasRelease()Lcom/onyx/android/sdk/textbox/widget/TextBoxView;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->isVisible(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->inputTextLayout:Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;->getTextInputHelper()Lcom/onyx/android/sdk/universal/editor/helper/TextInputHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/helper/TextInputHelper;->resetLimitRect()V

    :cond_2
    return-void
.end method

.method public final v0()V
    .locals 4

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->inputTextLayout:Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;->getTextInputHelper()Lcom/onyx/android/sdk/universal/editor/helper/TextInputHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/helper/TextInputHelper;->getTextShape()Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->editorBundle$note_overseasRelease()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/universal/editor/helper/TextInputHelper;->isEditorBundleChanges(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/GlobalBundle;

    new-instance v2, Lcom/onyx/galaxy/note/editor/event/ForceCloseKeyboardEvent;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/helper/TextInputHelper;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/onyx/galaxy/note/editor/event/ForceCloseKeyboardEvent;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->postEvent(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/helper/TextInputHelper;->saveTextShape()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/j1k;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/j1k;-><init>(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doFinally(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final v1()V
    .locals 5

    sget-object v0, Lcom/onyx/android/sdk/data/utils/JSONUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/JSONUtils;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string v3, "args"

    invoke-virtual {v1, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    const-class v3, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;

    invoke-virtual {v0, v1, v3}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;->setDoAnimation(Z)V

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;->setPreLoadData(Z)V

    new-instance v3, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    invoke-direct {v3}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;-><init>()V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;->getDocumentId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->setUniqueId(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->f1:Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->editorBundle$note_overseasRelease()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    sget-object v3, Lcom/onyx/android/sdk/universal/editor/events/app/StartActivateDocumentEvent;->Companion:Lcom/onyx/android/sdk/universal/editor/events/app/StartActivateDocumentEvent$Companion;

    const/4 v4, 0x2

    invoke-static {v3, v0, v1, v4, v2}, Lcom/onyx/android/sdk/universal/editor/events/app/StartActivateDocumentEvent$Companion;->createFrom$default(Lcom/onyx/android/sdk/universal/editor/events/app/StartActivateDocumentEvent$Companion;Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;ZILjava/lang/Object;)Lcom/onyx/android/sdk/universal/editor/events/app/StartActivateDocumentEvent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public final w1()V
    .locals 4

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->editorBundle$note_overseasRelease()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/events/app/EditorCreatedEvent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v2

    const-string v3, "<get-lifecycle>(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v2, p0}, Lcom/onyx/android/sdk/universal/editor/events/app/EditorCreatedEvent;-><init>(Landroidx/lifecycle/Lifecycle;Landroidx/activity/result/ActivityResultCaller;)V

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    return-void
.end method

.method public final x0()V
    .locals 4

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getPenViewModel$note_overseasRelease()Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;->getPenType()Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    sget-object v0, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$activateShapeHandler$shapeToolType$1;->INSTANCE:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$activateShapeHandler$shapeToolType$1;

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/base/extension/AnyKt;->getOrElse(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "getOrElse(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    sget-object v0, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->INSTANCE:Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/events/note/ActivateShapeHandlerEvent;

    sget-object v2, Lcom/onyx/galaxy/note/editor/data/ShapeToolType;->Companion:Lcom/onyx/galaxy/note/editor/data/ShapeToolType$Companion;

    invoke-virtual {v2, p0}, Lcom/onyx/galaxy/note/editor/data/ShapeToolType$Companion;->toShapeHandlerProviderName(Lcom/onyx/galaxy/note/editor/data/ShapeToolType;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/data/ShapeToolType;->getShapeType()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, p0}, Lcom/onyx/android/sdk/universal/editor/events/note/ActivateShapeHandlerEvent;-><init>(Ljava/lang/String;ZLjava/lang/Integer;)V

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->postEvent(Ljava/lang/Object;)V

    return-void
.end method

.method public final x1(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V
    .locals 3

    new-instance p0, Lcom/onyx/android/sdk/universal/editor/events/note/QuitExcerptSelectionEvent;

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1, v0}, Lcom/onyx/android/sdk/universal/editor/events/note/QuitExcerptSelectionEvent;-><init>(ZLkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {p1, p0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    return-void
.end method

.method public final y0()V
    .locals 2

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->d1:Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->getEditorViewHandlers()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->z0(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final y1()V
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final z0(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V
    .locals 4

    new-instance v0, Lcom/onyx/galaxy/note/editor/api/ContentApiSubscriber;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getViewModel()Lcom/onyx/galaxy/note/editor/viewmodel/NoteScribbleViewModel;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/onyx/galaxy/note/editor/api/ContentApiSubscriber;-><init>(Lcom/onyx/galaxy/note/editor/viewmodel/NoteScribbleViewModel;Lcom/onyx/galaxy/note/common/extension/LifecycleEventListener;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "requireContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$a;

    invoke-direct {v3, v0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$a;-><init>(Lcom/onyx/galaxy/note/editor/api/ContentApiSubscriber;)V

    invoke-static {p0, v1, v3}, Lcom/onyx/android/sdk/base/extension/FragmentKt;->screenCapture(Landroidx/fragment/app/Fragment;Landroid/content/Context;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/editor/api/ContentApiSubscriber;->setScreenCaptureLauncher(Landroidx/activity/result/ActivityResultLauncher;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$b;

    invoke-direct {v2, v0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$b;-><init>(Lcom/onyx/galaxy/note/editor/api/ContentApiSubscriber;)V

    invoke-static {p0, v1, v2}, Lcom/onyx/android/sdk/base/extension/FragmentKt;->screenCapture(Landroidx/fragment/app/Fragment;Landroid/content/Context;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/editor/api/ContentApiSubscriber;->setScreenBitmapCaptureLauncher(Landroidx/activity/result/ActivityResultLauncher;)V

    new-instance v1, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$c;

    invoke-direct {v1, v0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$c;-><init>(Lcom/onyx/galaxy/note/editor/api/ContentApiSubscriber;)V

    invoke-static {p0, v1}, Lcom/onyx/android/sdk/base/extension/FragmentKt;->takePicture(Landroidx/fragment/app/Fragment;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/editor/api/ContentApiSubscriber;->setTakePictureLauncher(Landroidx/activity/result/ActivityResultLauncher;)V

    new-instance v1, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$d;

    invoke-direct {v1, v0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$d;-><init>(Lcom/onyx/galaxy/note/editor/api/ContentApiSubscriber;)V

    invoke-static {p0, v1}, Lcom/onyx/android/sdk/base/extension/FragmentKt;->getMultipleContents(Landroidx/fragment/app/Fragment;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/editor/api/ContentApiSubscriber;->setGetImageContentLauncher(Landroidx/activity/result/ActivityResultLauncher;)V

    new-instance v1, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$e;

    invoke-direct {v1, v0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$e;-><init>(Lcom/onyx/galaxy/note/editor/api/ContentApiSubscriber;)V

    invoke-static {p0, v1}, Lcom/onyx/android/sdk/base/extension/FragmentKt;->getMultipleContents(Landroidx/fragment/app/Fragment;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/editor/api/ContentApiSubscriber;->setGetImageStickerContentLauncher(Landroidx/activity/result/ActivityResultLauncher;)V

    new-instance v1, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$f;

    invoke-direct {v1, v0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$f;-><init>(Lcom/onyx/galaxy/note/editor/api/ContentApiSubscriber;)V

    invoke-static {p0, v1}, Lcom/onyx/android/sdk/base/extension/FragmentKt;->getSingleDocuments(Landroidx/fragment/app/Fragment;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/editor/api/ContentApiSubscriber;->setGetFilePageContentLauncher(Landroidx/activity/result/ActivityResultLauncher;)V

    new-instance v1, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$g;

    invoke-direct {v1, v0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$g;-><init>(Lcom/onyx/galaxy/note/editor/api/ContentApiSubscriber;)V

    invoke-static {p0, v1}, Lcom/onyx/android/sdk/base/extension/FragmentKt;->getMultipleContents(Landroidx/fragment/app/Fragment;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/editor/api/ContentApiSubscriber;->setGetImagePageContentLauncher(Landroidx/activity/result/ActivityResultLauncher;)V

    new-instance v1, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$h;

    invoke-direct {v1, v0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$h;-><init>(Lcom/onyx/galaxy/note/editor/api/ContentApiSubscriber;)V

    invoke-static {p0, v1}, Lcom/onyx/android/sdk/base/extension/FragmentKt;->takePicture(Landroidx/fragment/app/Fragment;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/galaxy/note/editor/api/ContentApiSubscriber;->setTakePicturePageLauncher(Landroidx/activity/result/ActivityResultLauncher;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getUiBundle()Lcom/onyx/android/sdk/universal/editor/UIBundle;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/UIBundle;->getApiManager()Lcom/onyx/android/sdk/universal/editor/api/ApiSubscribeManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/api/ApiSubscribeManager;->addApiSubscriber(Lcom/onyx/android/sdk/universal/editor/api/BaseApiSubscriber;)V

    return-void
.end method

.method public final z1(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V
    .locals 3

    new-instance p0, Lcom/onyx/android/sdk/universal/editor/events/note/QuitTransformEvent;

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Lcom/onyx/android/sdk/universal/editor/events/note/QuitTransformEvent;-><init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {p1, p0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    return-void
.end method
