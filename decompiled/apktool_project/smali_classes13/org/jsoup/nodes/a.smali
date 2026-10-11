.class public Lorg/jsoup/nodes/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lorg/jsoup/nodes/Attribute;",
        ">;"
    }
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Lorg/jsoup/nodes/Attributes;


# direct methods
.method public constructor <init>(Lorg/jsoup/nodes/Attributes;)V
    .locals 0

    iput-object p1, p0, Lorg/jsoup/nodes/a;->f:Lorg/jsoup/nodes/Attributes;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lorg/jsoup/nodes/a;->e:I

    return-void
.end method


# virtual methods
.method public a()Lorg/jsoup/nodes/Attribute;
    .locals 5

    new-instance v0, Lorg/jsoup/nodes/Attribute;

    iget-object v1, p0, Lorg/jsoup/nodes/a;->f:Lorg/jsoup/nodes/Attributes;

    iget-object v2, v1, Lorg/jsoup/nodes/Attributes;->f:[Ljava/lang/String;

    iget v3, p0, Lorg/jsoup/nodes/a;->e:I

    aget-object v2, v2, v3

    iget-object v4, v1, Lorg/jsoup/nodes/Attributes;->g:[Ljava/lang/String;

    aget-object v3, v4, v3

    invoke-direct {v0, v2, v3, v1}, Lorg/jsoup/nodes/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/nodes/Attributes;)V

    iget v1, p0, Lorg/jsoup/nodes/a;->e:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/jsoup/nodes/a;->e:I

    return-object v0
.end method

.method public hasNext()Z
    .locals 4

    :goto_0
    iget v0, p0, Lorg/jsoup/nodes/a;->e:I

    iget-object v1, p0, Lorg/jsoup/nodes/a;->f:Lorg/jsoup/nodes/Attributes;

    invoke-static {v1}, Lorg/jsoup/nodes/Attributes;->d(Lorg/jsoup/nodes/Attributes;)I

    move-result v1

    const/4 v2, 0x1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lorg/jsoup/nodes/a;->f:Lorg/jsoup/nodes/Attributes;

    iget-object v1, v0, Lorg/jsoup/nodes/Attributes;->f:[Ljava/lang/String;

    iget v3, p0, Lorg/jsoup/nodes/a;->e:I

    aget-object v1, v1, v3

    invoke-static {v0, v1}, Lorg/jsoup/nodes/Attributes;->e(Lorg/jsoup/nodes/Attributes;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/jsoup/nodes/a;->e:I

    add-int/2addr v0, v2

    iput v0, p0, Lorg/jsoup/nodes/a;->e:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/jsoup/nodes/a;->e:I

    iget-object p0, p0, Lorg/jsoup/nodes/a;->f:Lorg/jsoup/nodes/Attributes;

    invoke-static {p0}, Lorg/jsoup/nodes/Attributes;->d(Lorg/jsoup/nodes/Attributes;)I

    move-result p0

    if-ge v0, p0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    return v2
.end method

.method public synthetic next()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lorg/jsoup/nodes/a;->a()Lorg/jsoup/nodes/Attribute;

    move-result-object p0

    return-object p0
.end method

.method public remove()V
    .locals 2

    iget-object v0, p0, Lorg/jsoup/nodes/a;->f:Lorg/jsoup/nodes/Attributes;

    iget v1, p0, Lorg/jsoup/nodes/a;->e:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/jsoup/nodes/a;->e:I

    invoke-static {v0, v1}, Lorg/jsoup/nodes/Attributes;->g(Lorg/jsoup/nodes/Attributes;I)V

    return-void
.end method
