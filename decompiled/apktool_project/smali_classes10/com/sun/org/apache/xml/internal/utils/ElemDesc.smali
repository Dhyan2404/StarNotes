.class Lcom/sun/org/apache/xml/internal/utils/ElemDesc;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final ASPECIAL:I = 0x10000

.field static final ATTREMPTY:I = 0x4

.field static final ATTRURL:I = 0x2

.field static final BLOCK:I = 0x8

.field static final BLOCKFORM:I = 0x10

.field static final BLOCKFORMFIELDSET:I = 0x20

.field static final CDATA:I = 0x40

.field static final EMPTY:I = 0x2

.field static final FLOW:I = 0x4

.field static final FONTSTYLE:I = 0x1000

.field static final FORMCTRL:I = 0x4000

.field static final HEAD:I = 0x40000

.field static final HEADMISC:I = 0x20000

.field static final INLINE:I = 0x200

.field static final INLINEA:I = 0x400

.field static final INLINELABEL:I = 0x800

.field static final LIST:I = 0x80000

.field static final PCDATA:I = 0x80

.field static final PHRASE:I = 0x2000

.field static final PREFORMATTED:I = 0x100000

.field static final RAW:I = 0x100

.field static final SPECIAL:I = 0x8000

.field static final WHITESPACESENSITIVE:I = 0x200000


# instance fields
.field m_attrs:Ljava/util/Hashtable;

.field m_flags:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/utils/ElemDesc;->m_attrs:Ljava/util/Hashtable;

    iput p1, p0, Lcom/sun/org/apache/xml/internal/utils/ElemDesc;->m_flags:I

    return-void
.end method


# virtual methods
.method public is(I)Z
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/xml/internal/utils/ElemDesc;->m_flags:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isAttrFlagSet(Ljava/lang/String;I)Z
    .locals 1

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/utils/ElemDesc;->m_attrs:Ljava/util/Hashtable;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    and-int/2addr p0, p2

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public setAttr(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/utils/ElemDesc;->m_attrs:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/utils/ElemDesc;->m_attrs:Ljava/util/Hashtable;

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/utils/ElemDesc;->m_attrs:Ljava/util/Hashtable;

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
