.class public Lnet/sf/saxon/value/StringToDouble11;
.super Lnet/sf/saxon/type/StringToDouble;
.source "SourceFile"


# static fields
.field public static final d:Lnet/sf/saxon/value/StringToDouble11;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnet/sf/saxon/value/StringToDouble11;

    invoke-direct {v0}, Lnet/sf/saxon/value/StringToDouble11;-><init>()V

    sput-object v0, Lnet/sf/saxon/value/StringToDouble11;->d:Lnet/sf/saxon/value/StringToDouble11;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/type/StringToDouble;-><init>()V

    return-void
.end method

.method public static getInstance()Lnet/sf/saxon/value/StringToDouble11;
    .locals 1

    sget-object v0, Lnet/sf/saxon/value/StringToDouble11;->d:Lnet/sf/saxon/value/StringToDouble11;

    return-object v0
.end method


# virtual methods
.method public signedPositiveInfinity()D
    .locals 2

    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    return-wide v0
.end method
