.class public abstract Lcom/sunia/HTREnginev2/jnf;
.super Lcom/sunia/HTREnginev2/plo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sunia/HTREnginev2/jnf$a;
    }
.end annotation


# instance fields
.field public final g:Ljavax/xml/namespace/QName;

.field public final h:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljavax/xml/namespace/QName;ZLjava/util/Iterator;Ljavax/xml/stream/Location;)V
    .locals 0

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x2

    :goto_0
    invoke-direct {p0, p2, p4}, Lcom/sunia/HTREnginev2/plo;-><init>(ILjavax/xml/stream/Location;)V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/jnf;->g:Ljavax/xml/namespace/QName;

    if-eqz p3, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/jnf;->h:Ljava/util/List;

    :cond_1
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/xml/stream/events/Namespace;

    iget-object p2, p0, Lcom/sunia/HTREnginev2/jnf;->h:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_2
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object p1, p0, Lcom/sunia/HTREnginev2/jnf;->h:Ljava/util/List;

    :goto_1
    return-void
.end method

.method public static a(Ljava/util/Iterator;)Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/jnf$a;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/jnf$a;-><init>(Ljava/util/Iterator;)V

    return-object v0
.end method


# virtual methods
.method public final getName()Ljavax/xml/namespace/QName;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/jnf;->g:Ljavax/xml/namespace/QName;

    return-object p0
.end method

.method public final getNamespaces()Ljava/util/Iterator;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/jnf;->h:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-static {p0}, Lcom/sunia/HTREnginev2/jnf;->a(Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method
