.class public final synthetic Lcom/sunia/HTREnginev2/jph;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic e:Ljava/awt/geom/Area;


# direct methods
.method public synthetic constructor <init>(Ljava/awt/geom/Area;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/jph;->e:Ljava/awt/geom/Area;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/jph;->e:Ljava/awt/geom/Area;

    check-cast p1, Ljava/awt/geom/Area;

    invoke-virtual {p0, p1}, Ljava/awt/geom/Area;->add(Ljava/awt/geom/Area;)V

    return-void
.end method
