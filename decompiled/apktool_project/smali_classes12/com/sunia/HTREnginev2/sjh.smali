.class public final synthetic Lcom/sunia/HTREnginev2/sjh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic e:Lorg/apache/poi/hemf/record/emf/HemfFont$LogFontPanose;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/poi/hemf/record/emf/HemfFont$LogFontPanose;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/sjh;->e:Lorg/apache/poi/hemf/record/emf/HemfFont$LogFontPanose;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/sjh;->e:Lorg/apache/poi/hemf/record/emf/HemfFont$LogFontPanose;

    invoke-static {p0}, Lorg/apache/poi/hemf/record/emf/HemfFont$LogFontPanose;->b(Lorg/apache/poi/hemf/record/emf/HemfFont$LogFontPanose;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
