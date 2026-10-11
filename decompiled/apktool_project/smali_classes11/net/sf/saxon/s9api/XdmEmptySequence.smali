.class public Lnet/sf/saxon/s9api/XdmEmptySequence;
.super Lnet/sf/saxon/s9api/XdmValue;
.source "SourceFile"


# static fields
.field public static final f:Lnet/sf/saxon/s9api/XdmEmptySequence;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnet/sf/saxon/s9api/XdmEmptySequence;

    invoke-direct {v0}, Lnet/sf/saxon/s9api/XdmEmptySequence;-><init>()V

    sput-object v0, Lnet/sf/saxon/s9api/XdmEmptySequence;->f:Lnet/sf/saxon/s9api/XdmEmptySequence;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-direct {p0, v0}, Lnet/sf/saxon/s9api/XdmValue;-><init>(Ljava/lang/Iterable;)V

    return-void
.end method

.method public static getInstance()Lnet/sf/saxon/s9api/XdmEmptySequence;
    .locals 1

    sget-object v0, Lnet/sf/saxon/s9api/XdmEmptySequence;->f:Lnet/sf/saxon/s9api/XdmEmptySequence;

    return-object v0
.end method


# virtual methods
.method public size()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
