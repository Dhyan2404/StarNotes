.class public final synthetic Lorg/apache/poi/xslf/util/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lorg/apache/poi/sl/usermodel/Shape;

    invoke-static {p1}, Lorg/apache/poi/xslf/util/PPTHandler;->f(Lorg/apache/poi/sl/usermodel/Shape;)Lorg/apache/poi/sl/draw/EmbeddedExtractor$EmbeddedPart;

    move-result-object p0

    return-object p0
.end method
