.class public Lnet/sf/saxon/s9api/WhitespaceStrippingPolicy;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ALL:Lnet/sf/saxon/s9api/WhitespaceStrippingPolicy;

.field public static final IGNORABLE:Lnet/sf/saxon/s9api/WhitespaceStrippingPolicy;

.field public static final NONE:Lnet/sf/saxon/s9api/WhitespaceStrippingPolicy;

.field public static final UNSPECIFIED:Lnet/sf/saxon/s9api/WhitespaceStrippingPolicy;


# instance fields
.field public final a:I

.field public b:Lnet/sf/saxon/om/SpaceStrippingRule;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lnet/sf/saxon/s9api/WhitespaceStrippingPolicy;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lnet/sf/saxon/s9api/WhitespaceStrippingPolicy;-><init>(I)V

    sput-object v0, Lnet/sf/saxon/s9api/WhitespaceStrippingPolicy;->NONE:Lnet/sf/saxon/s9api/WhitespaceStrippingPolicy;

    new-instance v0, Lnet/sf/saxon/s9api/WhitespaceStrippingPolicy;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lnet/sf/saxon/s9api/WhitespaceStrippingPolicy;-><init>(I)V

    sput-object v0, Lnet/sf/saxon/s9api/WhitespaceStrippingPolicy;->IGNORABLE:Lnet/sf/saxon/s9api/WhitespaceStrippingPolicy;

    new-instance v0, Lnet/sf/saxon/s9api/WhitespaceStrippingPolicy;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lnet/sf/saxon/s9api/WhitespaceStrippingPolicy;-><init>(I)V

    sput-object v0, Lnet/sf/saxon/s9api/WhitespaceStrippingPolicy;->ALL:Lnet/sf/saxon/s9api/WhitespaceStrippingPolicy;

    new-instance v0, Lnet/sf/saxon/s9api/WhitespaceStrippingPolicy;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lnet/sf/saxon/s9api/WhitespaceStrippingPolicy;-><init>(I)V

    sput-object v0, Lnet/sf/saxon/s9api/WhitespaceStrippingPolicy;->UNSPECIFIED:Lnet/sf/saxon/s9api/WhitespaceStrippingPolicy;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lnet/sf/saxon/s9api/WhitespaceStrippingPolicy;->a:I

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lnet/sf/saxon/om/AllElementsSpaceStrippingRule;->getInstance()Lnet/sf/saxon/om/AllElementsSpaceStrippingRule;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/s9api/WhitespaceStrippingPolicy;->b:Lnet/sf/saxon/om/SpaceStrippingRule;

    goto :goto_0

    .line 4
    :cond_1
    invoke-static {}, Lnet/sf/saxon/om/IgnorableSpaceStrippingRule;->getInstance()Lnet/sf/saxon/om/IgnorableSpaceStrippingRule;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/s9api/WhitespaceStrippingPolicy;->b:Lnet/sf/saxon/om/SpaceStrippingRule;

    goto :goto_0

    .line 5
    :cond_2
    invoke-static {}, Lnet/sf/saxon/om/NoElementsSpaceStrippingRule;->getInstance()Lnet/sf/saxon/om/NoElementsSpaceStrippingRule;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/s9api/WhitespaceStrippingPolicy;->b:Lnet/sf/saxon/om/SpaceStrippingRule;

    :goto_0
    return-void
.end method

.method public constructor <init>(Lnet/sf/saxon/style/StylesheetPackage;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    .line 7
    iput v0, p0, Lnet/sf/saxon/s9api/WhitespaceStrippingPolicy;->a:I

    .line 8
    invoke-virtual {p1}, Lnet/sf/saxon/style/StylesheetPackage;->getStripperRules()Lnet/sf/saxon/om/SpaceStrippingRule;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/s9api/WhitespaceStrippingPolicy;->b:Lnet/sf/saxon/om/SpaceStrippingRule;

    return-void
.end method

.method public static synthetic a(Lnet/sf/saxon/s9api/WhitespaceStrippingPolicy;Lnet/sf/saxon/event/Receiver;)Lnet/sf/saxon/event/Receiver;
    .locals 0

    invoke-direct {p0, p1}, Lnet/sf/saxon/s9api/WhitespaceStrippingPolicy;->b(Lnet/sf/saxon/event/Receiver;)Lnet/sf/saxon/event/Receiver;

    move-result-object p0

    return-object p0
.end method

.method private synthetic b(Lnet/sf/saxon/event/Receiver;)Lnet/sf/saxon/event/Receiver;
    .locals 1

    new-instance v0, Lnet/sf/saxon/event/Stripper;

    iget-object p0, p0, Lnet/sf/saxon/s9api/WhitespaceStrippingPolicy;->b:Lnet/sf/saxon/om/SpaceStrippingRule;

    invoke-direct {v0, p0, p1}, Lnet/sf/saxon/event/Stripper;-><init>(Lnet/sf/saxon/om/SpaceStrippingRule;Lnet/sf/saxon/event/Receiver;)V

    return-object v0
.end method

.method public static makeCustomPolicy(Ljava/util/function/Predicate;)Lnet/sf/saxon/s9api/WhitespaceStrippingPolicy;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lnet/sf/saxon/s9api/QName;",
            ">;)",
            "Lnet/sf/saxon/s9api/WhitespaceStrippingPolicy;"
        }
    .end annotation

    new-instance v0, Lnet/sf/saxon/s9api/WhitespaceStrippingPolicy$a;

    invoke-direct {v0, p0}, Lnet/sf/saxon/s9api/WhitespaceStrippingPolicy$a;-><init>(Ljava/util/function/Predicate;)V

    new-instance p0, Lnet/sf/saxon/s9api/WhitespaceStrippingPolicy;

    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lnet/sf/saxon/s9api/WhitespaceStrippingPolicy;-><init>(I)V

    iput-object v0, p0, Lnet/sf/saxon/s9api/WhitespaceStrippingPolicy;->b:Lnet/sf/saxon/om/SpaceStrippingRule;

    return-object p0
.end method


# virtual methods
.method public getSpaceStrippingRule()Lnet/sf/saxon/om/SpaceStrippingRule;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/s9api/WhitespaceStrippingPolicy;->b:Lnet/sf/saxon/om/SpaceStrippingRule;

    return-object p0
.end method

.method public makeStripper()Lnet/sf/saxon/event/FilterFactory;
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/f7o;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/f7o;-><init>(Lnet/sf/saxon/s9api/WhitespaceStrippingPolicy;)V

    return-object v0
.end method

.method public ordinal()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/s9api/WhitespaceStrippingPolicy;->a:I

    return p0
.end method
