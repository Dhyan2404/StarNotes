.class public Lnet/sf/saxon/om/StylesheetSpaceStrippingRule;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/om/SpaceStrippingRule;


# static fields
.field public static final b:[I


# instance fields
.field public final a:Lnet/sf/saxon/om/NamePool;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xe

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lnet/sf/saxon/om/StylesheetSpaceStrippingRule;->b:[I

    return-void

    :array_0
    .array-data 4
        0x83
        0x84
        0x85
        0x8a
        0x8c
        0x8e
        0x8f
        0x99
        0xae
        0xb2
        0xb7
        0xb8
        0xd0
        0xd4
    .end array-data
.end method

.method public constructor <init>(Lnet/sf/saxon/om/NamePool;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/om/StylesheetSpaceStrippingRule;->a:Lnet/sf/saxon/om/NamePool;

    return-void
.end method


# virtual methods
.method public export(Lnet/sf/saxon/trace/ExpressionPresenter;)V
    .locals 0

    return-void
.end method

.method public isSpacePreserving(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;)I
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/om/StylesheetSpaceStrippingRule;->a:Lnet/sf/saxon/om/NamePool;

    invoke-interface {p1, p0}, Lnet/sf/saxon/om/NodeName;->obtainFingerprint(Lnet/sf/saxon/om/NamePool;)I

    move-result p0

    const/16 p1, 0xd3

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    sget-object p1, Lnet/sf/saxon/om/StylesheetSpaceStrippingRule;->b:[I

    invoke-static {p1, p0}, Ljava/util/Arrays;->binarySearch([II)I

    move-result p0

    if-ltz p0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public makeStripper(Lnet/sf/saxon/event/Receiver;)Lnet/sf/saxon/event/ProxyReceiver;
    .locals 1

    new-instance v0, Lnet/sf/saxon/event/Stripper;

    invoke-direct {v0, p0, p1}, Lnet/sf/saxon/event/Stripper;-><init>(Lnet/sf/saxon/om/SpaceStrippingRule;Lnet/sf/saxon/event/Receiver;)V

    return-object v0
.end method
