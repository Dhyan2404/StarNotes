.class public final synthetic Lcom/sunia/HTREnginev2/rqo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lnet/sf/saxon/expr/Expression;

    invoke-static {p1}, Lnet/sf/saxon/style/XSLKey;->Z(Lnet/sf/saxon/expr/Expression;)Z

    move-result p0

    return p0
.end method
