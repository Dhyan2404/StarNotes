.class public Lnet/sf/saxon/expr/JPConverter$FromSequence;
.super Lnet/sf/saxon/expr/JPConverter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/expr/JPConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FromSequence"
.end annotation


# static fields
.field public static final INSTANCE:Lnet/sf/saxon/expr/JPConverter$FromSequence;


# instance fields
.field public final d:Lnet/sf/saxon/type/ItemType;

.field public final e:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lnet/sf/saxon/expr/JPConverter$FromSequence;

    invoke-static {}, Lnet/sf/saxon/type/AnyItemType;->getInstance()Lnet/sf/saxon/type/AnyItemType;

    move-result-object v1

    const v2, 0xe000

    invoke-direct {v0, v1, v2}, Lnet/sf/saxon/expr/JPConverter$FromSequence;-><init>(Lnet/sf/saxon/type/ItemType;I)V

    sput-object v0, Lnet/sf/saxon/expr/JPConverter$FromSequence;->INSTANCE:Lnet/sf/saxon/expr/JPConverter$FromSequence;

    return-void
.end method

.method public constructor <init>(Lnet/sf/saxon/type/ItemType;I)V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/expr/JPConverter;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/expr/JPConverter$FromSequence;->d:Lnet/sf/saxon/type/ItemType;

    iput p2, p0, Lnet/sf/saxon/expr/JPConverter$FromSequence;->e:I

    return-void
.end method


# virtual methods
.method public convert(Ljava/lang/Object;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/GroundedValue;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    check-cast p1, Lnet/sf/saxon/om/Sequence;

    invoke-interface {p1}, Lnet/sf/saxon/om/Sequence;->materialize()Lnet/sf/saxon/om/GroundedValue;

    move-result-object p0

    return-object p0
.end method

.method public getCardinality()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/expr/JPConverter$FromSequence;->e:I

    return p0
.end method

.method public getItemType()Lnet/sf/saxon/type/ItemType;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/JPConverter$FromSequence;->d:Lnet/sf/saxon/type/ItemType;

    return-object p0
.end method
