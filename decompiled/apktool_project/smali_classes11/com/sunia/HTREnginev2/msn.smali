.class public final synthetic Lcom/sunia/HTREnginev2/msn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic e:Lnet/sf/saxon/serialize/UnicodeNormalizer;


# direct methods
.method public synthetic constructor <init>(Lnet/sf/saxon/serialize/UnicodeNormalizer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/msn;->e:Lnet/sf/saxon/serialize/UnicodeNormalizer;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/msn;->e:Lnet/sf/saxon/serialize/UnicodeNormalizer;

    check-cast p1, Lnet/sf/saxon/om/AttributeInfo;

    invoke-static {p0, p1}, Lnet/sf/saxon/serialize/UnicodeNormalizer;->c(Lnet/sf/saxon/serialize/UnicodeNormalizer;Lnet/sf/saxon/om/AttributeInfo;)Lnet/sf/saxon/om/AttributeInfo;

    move-result-object p0

    return-object p0
.end method
