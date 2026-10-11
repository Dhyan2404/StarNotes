.class public final synthetic Lcom/sunia/HTREnginev2/fde;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchPredicate;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final matches(Lorg/apache/poi/ss/formula/eval/ValueEval;)Z
    .locals 0

    invoke-static {p1}, Lorg/apache/poi/ss/formula/functions/Count;->a(Lorg/apache/poi/ss/formula/eval/ValueEval;)Z

    move-result p0

    return p0
.end method
