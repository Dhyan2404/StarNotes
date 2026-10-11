.class public final synthetic Lcom/sunia/HTREnginev2/nsm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lnet/sf/saxon/trans/rules/Rule;

    check-cast p2, Lnet/sf/saxon/trans/rules/Rule;

    invoke-static {p1, p2}, Lnet/sf/saxon/trans/SimpleMode$c;->a(Lnet/sf/saxon/trans/rules/Rule;Lnet/sf/saxon/trans/rules/Rule;)I

    move-result p0

    return p0
.end method
