.class public final synthetic Lcom/sunia/HTREnginev2/tri;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/IntPredicate;


# instance fields
.field public final synthetic a:Lnet/sf/saxon/ma/json/JsonHandler;


# direct methods
.method public synthetic constructor <init>(Lnet/sf/saxon/ma/json/JsonHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/tri;->a:Lnet/sf/saxon/ma/json/JsonHandler;

    return-void
.end method


# virtual methods
.method public final test(I)Z
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/tri;->a:Lnet/sf/saxon/ma/json/JsonHandler;

    invoke-static {p0, p1}, Lnet/sf/saxon/ma/json/JsonHandler;->a(Lnet/sf/saxon/ma/json/JsonHandler;I)Z

    move-result p0

    return p0
.end method
