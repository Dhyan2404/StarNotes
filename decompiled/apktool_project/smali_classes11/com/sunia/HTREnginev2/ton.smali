.class public final synthetic Lcom/sunia/HTREnginev2/ton;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic e:Lnet/sf/saxon/event/TypeCheckingFilter;

.field public final synthetic f:S

.field public final synthetic g:Lnet/sf/saxon/om/NodeName;

.field public final synthetic h:Lnet/sf/saxon/type/SchemaType;

.field public final synthetic i:Lnet/sf/saxon/str/UnicodeString;


# direct methods
.method public synthetic constructor <init>(Lnet/sf/saxon/event/TypeCheckingFilter;SLnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/str/UnicodeString;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/ton;->e:Lnet/sf/saxon/event/TypeCheckingFilter;

    iput-short p2, p0, Lcom/sunia/HTREnginev2/ton;->f:S

    iput-object p3, p0, Lcom/sunia/HTREnginev2/ton;->g:Lnet/sf/saxon/om/NodeName;

    iput-object p4, p0, Lcom/sunia/HTREnginev2/ton;->h:Lnet/sf/saxon/type/SchemaType;

    iput-object p5, p0, Lcom/sunia/HTREnginev2/ton;->i:Lnet/sf/saxon/str/UnicodeString;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/sunia/HTREnginev2/ton;->e:Lnet/sf/saxon/event/TypeCheckingFilter;

    iget-short v1, p0, Lcom/sunia/HTREnginev2/ton;->f:S

    iget-object v2, p0, Lcom/sunia/HTREnginev2/ton;->g:Lnet/sf/saxon/om/NodeName;

    iget-object v3, p0, Lcom/sunia/HTREnginev2/ton;->h:Lnet/sf/saxon/type/SchemaType;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/ton;->i:Lnet/sf/saxon/str/UnicodeString;

    invoke-static {v0, v1, v2, v3, p0}, Lnet/sf/saxon/event/TypeCheckingFilter;->a(Lnet/sf/saxon/event/TypeCheckingFilter;SLnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0

    return-object p0
.end method
