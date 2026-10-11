.class public final synthetic Lcom/sunia/HTREnginev2/hum;
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

    check-cast p1, Lorg/apache/poi/sl/usermodel/Comment;

    invoke-static {p1}, Lorg/apache/poi/sl/extractor/SlideShowExtractor;->M(Lorg/apache/poi/sl/usermodel/Comment;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
