.class public final synthetic Lcom/sunia/HTREnginev2/oll;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    invoke-static {}, Lorg/xmlresolver/ResolverFeature;->a()Lorg/xml/sax/XMLReader;

    move-result-object p0

    return-object p0
.end method
