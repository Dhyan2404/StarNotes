.class public abstract Lcom/onyx/android/sdk/note/common/shape/BaseShape;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/android/sdk/note/common/shape/Shape;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/note/common/shape/BaseShape$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00e6\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008?\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010!\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0019\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u001c\u0008&\u0018\u0000 \u009d\u00022\u00020\u0001:\u0002\u009d\u0002B\t\u00a2\u0006\u0006\u0008\u009b\u0002\u0010\u009c\u0002J\u0008\u0010\u0003\u001a\u00020\u0002H\u0016J\u0008\u0010\u0004\u001a\u00020\u0002H\u0016J\u0008\u0010\u0005\u001a\u00020\u0002H\u0016J\u0008\u0010\u0006\u001a\u00020\u0002H\u0016J\u0008\u0010\u0008\u001a\u00020\u0007H\u0016J\u0008\u0010\t\u001a\u00020\u0002H\u0016J\u0018\u0010\r\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\nH\u0016J\u0012\u0010\u000e\u001a\u0004\u0018\u00010\n2\u0006\u0010\u000b\u001a\u00020\nH\u0016J\u0018\u0010\u000f\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\nH\u0016J\u0010\u0010\u0010\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\nH\u0016J\u0010\u0010\u0013\u001a\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u0011H\u0016J\u0008\u0010\u0014\u001a\u00020\u0002H\u0016J\u0018\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0017\u001a\u00020\u0015H\u0016J \u0010\u001b\u001a\u00020\u00182\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0017\u001a\u00020\u00152\u0006\u0010\u001a\u001a\u00020\u0015H\u0016J(\u0010\u001b\u001a\u00020\u00182\u0006\u0010\u001c\u001a\u00020\u00152\u0006\u0010\u001d\u001a\u00020\u00152\u0006\u0010\u001e\u001a\u00020\u00152\u0006\u0010\u001f\u001a\u00020\u0015H\u0016J\u0018\u0010 \u001a\u00020\u00182\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u001a\u001a\u00020\u0015H\u0016J2\u0010#\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\"\u0018\u00010!2\u0006\u0010\u001c\u001a\u00020\u00152\u0006\u0010\u001d\u001a\u00020\u00152\u0006\u0010\u001e\u001a\u00020\u00152\u0006\u0010\u001f\u001a\u00020\u0015H\u0016J \u0010$\u001a\u00020\u00182\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0017\u001a\u00020\u00152\u0006\u0010\u001a\u001a\u00020\u0015H\u0016J\u0010\u0010(\u001a\u00020\'2\u0006\u0010&\u001a\u00020%H\u0016J\u0018\u0010+\u001a\u00020\u00022\u0006\u0010)\u001a\u00020\"2\u0006\u0010*\u001a\u00020\"H\u0016J\u0018\u0010,\u001a\u00020\u00022\u0006\u0010)\u001a\u00020\"2\u0006\u0010*\u001a\u00020\"H\u0016J\u0018\u0010-\u001a\u00020\u00022\u0006\u0010)\u001a\u00020\"2\u0006\u0010*\u001a\u00020\"H\u0016J\u0018\u00100\u001a\u00020\u00022\u0006\u0010.\u001a\u00020\u00152\u0006\u0010/\u001a\u00020\u0015H\u0016J\u0018\u00104\u001a\u00020\u00022\u0006\u00101\u001a\u00020\u00152\u0006\u00103\u001a\u000202H\u0016J\u0018\u00105\u001a\u00020\u00022\u0006\u00101\u001a\u00020\u00152\u0006\u00103\u001a\u000202H\u0016J\u0018\u00109\u001a\u00020\u00022\u0006\u00107\u001a\u0002062\u0006\u00108\u001a\u00020\u0015H\u0016J \u0010=\u001a\u00020\u00022\u0006\u0010:\u001a\u00020\u00152\u0006\u0010;\u001a\u00020\u00152\u0006\u0010<\u001a\u00020\u0007H\u0016J\u0010\u0010?\u001a\u00020\u00022\u0006\u0010>\u001a\u00020\u0015H\u0016J\u0008\u0010@\u001a\u00020\u0002H\u0016J\u0008\u0010A\u001a\u00020\u0018H\u0016J\u0008\u0010C\u001a\u00020BH\u0016J\u0010\u0010F\u001a\u00020\u00022\u0006\u0010E\u001a\u00020DH\u0016J\u0010\u0010I\u001a\u00020D2\u0006\u0010H\u001a\u00020GH\u0016J\u0008\u0010J\u001a\u00020\u0002H\u0016J\u0010\u0010K\u001a\u00020\u00182\u0006\u0010H\u001a\u00020GH\u0016J\u0008\u0010L\u001a\u00020\u0002H\u0016J\u0010\u0010M\u001a\u00020\u00182\u0006\u0010H\u001a\u00020GH\u0016J\u0018\u0010P\u001a\u00020\u00022\u0006\u0010H\u001a\u00020G2\u0006\u0010O\u001a\u00020NH\u0016J\u0010\u0010T\u001a\u00020S2\u0006\u0010R\u001a\u00020QH\u0016J\u0008\u0010U\u001a\u00020\u0001H\u0016J\u0010\u0010W\u001a\u00020\u00182\u0006\u0010V\u001a\u00020\u0001H\u0016J\u0010\u0010X\u001a\u00020\u00182\u0006\u0010H\u001a\u00020GH\u0016J\u0018\u0010[\u001a\u00020\u00182\u0006\u0010Z\u001a\u00020Y2\u0006\u0010E\u001a\u00020DH\u0016J\u0006\u0010\\\u001a\u00020\u0015R\"\u00107\u001a\u00020]8\u0016@\u0016X\u0096\u000e\u00a2\u0006\u0012\n\u0004\u0008^\u0010_\u001a\u0004\u0008`\u0010a\"\u0004\u0008b\u0010cR\"\u0010j\u001a\u00020\n8\u0016@\u0016X\u0096\u000e\u00a2\u0006\u0012\n\u0004\u0008d\u0010e\u001a\u0004\u0008f\u0010g\"\u0004\u0008h\u0010iR\"\u0010n\u001a\u00020\n8\u0016@\u0016X\u0096\u000e\u00a2\u0006\u0012\n\u0004\u0008k\u0010e\u001a\u0004\u0008l\u0010g\"\u0004\u0008m\u0010iR\"\u0010r\u001a\u00020\n8\u0016@\u0016X\u0096\u000e\u00a2\u0006\u0012\n\u0004\u0008o\u0010e\u001a\u0004\u0008p\u0010g\"\u0004\u0008q\u0010iR\"\u0010v\u001a\u00020]8\u0016@\u0016X\u0096\u000e\u00a2\u0006\u0012\n\u0004\u0008s\u0010_\u001a\u0004\u0008t\u0010a\"\u0004\u0008u\u0010cR\"\u0010z\u001a\u00020]8\u0016@\u0016X\u0096\u000e\u00a2\u0006\u0012\n\u0004\u0008w\u0010_\u001a\u0004\u0008x\u0010a\"\u0004\u0008y\u0010cR\"\u0010~\u001a\u00020]8\u0016@\u0016X\u0096\u000e\u00a2\u0006\u0012\n\u0004\u0008{\u0010_\u001a\u0004\u0008|\u0010a\"\u0004\u0008}\u0010cR(\u0010\u0085\u0001\u001a\u00020\u00158\u0016@\u0016X\u0096\u000e\u00a2\u0006\u0017\n\u0005\u0008\u007f\u0010\u0080\u0001\u001a\u0006\u0008\u0081\u0001\u0010\u0082\u0001\"\u0006\u0008\u0083\u0001\u0010\u0084\u0001R)\u0010\u008c\u0001\u001a\u00020\u00078\u0016@\u0016X\u0096\u000e\u00a2\u0006\u0018\n\u0006\u0008\u0086\u0001\u0010\u0087\u0001\u001a\u0006\u0008\u0088\u0001\u0010\u0089\u0001\"\u0006\u0008\u008a\u0001\u0010\u008b\u0001R)\u0010\u0090\u0001\u001a\u00020\u00078\u0016@\u0016X\u0096\u000e\u00a2\u0006\u0018\n\u0006\u0008\u008d\u0001\u0010\u0087\u0001\u001a\u0006\u0008\u008e\u0001\u0010\u0089\u0001\"\u0006\u0008\u008f\u0001\u0010\u008b\u0001R(\u0010\u0094\u0001\u001a\u0004\u0018\u00010\n8\u0016@\u0016X\u0096\u000e\u00a2\u0006\u0015\n\u0005\u0008\u0091\u0001\u0010e\u001a\u0005\u0008\u0092\u0001\u0010g\"\u0005\u0008\u0093\u0001\u0010iR(\u0010\u0098\u0001\u001a\u0004\u0018\u00010\n8\u0016@\u0016X\u0096\u000e\u00a2\u0006\u0015\n\u0005\u0008\u0095\u0001\u0010e\u001a\u0005\u0008\u0096\u0001\u0010g\"\u0005\u0008\u0097\u0001\u0010iR&\u0010\u009c\u0001\u001a\u00020]8\u0016@\u0016X\u0096\u000e\u00a2\u0006\u0015\n\u0005\u0008\u0099\u0001\u0010_\u001a\u0005\u0008\u009a\u0001\u0010a\"\u0005\u0008\u009b\u0001\u0010cR*\u0010\u00a4\u0001\u001a\u00030\u009d\u00018\u0016@\u0016X\u0096\u000e\u00a2\u0006\u0018\n\u0006\u0008\u009e\u0001\u0010\u009f\u0001\u001a\u0006\u0008\u00a0\u0001\u0010\u00a1\u0001\"\u0006\u0008\u00a2\u0001\u0010\u00a3\u0001R,\u0010\u00ac\u0001\u001a\u0005\u0018\u00010\u00a5\u00018\u0016@\u0016X\u0096\u000e\u00a2\u0006\u0018\n\u0006\u0008\u00a6\u0001\u0010\u00a7\u0001\u001a\u0006\u0008\u00a8\u0001\u0010\u00a9\u0001\"\u0006\u0008\u00aa\u0001\u0010\u00ab\u0001R(\u0010\u00b0\u0001\u001a\u0004\u0018\u00010\n8\u0016@\u0016X\u0096\u000e\u00a2\u0006\u0015\n\u0005\u0008\u00ad\u0001\u0010e\u001a\u0005\u0008\u00ae\u0001\u0010g\"\u0005\u0008\u00af\u0001\u0010iR2\u0010\u00b8\u0001\u001a\u000b\u0012\u0004\u0012\u00020\n\u0018\u00010\u00b1\u00018\u0016@\u0016X\u0096\u000e\u00a2\u0006\u0018\n\u0006\u0008\u00b2\u0001\u0010\u00b3\u0001\u001a\u0006\u0008\u00b4\u0001\u0010\u00b5\u0001\"\u0006\u0008\u00b6\u0001\u0010\u00b7\u0001R2\u0010\u00bc\u0001\u001a\u000b\u0012\u0004\u0012\u00020\n\u0018\u00010\u00b1\u00018\u0016@\u0016X\u0096\u000e\u00a2\u0006\u0018\n\u0006\u0008\u00b9\u0001\u0010\u00b3\u0001\u001a\u0006\u0008\u00ba\u0001\u0010\u00b5\u0001\"\u0006\u0008\u00bb\u0001\u0010\u00b7\u0001R,\u0010\u00c4\u0001\u001a\u0005\u0018\u00010\u00bd\u00018\u0016@\u0016X\u0096\u000e\u00a2\u0006\u0018\n\u0006\u0008\u00be\u0001\u0010\u00bf\u0001\u001a\u0006\u0008\u00c0\u0001\u0010\u00c1\u0001\"\u0006\u0008\u00c2\u0001\u0010\u00c3\u0001R,\u0010\u00cc\u0001\u001a\u0005\u0018\u00010\u00c5\u00018\u0016@\u0016X\u0096\u000e\u00a2\u0006\u0018\n\u0006\u0008\u00c6\u0001\u0010\u00c7\u0001\u001a\u0006\u0008\u00c8\u0001\u0010\u00c9\u0001\"\u0006\u0008\u00ca\u0001\u0010\u00cb\u0001R+\u0010\u00d3\u0001\u001a\u0004\u0018\u00010D8\u0016@\u0016X\u0096\u000e\u00a2\u0006\u0018\n\u0006\u0008\u00cd\u0001\u0010\u00ce\u0001\u001a\u0006\u0008\u00cf\u0001\u0010\u00d0\u0001\"\u0006\u0008\u00d1\u0001\u0010\u00d2\u0001R(\u0010\u00d7\u0001\u001a\u0004\u0018\u00010\n8\u0016@\u0016X\u0096\u000e\u00a2\u0006\u0015\n\u0005\u0008\u00d4\u0001\u0010e\u001a\u0005\u0008\u00d5\u0001\u0010g\"\u0005\u0008\u00d6\u0001\u0010iR&\u0010\u00db\u0001\u001a\u00020\n8\u0016@\u0016X\u0096\u000e\u00a2\u0006\u0015\n\u0005\u0008\u00d8\u0001\u0010e\u001a\u0005\u0008\u00d9\u0001\u0010g\"\u0005\u0008\u00da\u0001\u0010iR%\u0010\u00de\u0001\u001a\u00020\n8\u0016@\u0016X\u0096\u000e\u00a2\u0006\u0014\n\u0004\u0008\u0016\u0010e\u001a\u0005\u0008\u00dc\u0001\u0010g\"\u0005\u0008\u00dd\u0001\u0010iR+\u0010\u00e5\u0001\u001a\u0005\u0018\u00010\u00df\u00018\u0016@\u0016X\u0096\u000e\u00a2\u0006\u0017\n\u0005\u0008\u0017\u0010\u00e0\u0001\u001a\u0006\u0008\u00e1\u0001\u0010\u00e2\u0001\"\u0006\u0008\u00e3\u0001\u0010\u00e4\u0001R*\u0010\u00e9\u0001\u001a\u00030\u00df\u00018\u0016@\u0016X\u0096\u000e\u00a2\u0006\u0018\n\u0006\u0008\u00e6\u0001\u0010\u00e0\u0001\u001a\u0006\u0008\u00e7\u0001\u0010\u00e2\u0001\"\u0006\u0008\u00e8\u0001\u0010\u00e4\u0001R(\u0010\u00ed\u0001\u001a\u0004\u0018\u00010\n8\u0016@\u0016X\u0096\u000e\u00a2\u0006\u0015\n\u0005\u0008\u00ea\u0001\u0010e\u001a\u0005\u0008\u00eb\u0001\u0010g\"\u0005\u0008\u00ec\u0001\u0010iR,\u0010\u00f5\u0001\u001a\u0005\u0018\u00010\u00ee\u00018\u0016@\u0016X\u0096\u000e\u00a2\u0006\u0018\n\u0006\u0008\u00ef\u0001\u0010\u00f0\u0001\u001a\u0006\u0008\u00f1\u0001\u0010\u00f2\u0001\"\u0006\u0008\u00f3\u0001\u0010\u00f4\u0001R*\u0010\u00fd\u0001\u001a\u00030\u00f6\u00018\u0016@\u0016X\u0096\u000e\u00a2\u0006\u0018\n\u0006\u0008\u00f7\u0001\u0010\u00f8\u0001\u001a\u0006\u0008\u00f9\u0001\u0010\u00fa\u0001\"\u0006\u0008\u00fb\u0001\u0010\u00fc\u0001R*\u0010\u0081\u0002\u001a\u00030\u00f6\u00018\u0016@\u0016X\u0096\u000e\u00a2\u0006\u0018\n\u0006\u0008\u00fe\u0001\u0010\u00f8\u0001\u001a\u0006\u0008\u00ff\u0001\u0010\u00fa\u0001\"\u0006\u0008\u0080\u0002\u0010\u00fc\u0001R*\u0010\u0089\u0002\u001a\u00030\u0082\u00028\u0016@\u0016X\u0096\u000e\u00a2\u0006\u0018\n\u0006\u0008\u0083\u0002\u0010\u0084\u0002\u001a\u0006\u0008\u0085\u0002\u0010\u0086\u0002\"\u0006\u0008\u0087\u0002\u0010\u0088\u0002R)\u0010\u008f\u0002\u001a\u00020\u00118\u0016@\u0016X\u0096\u000e\u00a2\u0006\u0018\n\u0006\u0008\u0080\u0001\u0010\u008a\u0002\u001a\u0006\u0008\u008b\u0002\u0010\u008c\u0002\"\u0006\u0008\u008d\u0002\u0010\u008e\u0002R)\u0010\u0096\u0002\u001a\u00020\"8\u0016@\u0016X\u0096\u000e\u00a2\u0006\u0018\n\u0006\u0008\u0090\u0002\u0010\u0091\u0002\u001a\u0006\u0008\u0092\u0002\u0010\u0093\u0002\"\u0006\u0008\u0094\u0002\u0010\u0095\u0002R)\u0010\u009a\u0002\u001a\u00020\"8\u0016@\u0016X\u0096\u000e\u00a2\u0006\u0018\n\u0006\u0008\u0097\u0002\u0010\u0091\u0002\u001a\u0006\u0008\u0098\u0002\u0010\u0093\u0002\"\u0006\u0008\u0099\u0002\u0010\u0095\u0002\u00a8\u0006\u009e\u0002"
    }
    d2 = {
        "Lcom/onyx/android/sdk/note/common/shape/BaseShape;",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "",
        "ensureShapeUniqueId",
        "ensureDataUniqueId",
        "updateShapeRect",
        "resetShapeRect",
        "Landroid/graphics/RectF;",
        "getPointsBoundingRect",
        "updateShapeTime",
        "",
        "key",
        "value",
        "put",
        "get",
        "putPersistOption",
        "getPersistOption",
        "Lcom/onyx/android/sdk/base/data/TouchPointList;",
        "pointList",
        "addPoints",
        "updatePoints",
        "",
        "x",
        "y",
        "",
        "containPoint",
        "radius",
        "hitTest",
        "x1",
        "y1",
        "x2",
        "y2",
        "hitTestPoints",
        "",
        "Lcom/onyx/android/sdk/base/data/TouchPoint;",
        "hitTestPoint",
        "fastHitTest",
        "Lcom/onyx/android/sdk/note/common/data/erase/EraseBean;",
        "eraseBean",
        "Lcom/onyx/android/sdk/note/common/data/shape/SplitShapeResult;",
        "split",
        "normalizedPoint",
        "screenPoint",
        "onDown",
        "onMove",
        "onUp",
        "dx",
        "dy",
        "onTranslate",
        "angle",
        "Landroid/graphics/PointF;",
        "pivotPoint",
        "onRotate",
        "onPreRotate",
        "Lcom/onyx/android/sdk/geometry/data/MirrorType;",
        "type",
        "translateDistance",
        "onMirror",
        "sx",
        "sy",
        "rectF",
        "onScale",
        "scale",
        "scaleDisplayScale",
        "onRectChanged",
        "isClosedShape",
        "Landroid/graphics/Path;",
        "getPath",
        "Landroid/graphics/Matrix;",
        "matrix",
        "postConcat",
        "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;",
        "renderContext",
        "getRenderMatrix",
        "recycle",
        "prepareRender",
        "clearRender",
        "lowLatencyRender",
        "Lcom/onyx/android/sdk/geometry/data/TouchData;",
        "touchData",
        "onLowLatencyTouchData",
        "Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;",
        "embedShapeBean",
        "Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;",
        "toPdfShape",
        "testData",
        "other",
        "testEqual",
        "isIntersectClipRect",
        "Landroid/graphics/Region;",
        "region",
        "intersectRegion",
        "getTextSize",
        "",
        "a",
        "I",
        "getType",
        "()I",
        "setType",
        "(I)V",
        "b",
        "Ljava/lang/String;",
        "getDocumentUniqueId",
        "()Ljava/lang/String;",
        "setDocumentUniqueId",
        "(Ljava/lang/String;)V",
        "documentUniqueId",
        "c",
        "getPageUniqueId",
        "setPageUniqueId",
        "pageUniqueId",
        "d",
        "getShapeUniqueId",
        "setShapeUniqueId",
        "shapeUniqueId",
        "e",
        "getLayerId",
        "setLayerId",
        "layerId",
        "f",
        "getStrokeColor",
        "setStrokeColor",
        "strokeColor",
        "g",
        "getFillColor",
        "setFillColor",
        "fillColor",
        "h",
        "F",
        "getStrokeWidth",
        "()F",
        "setStrokeWidth",
        "(F)V",
        "strokeWidth",
        "i",
        "Landroid/graphics/RectF;",
        "getBoundingRect",
        "()Landroid/graphics/RectF;",
        "setBoundingRect",
        "(Landroid/graphics/RectF;)V",
        "boundingRect",
        "j",
        "getOriginRect",
        "setOriginRect",
        "originRect",
        "k",
        "getDataUniqueId",
        "setDataUniqueId",
        "dataUniqueId",
        "l",
        "getSubPageUniqueId",
        "setSubPageUniqueId",
        "subPageUniqueId",
        "m",
        "getStatus",
        "setStatus",
        "status",
        "Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;",
        "n",
        "Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;",
        "getShapeCreateArgs",
        "()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;",
        "setShapeCreateArgs",
        "(Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;)V",
        "shapeCreateArgs",
        "Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;",
        "o",
        "Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;",
        "getTextStyle",
        "()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;",
        "setTextStyle",
        "(Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;)V",
        "textStyle",
        "p",
        "getRichText",
        "setRichText",
        "richText",
        "",
        "q",
        "Ljava/util/List;",
        "getTagIdList",
        "()Ljava/util/List;",
        "setTagIdList",
        "(Ljava/util/List;)V",
        "tagIdList",
        "r",
        "getLinkIdList",
        "setLinkIdList",
        "linkIdList",
        "Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeSourceBean;",
        "s",
        "Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeSourceBean;",
        "getShapeSrcBean",
        "()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeSourceBean;",
        "setShapeSrcBean",
        "(Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeSourceBean;)V",
        "shapeSrcBean",
        "Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeReferenceBean;",
        "t",
        "Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeReferenceBean;",
        "getShapeReferenceBean",
        "()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeReferenceBean;",
        "setShapeReferenceBean",
        "(Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeReferenceBean;)V",
        "shapeReferenceBean",
        "u",
        "Landroid/graphics/Matrix;",
        "getShapeMatrix",
        "()Landroid/graphics/Matrix;",
        "setShapeMatrix",
        "(Landroid/graphics/Matrix;)V",
        "shapeMatrix",
        "v",
        "getGroupId",
        "setGroupId",
        "groupId",
        "w",
        "getRevisionId",
        "setRevisionId",
        "revisionId",
        "getInfoRevisionId",
        "setInfoRevisionId",
        "infoRevisionId",
        "Ljava/util/Date;",
        "Ljava/util/Date;",
        "getCreatedAt",
        "()Ljava/util/Date;",
        "setCreatedAt",
        "(Ljava/util/Date;)V",
        "createdAt",
        "z",
        "getUpdatedAt",
        "setUpdatedAt",
        "updatedAt",
        "A",
        "getText",
        "setText",
        "text",
        "Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeExtraBean;",
        "B",
        "Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeExtraBean;",
        "getExtraBean",
        "()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeExtraBean;",
        "setExtraBean",
        "(Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeExtraBean;)V",
        "extraBean",
        "Lcom/onyx/android/sdk/base/utils/OptionsRepo;",
        "C",
        "Lcom/onyx/android/sdk/base/utils/OptionsRepo;",
        "getRuntimeOptions",
        "()Lcom/onyx/android/sdk/base/utils/OptionsRepo;",
        "setRuntimeOptions",
        "(Lcom/onyx/android/sdk/base/utils/OptionsRepo;)V",
        "runtimeOptions",
        "D",
        "getPersistOptions",
        "setPersistOptions",
        "persistOptions",
        "Lcom/onyx/android/sdk/note/common/data/hwr/ShapeHWRBean;",
        "E",
        "Lcom/onyx/android/sdk/note/common/data/hwr/ShapeHWRBean;",
        "getHwrBean",
        "()Lcom/onyx/android/sdk/note/common/data/hwr/ShapeHWRBean;",
        "setHwrBean",
        "(Lcom/onyx/android/sdk/note/common/data/hwr/ShapeHWRBean;)V",
        "hwrBean",
        "Lcom/onyx/android/sdk/base/data/TouchPointList;",
        "getPoints",
        "()Lcom/onyx/android/sdk/base/data/TouchPointList;",
        "setPoints",
        "(Lcom/onyx/android/sdk/base/data/TouchPointList;)V",
        "points",
        "G",
        "Lcom/onyx/android/sdk/base/data/TouchPoint;",
        "getCurrentPoint",
        "()Lcom/onyx/android/sdk/base/data/TouchPoint;",
        "setCurrentPoint",
        "(Lcom/onyx/android/sdk/base/data/TouchPoint;)V",
        "currentPoint",
        "H",
        "getDownPoint",
        "setDownPoint",
        "downPoint",
        "<init>",
        "()V",
        "Companion",
        "sdk-note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/note/common/shape/BaseShape$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final I:Z


# instance fields
.field public A:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public B:Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeExtraBean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public C:Lcom/onyx/android/sdk/base/utils/OptionsRepo;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public D:Lcom/onyx/android/sdk/base/utils/OptionsRepo;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public E:Lcom/onyx/android/sdk/note/common/data/hwr/ShapeHWRBean;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public F:Lcom/onyx/android/sdk/base/data/TouchPointList;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public G:Lcom/onyx/android/sdk/base/data/TouchPoint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public H:Lcom/onyx/android/sdk/base/data/TouchPoint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public a:I

.field public b:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
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

.field public e:I

.field public f:I

.field public g:I

.field public h:F

.field public i:Landroid/graphics/RectF;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public j:Landroid/graphics/RectF;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public k:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public l:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public m:I

.field public n:Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public o:Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public p:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public s:Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeSourceBean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public t:Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeReferenceBean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public u:Landroid/graphics/Matrix;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public v:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public w:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public x:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public y:Ljava/util/Date;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public z:Ljava/util/Date;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/note/common/shape/BaseShape$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/note/common/shape/BaseShape$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->Companion:Lcom/onyx/android/sdk/note/common/shape/BaseShape$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 24

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v1, ""

    iput-object v1, v0, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->d:Ljava/lang/String;

    const/high16 v2, -0x1000000

    iput v2, v0, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->f:I

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v0, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->h:F

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, v0, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->i:Landroid/graphics/RectF;

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, v0, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->j:Landroid/graphics/RectF;

    new-instance v2, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;

    move-object v3, v2

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

    const/16 v19, 0x7fff

    const/16 v20, 0x0

    invoke-direct/range {v3 .. v20}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;-><init>(FFLcom/onyx/android/sdk/replicator/note/data/shape/TiltConfig;Lcom/onyx/android/sdk/replicator/note/data/pen/PenAttrs;FFFFFFFFFZIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v2, v0, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->n:Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;

    iput-object v1, v0, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->w:Ljava/lang/String;

    iput-object v1, v0, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->x:Ljava/lang/String;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    iput-object v1, v0, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->z:Ljava/util/Date;

    new-instance v1, Lcom/onyx/android/sdk/base/utils/OptionsRepo;

    invoke-direct {v1}, Lcom/onyx/android/sdk/base/utils/OptionsRepo;-><init>()V

    iput-object v1, v0, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->C:Lcom/onyx/android/sdk/base/utils/OptionsRepo;

    new-instance v1, Lcom/onyx/android/sdk/base/utils/OptionsRepo;

    invoke-direct {v1}, Lcom/onyx/android/sdk/base/utils/OptionsRepo;-><init>()V

    iput-object v1, v0, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->D:Lcom/onyx/android/sdk/base/utils/OptionsRepo;

    new-instance v1, Lcom/onyx/android/sdk/note/common/data/hwr/ShapeHWRBean;

    invoke-direct {v1}, Lcom/onyx/android/sdk/note/common/data/hwr/ShapeHWRBean;-><init>()V

    iput-object v1, v0, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->E:Lcom/onyx/android/sdk/note/common/data/hwr/ShapeHWRBean;

    new-instance v1, Lcom/onyx/android/sdk/base/data/TouchPointList;

    invoke-direct {v1}, Lcom/onyx/android/sdk/base/data/TouchPointList;-><init>()V

    iput-object v1, v0, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->F:Lcom/onyx/android/sdk/base/data/TouchPointList;

    new-instance v1, Lcom/onyx/android/sdk/base/data/TouchPoint;

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/16 v11, 0x7f

    const/4 v12, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v12}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FFFFIIJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v1, v0, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->G:Lcom/onyx/android/sdk/base/data/TouchPoint;

    new-instance v1, Lcom/onyx/android/sdk/base/data/TouchPoint;

    const/16 v17, 0x0

    const/16 v19, 0x0

    const-wide/16 v20, 0x0

    const/16 v22, 0x7f

    const/16 v23, 0x0

    move-object v13, v1

    invoke-direct/range {v13 .. v23}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FFFFIIJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v1, v0, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->H:Lcom/onyx/android/sdk/base/data/TouchPoint;

    return-void
.end method


# virtual methods
.method public addPoints(Lcom/onyx/android/sdk/base/data/TouchPointList;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/base/data/TouchPointList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "pointList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getPoints()Lcom/onyx/android/sdk/base/data/TouchPointList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/base/data/TouchPointList;->addAll(Lcom/onyx/android/sdk/base/data/TouchPointList;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getPoints()Lcom/onyx/android/sdk/base/data/TouchPointList;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TouchPointList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->updatePoints()V

    return-void
.end method

.method public clearLowLatencyData()V
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/note/common/shape/Shape$DefaultImpls;->clearLowLatencyData(Lcom/onyx/android/sdk/note/common/shape/Shape;)V

    return-void
.end method

.method public clearRender()V
    .locals 0

    return-void
.end method

.method public cloneLowLatencyData(Lcom/onyx/android/sdk/note/common/shape/Shape;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/note/common/shape/Shape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/note/common/shape/Shape$DefaultImpls;->cloneLowLatencyData(Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/note/common/shape/Shape;)V

    return-void
.end method

.method public cloneRenderData(Lcom/onyx/android/sdk/note/common/shape/Shape;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/note/common/shape/Shape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/note/common/shape/Shape$DefaultImpls;->cloneRenderData(Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/note/common/shape/Shape;)V

    return-void
.end method

.method public containPoint(FF)Z
    .locals 8

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->isClosedShape()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget-object v2, Lcom/onyx/android/sdk/note/common/utils/ShapeRegionUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/ShapeRegionUtils;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getPath()Landroid/graphics/Path;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/onyx/android/sdk/note/common/utils/ShapeRegionUtils;->createRegionByPath$default(Lcom/onyx/android/sdk/note/common/utils/ShapeRegionUtils;Landroid/graphics/Path;Landroid/graphics/RectF;ZILjava/lang/Object;)Landroid/graphics/Region;

    move-result-object p0

    float-to-int p1, p1

    float-to-int p2, p2

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Region;->contains(II)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public createGuideLineHandler()Lcom/onyx/android/sdk/note/common/shape/ShapeGuideLineHandler;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Lcom/onyx/android/sdk/note/common/shape/Shape$DefaultImpls;->createGuideLineHandler(Lcom/onyx/android/sdk/note/common/shape/Shape;)Lcom/onyx/android/sdk/note/common/shape/ShapeGuideLineHandler;

    move-result-object p0

    return-object p0
.end method

.method public enableFillColor(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/note/common/shape/Shape$DefaultImpls;->enableFillColor(Lcom/onyx/android/sdk/note/common/shape/Shape;Z)V

    return-void
.end method

.method public ensureDataUniqueId()V
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getDataUniqueId()Ljava/lang/String;

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

    sget-object v0, Lcom/onyx/android/sdk/data/utils/UUIDUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/UUIDUtils;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/utils/UUIDUtils;->rawUUID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->setDataUniqueId(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public ensureShapeSourceBean()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeSourceBean;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Lcom/onyx/android/sdk/note/common/shape/Shape$DefaultImpls;->ensureShapeSourceBean(Lcom/onyx/android/sdk/note/common/shape/Shape;)Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeSourceBean;

    move-result-object p0

    return-object p0
.end method

.method public ensureShapeUniqueId()V
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getShapeUniqueId()Ljava/lang/String;

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

    sget-object v0, Lcom/onyx/android/sdk/data/utils/UUIDUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/UUIDUtils;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/utils/UUIDUtils;->rawUUID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->setShapeUniqueId(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public fastHitTest(FFF)Z
    .locals 2

    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getBoundingRect()Landroid/graphics/RectF;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getStrokeWidth()F

    move-result p0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p0, v1

    invoke-static {v0, p0}, Lcom/onyx/android/sdk/base/extension/RectKt;->expand(Landroid/graphics/RectF;F)Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    sget-object p0, Lcom/onyx/android/sdk/note/common/utils/HitTestUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/HitTestUtils;

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/onyx/android/sdk/note/common/utils/HitTestUtils;->circleRectHitTest(Landroid/graphics/RectF;FFF)Z

    move-result p0

    return p0
.end method

.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getRuntimeOptions()Lcom/onyx/android/sdk/base/utils/OptionsRepo;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1, v0}, Lcom/onyx/android/sdk/base/utils/OptionsRepo;->getString$default(Lcom/onyx/android/sdk/base/utils/OptionsRepo;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getBoundingRect()Landroid/graphics/RectF;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->i:Landroid/graphics/RectF;

    return-object p0
.end method

.method public getCreatedAt()Ljava/util/Date;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->y:Ljava/util/Date;

    return-object p0
.end method

.method public getCurrentPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->G:Lcom/onyx/android/sdk/base/data/TouchPoint;

    return-object p0
.end method

.method public getDataUniqueId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->k:Ljava/lang/String;

    return-object p0
.end method

.method public getDocumentUniqueId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->b:Ljava/lang/String;

    return-object p0
.end method

.method public getDownPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->H:Lcom/onyx/android/sdk/base/data/TouchPoint;

    return-object p0
.end method

.method public getExtraBean()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeExtraBean;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->B:Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeExtraBean;

    return-object p0
.end method

.method public getFillColor()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->g:I

    return p0
.end method

.method public getGroupId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->v:Ljava/lang/String;

    return-object p0
.end method

.method public getHwrBean()Lcom/onyx/android/sdk/note/common/data/hwr/ShapeHWRBean;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->E:Lcom/onyx/android/sdk/note/common/data/hwr/ShapeHWRBean;

    return-object p0
.end method

.method public getInfoRevisionId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->x:Ljava/lang/String;

    return-object p0
.end method

.method public getLayerId()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->e:I

    return p0
.end method

.method public getLineStyle()I
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/note/common/shape/Shape$DefaultImpls;->getLineStyle(Lcom/onyx/android/sdk/note/common/shape/Shape;)I

    move-result p0

    return p0
.end method

.method public getLinkIdList()Ljava/util/List;
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

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->r:Ljava/util/List;

    return-object p0
.end method

.method public getOriginRect()Landroid/graphics/RectF;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->j:Landroid/graphics/RectF;

    return-object p0
.end method

.method public getPageUniqueId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->c:Ljava/lang/String;

    return-object p0
.end method

.method public getPath()Landroid/graphics/Path;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance p0, Landroid/graphics/Path;

    invoke-direct {p0}, Landroid/graphics/Path;-><init>()V

    return-object p0
.end method

.method public getPersistOption(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getPersistOptions()Lcom/onyx/android/sdk/base/utils/OptionsRepo;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1, v0}, Lcom/onyx/android/sdk/base/utils/OptionsRepo;->getString$default(Lcom/onyx/android/sdk/base/utils/OptionsRepo;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPersistOptions()Lcom/onyx/android/sdk/base/utils/OptionsRepo;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->D:Lcom/onyx/android/sdk/base/utils/OptionsRepo;

    return-object p0
.end method

.method public getPoints()Lcom/onyx/android/sdk/base/data/TouchPointList;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->F:Lcom/onyx/android/sdk/base/data/TouchPointList;

    return-object p0
.end method

.method public getPointsBoundingRect()Landroid/graphics/RectF;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getPoints()Lcom/onyx/android/sdk/base/data/TouchPointList;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/TouchPointList;->getBoundingRect()Landroid/graphics/RectF;

    move-result-object p0

    return-object p0
.end method

.method public getRenderMatrix(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)Landroid/graphics/Matrix;
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/note/common/data/render/RenderContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "renderContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getShapeMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    :cond_0
    sget-object v1, Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;

    invoke-virtual {v1, p0}, Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;->getTransformingMatrix(Lcom/onyx/android/sdk/note/common/shape/Shape;)Landroid/graphics/Matrix;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    return-object v0
.end method

.method public getRenderPointSize()I
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/note/common/shape/Shape$DefaultImpls;->getRenderPointSize(Lcom/onyx/android/sdk/note/common/shape/Shape;)I

    move-result p0

    return p0
.end method

.method public getRenderPoints()Lcom/onyx/android/sdk/base/data/TouchPointList;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Lcom/onyx/android/sdk/note/common/shape/Shape$DefaultImpls;->getRenderPoints(Lcom/onyx/android/sdk/note/common/shape/Shape;)Lcom/onyx/android/sdk/base/data/TouchPointList;

    move-result-object p0

    return-object p0
.end method

.method public getRevisionId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->w:Ljava/lang/String;

    return-object p0
.end method

.method public getRichText()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->p:Ljava/lang/String;

    return-object p0
.end method

.method public getRuntimeOptions()Lcom/onyx/android/sdk/base/utils/OptionsRepo;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->C:Lcom/onyx/android/sdk/base/utils/OptionsRepo;

    return-object p0
.end method

.method public getShapeCreateArgs()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->n:Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;

    return-object p0
.end method

.method public getShapeMatrix()Landroid/graphics/Matrix;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->u:Landroid/graphics/Matrix;

    return-object p0
.end method

.method public getShapeReferenceBean()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeReferenceBean;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->t:Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeReferenceBean;

    return-object p0
.end method

.method public getShapeSrcBean()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeSourceBean;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->s:Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeSourceBean;

    return-object p0
.end method

.method public getShapeUniqueId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->d:Ljava/lang/String;

    return-object p0
.end method

.method public getStatus()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->m:I

    return p0
.end method

.method public getStrokeColor()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->f:I

    return p0
.end method

.method public getStrokeWidth()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->h:F

    return p0
.end method

.method public getSubPageUniqueId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->l:Ljava/lang/String;

    return-object p0
.end method

.method public getTagIdList()Ljava/util/List;
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

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->q:Ljava/util/List;

    return-object p0
.end method

.method public getText()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->A:Ljava/lang/String;

    return-object p0
.end method

.method public final getTextSize()F
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getTextStyle()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->getTextSize()F

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getTextStyle()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->o:Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;

    return-object p0
.end method

.method public getType()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->a:I

    return p0
.end method

.method public getUpdatedAt()Ljava/util/Date;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->z:Ljava/util/Date;

    return-object p0
.end method

.method public getUsePointCount()I
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/note/common/shape/Shape$DefaultImpls;->getUsePointCount(Lcom/onyx/android/sdk/note/common/shape/Shape;)I

    move-result p0

    return p0
.end method

.method public hasReferenceShapeBeanList()Z
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/note/common/shape/Shape$DefaultImpls;->hasReferenceShapeBeanList(Lcom/onyx/android/sdk/note/common/shape/Shape;)Z

    move-result p0

    return p0
.end method

.method public hitTest(FFF)Z
    .locals 1

    .line 2
    sget-object v0, Lcom/onyx/android/sdk/note/common/utils/ShapeHitTests;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/ShapeHitTests;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/onyx/android/sdk/note/common/utils/ShapeHitTests;->hitTestShapePoint(Lcom/onyx/android/sdk/note/common/shape/BaseShape;FFF)Z

    move-result p0

    return p0
.end method

.method public hitTest(FFFF)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    return p0
.end method

.method public hitTestPoint(FFFF)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFFF)",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public hitTestPoints(Lcom/onyx/android/sdk/base/data/TouchPointList;F)Z
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/base/data/TouchPointList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "pointList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/note/common/utils/ShapeHitTests;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/ShapeHitTests;

    invoke-virtual {v0, p0, p1, p2}, Lcom/onyx/android/sdk/note/common/utils/ShapeHitTests;->hitTestShapePoints(Lcom/onyx/android/sdk/note/common/shape/BaseShape;Lcom/onyx/android/sdk/base/data/TouchPointList;F)Z

    move-result p0

    return p0
.end method

.method public intersectRegion(Landroid/graphics/Region;Landroid/graphics/Matrix;)Z
    .locals 4
    .param p1    # Landroid/graphics/Region;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Matrix;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "region"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "matrix"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getRenderPoints()Lcom/onyx/android/sdk/base/data/TouchPointList;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/TouchPointList;->getPoints()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/base/data/TouchPoint;

    const/4 v2, 0x2

    new-array v2, v2, [F

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v3

    aput v3, v2, v1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v0

    const/4 v3, 0x1

    aput v0, v2, v3

    invoke-virtual {p2, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    aget v0, v2, v1

    float-to-int v0, v0

    aget v1, v2, v3

    float-to-int v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Region;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_0

    return v3

    :cond_1
    return v1
.end method

.method public isClosedShape()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isFillColorEnabled()Z
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/note/common/shape/Shape$DefaultImpls;->isFillColorEnabled(Lcom/onyx/android/sdk/note/common/shape/Shape;)Z

    move-result p0

    return p0
.end method

.method public isIntersectClipRect(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)Z
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/note/common/data/render/RenderContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "renderContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/note/common/utils/ShapeRectUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/ShapeRectUtils;

    invoke-virtual {v0, p0, p1}, Lcom/onyx/android/sdk/note/common/utils/ShapeRectUtils;->getBoundingRect(Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)Landroid/graphics/RectF;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getClipRect()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getClipRect()Landroid/graphics/RectF;

    move-result-object p1

    invoke-static {p1, p0}, Landroid/graphics/RectF;->intersects(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result p0

    return p0
.end method

.method public lowLatencyFlush(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Z)Z
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/note/common/data/render/RenderContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-static {p0, p1, p2}, Lcom/onyx/android/sdk/note/common/shape/Shape$DefaultImpls;->lowLatencyFlush(Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Z)Z

    move-result p0

    return p0
.end method

.method public lowLatencyRender(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)Z
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/note/common/data/render/RenderContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "renderContext"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public onDown(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "normalizedPoint"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "screenPoint"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getPoints()Lcom/onyx/android/sdk/base/data/TouchPointList;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/onyx/android/sdk/base/data/TouchPointList;->add(Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    new-instance p2, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-direct {p2, p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->setDownPoint(Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    new-instance p2, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-direct {p2, p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->setCurrentPoint(Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    return-void
.end method

.method public onLowLatencyTouchData(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/geometry/data/TouchData;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/note/common/data/render/RenderContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/geometry/data/TouchData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "renderContext"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "touchData"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onMirror(Lcom/onyx/android/sdk/geometry/data/MirrorType;F)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/geometry/data/MirrorType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/note/common/utils/ShapeMatrixUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/ShapeMatrixUtils;

    sget-object v1, Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;

    invoke-virtual {v1, p0}, Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;->getOrPutTransformingMatrix(Lcom/onyx/android/sdk/note/common/shape/Shape;)Landroid/graphics/Matrix;

    move-result-object p0

    invoke-virtual {v0, p0, p1, p2}, Lcom/onyx/android/sdk/note/common/utils/ShapeMatrixUtils;->mirror(Landroid/graphics/Matrix;Lcom/onyx/android/sdk/geometry/data/MirrorType;F)V

    return-void
.end method

.method public onMove(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "normalizedPoint"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "screenPoint"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-direct {p2, p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->setCurrentPoint(Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    return-void
.end method

.method public onPreRotate(FLandroid/graphics/PointF;)V
    .locals 1
    .param p2    # Landroid/graphics/PointF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "pivotPoint"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;->getOrPutTransformingMatrix(Lcom/onyx/android/sdk/note/common/shape/Shape;)Landroid/graphics/Matrix;

    move-result-object p0

    iget v0, p2, Landroid/graphics/PointF;->x:F

    iget p2, p2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, p1, v0, p2}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    return-void
.end method

.method public onRectChanged()V
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;->resetTransformMatrix(Lcom/onyx/android/sdk/note/common/shape/Shape;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->resetShapeRect()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->updateShapeRect()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->updateShapeTime()V

    return-void
.end method

.method public onRotate(FLandroid/graphics/PointF;)V
    .locals 1
    .param p2    # Landroid/graphics/PointF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "pivotPoint"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;->getOrPutTransformingMatrix(Lcom/onyx/android/sdk/note/common/shape/Shape;)Landroid/graphics/Matrix;

    move-result-object p0

    iget v0, p2, Landroid/graphics/PointF;->x:F

    iget p2, p2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, p1, v0, p2}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    return-void
.end method

.method public onScale(FFLandroid/graphics/RectF;)V
    .locals 4
    .param p3    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "rectF"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;->getOrPutTransformingMatrix(Lcom/onyx/android/sdk/note/common/shape/Shape;)Landroid/graphics/Matrix;

    move-result-object v1

    sget-object v2, Lcom/onyx/android/sdk/base/utils/RectUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/RectUtils;

    invoke-virtual {v2, p3, p1}, Lcom/onyx/android/sdk/base/utils/RectUtils;->getDistanceXAfterScale(Landroid/graphics/RectF;F)F

    move-result v3

    neg-float v3, v3

    invoke-virtual {v2, p3, p2}, Lcom/onyx/android/sdk/base/utils/RectUtils;->getDistanceYAfterScale(Landroid/graphics/RectF;F)F

    move-result p3

    neg-float p3, p3

    invoke-virtual {v1, v3, p3}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;->getOrPutTransformingMatrix(Lcom/onyx/android/sdk/note/common/shape/Shape;)Landroid/graphics/Matrix;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Matrix;->preScale(FF)Z

    return-void
.end method

.method public onTranslate(FF)V
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;->getOrPutTransformingMatrix(Lcom/onyx/android/sdk/note/common/shape/Shape;)Landroid/graphics/Matrix;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void
.end method

.method public onUp(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "normalizedPoint"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "screenPoint"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getPoints()Lcom/onyx/android/sdk/base/data/TouchPointList;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/onyx/android/sdk/base/data/TouchPointList;->add(Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    new-instance p2, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-direct {p2, p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->setCurrentPoint(Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    return-void
.end method

.method public postConcat(Landroid/graphics/Matrix;)V
    .locals 1
    .param p1    # Landroid/graphics/Matrix;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "matrix"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getShapeMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    :cond_0
    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->setShapeMatrix(Landroid/graphics/Matrix;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getShapeMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->onRectChanged()V

    return-void
.end method

.method public prepareRender(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)Z
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/note/common/data/render/RenderContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "renderContext"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getRuntimeOptions()Lcom/onyx/android/sdk/base/utils/OptionsRepo;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/base/utils/OptionsRepo;->put(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public putPersistOption(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getPersistOptions()Lcom/onyx/android/sdk/base/utils/OptionsRepo;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/base/utils/OptionsRepo;->put(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public readyToLowLatencyFlush()Z
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/note/common/shape/Shape$DefaultImpls;->readyToLowLatencyFlush(Lcom/onyx/android/sdk/note/common/shape/Shape;)Z

    move-result p0

    return p0
.end method

.method public recycle()V
    .locals 2

    new-instance p0, Lkotlin/NotImplementedError;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "An operation is not implemented: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Not yet implemented"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lkotlin/NotImplementedError;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public resetConnection()V
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/note/common/shape/Shape$DefaultImpls;->resetConnection(Lcom/onyx/android/sdk/note/common/shape/Shape;)V

    return-void
.end method

.method public resetLowLatencyData()V
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/note/common/shape/Shape$DefaultImpls;->resetLowLatencyData(Lcom/onyx/android/sdk/note/common/shape/Shape;)V

    return-void
.end method

.method public resetShapeRect()V
    .locals 1

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->setBoundingRect(Landroid/graphics/RectF;)V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->setOriginRect(Landroid/graphics/RectF;)V

    return-void
.end method

.method public scaleDisplayScale(F)V
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/note/common/utils/ShapeScales;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/ShapeScales;

    invoke-virtual {v0, p0, p1}, Lcom/onyx/android/sdk/note/common/utils/ShapeScales;->scaleShapeCreateArgsDisplayScale(Lcom/onyx/android/sdk/note/common/shape/Shape;F)V

    return-void
.end method

.method public setBoundingRect(Landroid/graphics/RectF;)V
    .locals 1
    .param p1    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->i:Landroid/graphics/RectF;

    return-void
.end method

.method public setCreatedAt(Ljava/util/Date;)V
    .locals 0
    .param p1    # Ljava/util/Date;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->y:Ljava/util/Date;

    return-void
.end method

.method public setCurrentPoint(Lcom/onyx/android/sdk/base/data/TouchPoint;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->G:Lcom/onyx/android/sdk/base/data/TouchPoint;

    return-void
.end method

.method public setDataUniqueId(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->k:Ljava/lang/String;

    return-void
.end method

.method public setDocumentUniqueId(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->b:Ljava/lang/String;

    return-void
.end method

.method public setDownPoint(Lcom/onyx/android/sdk/base/data/TouchPoint;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->H:Lcom/onyx/android/sdk/base/data/TouchPoint;

    return-void
.end method

.method public setExtraBean(Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeExtraBean;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeExtraBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->B:Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeExtraBean;

    return-void
.end method

.method public setFillColor(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->g:I

    return-void
.end method

.method public setGroupId(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->v:Ljava/lang/String;

    return-void
.end method

.method public setHwrBean(Lcom/onyx/android/sdk/note/common/data/hwr/ShapeHWRBean;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/note/common/data/hwr/ShapeHWRBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->E:Lcom/onyx/android/sdk/note/common/data/hwr/ShapeHWRBean;

    return-void
.end method

.method public setInfoRevisionId(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->x:Ljava/lang/String;

    return-void
.end method

.method public setLayerId(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->e:I

    return-void
.end method

.method public setLineStyle(I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/note/common/shape/Shape$DefaultImpls;->setLineStyle(Lcom/onyx/android/sdk/note/common/shape/Shape;I)V

    return-void
.end method

.method public setLinkIdList(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->r:Ljava/util/List;

    return-void
.end method

.method public setOriginRect(Landroid/graphics/RectF;)V
    .locals 1
    .param p1    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->j:Landroid/graphics/RectF;

    return-void
.end method

.method public setPageUniqueId(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->c:Ljava/lang/String;

    return-void
.end method

.method public setPersistOptions(Lcom/onyx/android/sdk/base/utils/OptionsRepo;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/base/utils/OptionsRepo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->D:Lcom/onyx/android/sdk/base/utils/OptionsRepo;

    return-void
.end method

.method public setPoints(Lcom/onyx/android/sdk/base/data/TouchPointList;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/base/data/TouchPointList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->F:Lcom/onyx/android/sdk/base/data/TouchPointList;

    return-void
.end method

.method public setRevisionId(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->w:Ljava/lang/String;

    return-void
.end method

.method public setRichText(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->p:Ljava/lang/String;

    return-void
.end method

.method public setRuntimeOptions(Lcom/onyx/android/sdk/base/utils/OptionsRepo;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/base/utils/OptionsRepo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->C:Lcom/onyx/android/sdk/base/utils/OptionsRepo;

    return-void
.end method

.method public setShapeCreateArgs(Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->n:Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;

    return-void
.end method

.method public setShapeMatrix(Landroid/graphics/Matrix;)V
    .locals 0
    .param p1    # Landroid/graphics/Matrix;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->u:Landroid/graphics/Matrix;

    return-void
.end method

.method public setShapeReferenceBean(Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeReferenceBean;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeReferenceBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->t:Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeReferenceBean;

    return-void
.end method

.method public setShapeSrcBean(Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeSourceBean;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeSourceBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->s:Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeSourceBean;

    return-void
.end method

.method public setShapeUniqueId(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->d:Ljava/lang/String;

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->m:I

    return-void
.end method

.method public setStrokeColor(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->f:I

    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->h:F

    return-void
.end method

.method public setSubPageUniqueId(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->l:Ljava/lang/String;

    return-void
.end method

.method public setTagIdList(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->q:Ljava/util/List;

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->A:Ljava/lang/String;

    return-void
.end method

.method public setTextStyle(Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->o:Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;

    return-void
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->a:I

    return-void
.end method

.method public setUpdatedAt(Ljava/util/Date;)V
    .locals 1
    .param p1    # Ljava/util/Date;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->z:Ljava/util/Date;

    return-void
.end method

.method public split(Lcom/onyx/android/sdk/note/common/data/erase/EraseBean;)Lcom/onyx/android/sdk/note/common/data/shape/SplitShapeResult;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/note/common/data/erase/EraseBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "eraseBean"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/onyx/android/sdk/note/common/data/shape/SplitShapeResult;

    invoke-direct {p0}, Lcom/onyx/android/sdk/note/common/data/shape/SplitShapeResult;-><init>()V

    return-object p0
.end method

.method public testData()Lcom/onyx/android/sdk/note/common/shape/Shape;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/note/common/shape/ShapeTests;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeTests;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/note/common/shape/ShapeTests;->addTestAttributes(Lcom/onyx/android/sdk/note/common/shape/Shape;)V

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/note/common/shape/ShapeTests;->addTestExtraAttributes(Lcom/onyx/android/sdk/note/common/shape/Shape;)V

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/note/common/shape/ShapeTests;->addTestStyle(Lcom/onyx/android/sdk/note/common/shape/Shape;)V

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/note/common/shape/ShapeTests;->addTestTransform(Lcom/onyx/android/sdk/note/common/shape/Shape;)V

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/note/common/shape/ShapeTests;->addTestLink(Lcom/onyx/android/sdk/note/common/shape/Shape;)V

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/note/common/shape/ShapeTests;->addTestTag(Lcom/onyx/android/sdk/note/common/shape/Shape;)V

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/note/common/shape/ShapeTests;->addTestPersistOptions(Lcom/onyx/android/sdk/note/common/shape/Shape;)V

    return-object p0
.end method

.method public testEqual(Lcom/onyx/android/sdk/note/common/shape/Shape;)Z
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/note/common/shape/Shape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/note/common/shape/ShapeTests;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeTests;

    invoke-virtual {v0, p0, p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeTests;->isPointsEqual(Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/note/common/shape/Shape;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p0, p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeTests;->isAttributesEqual(Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/note/common/shape/Shape;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p0, p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeTests;->isExtraAttributesEqual(Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/note/common/shape/Shape;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p0, p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeTests;->isStyleEqual(Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/note/common/shape/Shape;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p0, p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeTests;->isTransformEqual(Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/note/common/shape/Shape;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p0, p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeTests;->isPersistOptionsEqual(Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/note/common/shape/Shape;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public toPdfHighlight(Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;)Lcom/onyx/android/sdk/neopdf/PdfHighlightInfo;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/note/common/shape/Shape$DefaultImpls;->toPdfHighlight(Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;)Lcom/onyx/android/sdk/neopdf/PdfHighlightInfo;

    move-result-object p0

    return-object p0
.end method

.method public toPdfShape(Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;)Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "embedShapeBean"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/note/common/utils/PdfShapeConvertUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/PdfShapeConvertUtils;

    sget-object v0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->Companion:Lcom/onyx/android/sdk/neopdf/PdfShapeInfo$Companion;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo$Companion;->createBrushStrokeShape()Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/onyx/android/sdk/note/common/utils/PdfShapeConvertUtils;->initPdfShape(Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;)Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;

    move-result-object p0

    return-object p0
.end method

.method public underContent()Z
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/note/common/shape/Shape$DefaultImpls;->underContent(Lcom/onyx/android/sdk/note/common/shape/Shape;)Z

    move-result p0

    return p0
.end method

.method public updatePoints()V
    .locals 3

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getPoints()Lcom/onyx/android/sdk/base/data/TouchPointList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TouchPointList;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getDownPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getPoints()Lcom/onyx/android/sdk/base/data/TouchPointList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/data/TouchPointList;->get(I)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->set(Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getCurrentPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getPoints()Lcom/onyx/android/sdk/base/data/TouchPointList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPointList;->getPoints()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->set(Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->resetShapeRect()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->updateShapeRect()V

    return-void
.end method

.method public updateShapeRect()V
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getPointsBoundingRect()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->setOriginRect(Landroid/graphics/RectF;)V

    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getOriginRect()Landroid/graphics/RectF;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->setBoundingRect(Landroid/graphics/RectF;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getShapeMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getBoundingRect()Landroid/graphics/RectF;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    :cond_0
    return-void
.end method

.method public updateShapeTime()V
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getCreatedAt()Ljava/util/Date;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->setCreatedAt(Ljava/util/Date;)V

    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->setUpdatedAt(Ljava/util/Date;)V

    return-void
.end method

.method public useLowLatencyFlush()Z
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/note/common/shape/Shape$DefaultImpls;->useLowLatencyFlush(Lcom/onyx/android/sdk/note/common/shape/Shape;)Z

    move-result p0

    return p0
.end method
