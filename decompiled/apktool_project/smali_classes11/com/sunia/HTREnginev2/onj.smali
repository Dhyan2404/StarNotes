.class public final synthetic Lcom/sunia/HTREnginev2/onj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/expr/CallableDelegate$Lambda;


# instance fields
.field public final synthetic a:Lnet/sf/saxon/resource/MetadataResource;


# direct methods
.method public synthetic constructor <init>(Lnet/sf/saxon/resource/MetadataResource;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/onj;->a:Lnet/sf/saxon/resource/MetadataResource;

    return-void
.end method


# virtual methods
.method public final call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/om/Sequence;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/onj;->a:Lnet/sf/saxon/resource/MetadataResource;

    invoke-static {p0, p1, p2}, Lnet/sf/saxon/resource/MetadataResource;->a(Lnet/sf/saxon/resource/MetadataResource;Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/om/Sequence;

    move-result-object p0

    return-object p0
.end method
