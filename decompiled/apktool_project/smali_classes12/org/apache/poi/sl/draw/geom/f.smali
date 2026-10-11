.class public final synthetic Lorg/apache/poi/sl/draw/geom/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic e:Lorg/apache/poi/sl/draw/geom/PolarAdjustHandle;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/poi/sl/draw/geom/PolarAdjustHandle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/sl/draw/geom/f;->e:Lorg/apache/poi/sl/draw/geom/PolarAdjustHandle;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/sl/draw/geom/f;->e:Lorg/apache/poi/sl/draw/geom/PolarAdjustHandle;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-static {p0, p1, p2}, Lorg/apache/poi/sl/draw/geom/PresetParser;->c(Lorg/apache/poi/sl/draw/geom/PolarAdjustHandle;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
