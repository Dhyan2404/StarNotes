.class public abstract Lcom/onegravity/rteditor/converter/tagsoup/Schema;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final F_CDATA:I = 0x2

.field public static final F_NOFORCE:I = 0x4

.field public static final F_RESTART:I = 0x1

.field public static final M_ANY:I = -0x1

.field public static final M_EMPTY:I = 0x0

.field public static final M_PCDATA:I = 0x40000000

.field public static final M_ROOT:I = -0x80000000


# instance fields
.field public a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/onegravity/rteditor/converter/tagsoup/ElementType;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Lcom/onegravity/rteditor/converter/tagsoup/ElementType;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/onegravity/rteditor/converter/tagsoup/Schema;->a:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/onegravity/rteditor/converter/tagsoup/Schema;->b:Ljava/util/HashMap;

    const-string v0, ""

    iput-object v0, p0, Lcom/onegravity/rteditor/converter/tagsoup/Schema;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/onegravity/rteditor/converter/tagsoup/Schema;->d:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/onegravity/rteditor/converter/tagsoup/Schema;->e:Lcom/onegravity/rteditor/converter/tagsoup/ElementType;

    return-void
.end method


# virtual methods
.method public attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onegravity/rteditor/converter/tagsoup/Schema;->getElementType(Ljava/lang/String;)Lcom/onegravity/rteditor/converter/tagsoup/ElementType;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p2, p3, p4}, Lcom/onegravity/rteditor/converter/tagsoup/ElementType;->setAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/Error;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Attribute "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " specified for unknown element type "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public elementType(Ljava/lang/String;III)V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    new-instance v6, Lcom/onegravity/rteditor/converter/tagsoup/ElementType;

    move-object v0, v6

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/onegravity/rteditor/converter/tagsoup/ElementType;-><init>(Ljava/lang/String;IIILcom/onegravity/rteditor/converter/tagsoup/Schema;)V

    iget-object p2, p0, Lcom/onegravity/rteditor/converter/tagsoup/Schema;->b:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/high16 p1, -0x80000000

    if-ne p3, p1, :cond_0

    iput-object v6, p0, Lcom/onegravity/rteditor/converter/tagsoup/Schema;->e:Lcom/onegravity/rteditor/converter/tagsoup/ElementType;

    :cond_0
    return-void
.end method

.method public entity(Ljava/lang/String;I)V
    .locals 0

    iget-object p0, p0, Lcom/onegravity/rteditor/converter/tagsoup/Schema;->a:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getElementType(Ljava/lang/String;)Lcom/onegravity/rteditor/converter/tagsoup/ElementType;
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    iget-object p0, p0, Lcom/onegravity/rteditor/converter/tagsoup/Schema;->b:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onegravity/rteditor/converter/tagsoup/ElementType;

    return-object p0
.end method

.method public getEntity(Ljava/lang/String;)I
    .locals 0

    iget-object p0, p0, Lcom/onegravity/rteditor/converter/tagsoup/Schema;->a:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/onegravity/rteditor/converter/tagsoup/Schema;->d:Ljava/lang/String;

    return-object p0
.end method

.method public getURI()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/onegravity/rteditor/converter/tagsoup/Schema;->c:Ljava/lang/String;

    return-object p0
.end method

.method public parent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/onegravity/rteditor/converter/tagsoup/Schema;->getElementType(Ljava/lang/String;)Lcom/onegravity/rteditor/converter/tagsoup/ElementType;

    move-result-object v0

    invoke-virtual {p0, p2}, Lcom/onegravity/rteditor/converter/tagsoup/Schema;->getElementType(Ljava/lang/String;)Lcom/onegravity/rteditor/converter/tagsoup/ElementType;

    move-result-object p0

    if-eqz v0, :cond_1

    if-eqz p0, :cond_0

    invoke-virtual {v0, p0}, Lcom/onegravity/rteditor/converter/tagsoup/ElementType;->setParent(Lcom/onegravity/rteditor/converter/tagsoup/ElementType;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/Error;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No parent "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " for child "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/Error;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No child "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " for parent "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public rootElementType()Lcom/onegravity/rteditor/converter/tagsoup/ElementType;
    .locals 0

    iget-object p0, p0, Lcom/onegravity/rteditor/converter/tagsoup/Schema;->e:Lcom/onegravity/rteditor/converter/tagsoup/ElementType;

    return-object p0
.end method

.method public setPrefix(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/onegravity/rteditor/converter/tagsoup/Schema;->d:Ljava/lang/String;

    return-void
.end method

.method public setURI(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/onegravity/rteditor/converter/tagsoup/Schema;->c:Ljava/lang/String;

    return-void
.end method
