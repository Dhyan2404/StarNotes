.class public Lnet/sf/saxon/trans/rules/RuleChain;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lnet/sf/saxon/trans/rules/Rule;

.field public optimizationData:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lnet/sf/saxon/trans/rules/RuleChain;->a:Lnet/sf/saxon/trans/rules/Rule;

    return-void
.end method

.method public constructor <init>(Lnet/sf/saxon/trans/rules/Rule;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lnet/sf/saxon/trans/rules/RuleChain;->a:Lnet/sf/saxon/trans/rules/Rule;

    return-void
.end method


# virtual methods
.method public getLength()I
    .locals 1

    invoke-virtual {p0}, Lnet/sf/saxon/trans/rules/RuleChain;->head()Lnet/sf/saxon/trans/rules/Rule;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    if-eqz p0, :cond_0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, Lnet/sf/saxon/trans/rules/Rule;->getNext()Lnet/sf/saxon/trans/rules/Rule;

    move-result-object p0

    goto :goto_0

    :cond_0
    return v0
.end method

.method public head()Lnet/sf/saxon/trans/rules/Rule;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/trans/rules/RuleChain;->a:Lnet/sf/saxon/trans/rules/Rule;

    return-object p0
.end method

.method public setHead(Lnet/sf/saxon/trans/rules/Rule;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/trans/rules/RuleChain;->a:Lnet/sf/saxon/trans/rules/Rule;

    return-void
.end method
