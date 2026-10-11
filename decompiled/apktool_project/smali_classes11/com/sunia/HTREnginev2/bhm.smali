.class public final synthetic Lcom/sunia/HTREnginev2/bhm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/om/ItemConsumer;


# instance fields
.field public final synthetic a:Lnet/sf/saxon/str/UnicodeBuilder;


# direct methods
.method public synthetic constructor <init>(Lnet/sf/saxon/str/UnicodeBuilder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/bhm;->a:Lnet/sf/saxon/str/UnicodeBuilder;

    return-void
.end method


# virtual methods
.method public final accept(Lnet/sf/saxon/om/Item;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/bhm;->a:Lnet/sf/saxon/str/UnicodeBuilder;

    invoke-static {p0, p1}, Lnet/sf/saxon/om/SequenceTool;->b(Lnet/sf/saxon/str/UnicodeBuilder;Lnet/sf/saxon/om/Item;)V

    return-void
.end method
