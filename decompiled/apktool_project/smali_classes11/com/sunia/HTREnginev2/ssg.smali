.class public final synthetic Lcom/sunia/HTREnginev2/ssg;
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

    check-cast p1, Lnet/sf/saxon/om/GroundedValue;

    invoke-static {p1}, Lnet/sf/saxon/expr/flwor/ForMemberClausePull;->a(Lnet/sf/saxon/om/GroundedValue;)Lnet/sf/saxon/om/Item;

    move-result-object p0

    return-object p0
.end method
