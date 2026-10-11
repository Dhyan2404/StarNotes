.class public Lnet/sf/saxon/functions/AccessorFn$MinutesFromTime;
.super Lnet/sf/saxon/functions/AccessorFn;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/functions/AccessorFn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MinutesFromTime"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/functions/AccessorFn;-><init>()V

    return-void
.end method


# virtual methods
.method public getComponentId()Lnet/sf/saxon/functions/AccessorFn$Component;
    .locals 0

    sget-object p0, Lnet/sf/saxon/functions/AccessorFn$Component;->MINUTES:Lnet/sf/saxon/functions/AccessorFn$Component;

    return-object p0
.end method
