.class public Lnet/sf/saxon/type/Converter$IdentityConverter;
.super Lnet/sf/saxon/type/Converter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/type/Converter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IdentityConverter"
.end annotation


# static fields
.field public static final INSTANCE:Lnet/sf/saxon/type/Converter$IdentityConverter;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnet/sf/saxon/type/Converter$IdentityConverter;

    invoke-direct {v0}, Lnet/sf/saxon/type/Converter$IdentityConverter;-><init>()V

    sput-object v0, Lnet/sf/saxon/type/Converter$IdentityConverter;->INSTANCE:Lnet/sf/saxon/type/Converter$IdentityConverter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/type/Converter;-><init>()V

    return-void
.end method


# virtual methods
.method public convert(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/type/ConversionResult;
    .locals 0

    return-object p1
.end method

.method public isAlwaysSuccessful()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
