.class public Lorg/jsoup/nodes/Attributes$a$b;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/nodes/Attributes$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "Ljava/util/Map$Entry<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lorg/jsoup/nodes/Attributes$a;


# direct methods
.method public constructor <init>(Lorg/jsoup/nodes/Attributes$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/jsoup/nodes/Attributes$a$b;->e:Lorg/jsoup/nodes/Attributes$a;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/jsoup/nodes/Attributes$a;Lorg/jsoup/nodes/a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/jsoup/nodes/Attributes$a$b;-><init>(Lorg/jsoup/nodes/Attributes$a;)V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Lorg/jsoup/nodes/Attributes$a$a;

    iget-object p0, p0, Lorg/jsoup/nodes/Attributes$a$b;->e:Lorg/jsoup/nodes/Attributes$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/jsoup/nodes/Attributes$a$a;-><init>(Lorg/jsoup/nodes/Attributes$a;Lorg/jsoup/nodes/a;)V

    return-object v0
.end method

.method public size()I
    .locals 2

    new-instance v0, Lorg/jsoup/nodes/Attributes$a$a;

    iget-object p0, p0, Lorg/jsoup/nodes/Attributes$a$b;->e:Lorg/jsoup/nodes/Attributes$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/jsoup/nodes/Attributes$a$a;-><init>(Lorg/jsoup/nodes/Attributes$a;Lorg/jsoup/nodes/a;)V

    const/4 p0, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    return p0
.end method
