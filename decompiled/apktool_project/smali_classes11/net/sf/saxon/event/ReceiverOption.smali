.class public Lnet/sf/saxon/event/ReceiverOption;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ALL_NAMESPACES:I = 0x80000

.field public static final BEQUEATH_INHERITED_NAMESPACES_ONLY:I = 0x20000

.field public static final DEFAULTED_VALUE:I = 0x8

.field public static final DISABLE_CHARACTER_MAPS:I = 0x2

.field public static final DISABLE_ESCAPING:I = 0x1

.field public static final DISINHERIT_NAMESPACES:I = 0x80

.field public static final HAS_CHILDREN:I = 0x40000

.field public static final ID_IDREF_CHECKED:I = 0x2000

.field public static final IS_ID:I = 0x800

.field public static final IS_IDREF:I = 0x1000

.field public static final MUTABLE_TREE:I = 0x8000

.field public static final NAMESPACE_OK:I = 0x40

.field public static final NILLABLE_ELEMENT:I = 0x200

.field public static final NILLED_ELEMENT:I = 0x10

.field public static final NONE:I = 0x0

.field public static final NOT_A_DUPLICATE:I = 0x100000

.field public static final NO_SPECIAL_CHARS:I = 0x4

.field public static final REFUSE_NAMESPACES:I = 0x10000

.field public static final REJECT_DUPLICATES:I = 0x20

.field public static final SEPARATOR:I = 0x100000

.field public static final TERMINATE:I = 0x4000

.field public static final USE_NULL_MARKERS:I = 0x100

.field public static final WHOLE_TEXT_NODE:I = 0x400


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static contains(II)Z
    .locals 0

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
