.class public final Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final ASPECIAL:I = 0x10000

.field public static final ATTREMPTY:I = 0x4

.field public static final ATTRURL:I = 0x2

.field static final BLOCK:I = 0x8

.field static final BLOCKFORM:I = 0x10

.field static final BLOCKFORMFIELDSET:I = 0x20

.field private static final CDATA:I = 0x40

.field static final EMPTY:I = 0x2

.field private static final FLOW:I = 0x4

.field static final FONTSTYLE:I = 0x1000

.field static final FORMCTRL:I = 0x4000

.field static final HEAD:I = 0x40000

.field static final HEADELEM:I = 0x400000

.field static final HEADMISC:I = 0x20000

.field private static final HTMLELEM:I = 0x800000

.field private static final INLINE:I = 0x200

.field private static final INLINEA:I = 0x400

.field static final INLINELABEL:I = 0x800

.field static final LIST:I = 0x80000

.field private static final PCDATA:I = 0x80

.field static final PHRASE:I = 0x2000

.field static final PREFORMATTED:I = 0x100000

.field static final RAW:I = 0x100

.field static final SPECIAL:I = 0x8000

.field static final WHITESPACESENSITIVE:I = 0x200000


# instance fields
.field private m_attrs:Lcom/sun/org/apache/xml/internal/serializer/utils/StringToIntTable;

.field private m_flags:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;->m_attrs:Lcom/sun/org/apache/xml/internal/serializer/utils/StringToIntTable;

    iput p1, p0, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;->m_flags:I

    return-void
.end method

.method private is(I)Z
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;->m_flags:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public getFlags()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;->m_flags:I

    return p0
.end method

.method public isAttrFlagSet(Ljava/lang/String;I)Z
    .locals 1

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;->m_attrs:Lcom/sun/org/apache/xml/internal/serializer/utils/StringToIntTable;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/serializer/utils/StringToIntTable;->getIgnoreCase(Ljava/lang/String;)I

    move-result p0

    and-int/2addr p0, p2

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public setAttr(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;->m_attrs:Lcom/sun/org/apache/xml/internal/serializer/utils/StringToIntTable;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sun/org/apache/xml/internal/serializer/utils/StringToIntTable;

    invoke-direct {v0}, Lcom/sun/org/apache/xml/internal/serializer/utils/StringToIntTable;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;->m_attrs:Lcom/sun/org/apache/xml/internal/serializer/utils/StringToIntTable;

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;->m_attrs:Lcom/sun/org/apache/xml/internal/serializer/utils/StringToIntTable;

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xml/internal/serializer/utils/StringToIntTable;->put(Ljava/lang/String;I)V

    return-void
.end method
