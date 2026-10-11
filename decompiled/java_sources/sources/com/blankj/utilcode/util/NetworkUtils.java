package com.blankj.utilcode.util;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.wifi.ScanResult;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.text.format.Formatter;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresPermission;
import com.blankj.utilcode.util.Utils;
import com.bumptech.glide.manager.DefaultConnectivityMonitorFactory;
import java.net.InetAddress;
import java.net.InterfaceAddress;
import java.net.NetworkInterface;
import java.net.SocketException;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Set;
import java.util.Timer;
import java.util.TimerTask;
import java.util.concurrent.CopyOnWriteArraySet;

/* loaded from: classes3.dex */
public final class NetworkUtils {

    /* renamed from: a */
    public static final long f13870a = 3000;

    /* renamed from: b */
    public static final Set<Utils.Consumer<WifiScanResults>> f13871b = new CopyOnWriteArraySet();

    /* renamed from: c */
    public static Timer f13872c;

    /* renamed from: d */
    public static WifiScanResults f13873d;

    /* loaded from: classes3.dex */
    public static final class NetworkChangedReceiver extends BroadcastReceiver {

        /* renamed from: a */
        public NetworkType f13874a;

        /* renamed from: b */
        public Set<OnNetworkStatusChangedListener> f13875b = new HashSet();

        /* renamed from: com.blankj.utilcode.util.NetworkUtils$NetworkChangedReceiver$a */
        /* loaded from: classes3.dex */
        public class RunnableC1830a implements Runnable {

            /* renamed from: e */
            public final /* synthetic */ OnNetworkStatusChangedListener f13876e;

            public RunnableC1830a(OnNetworkStatusChangedListener onNetworkStatusChangedListener) {
                this.f13876e = onNetworkStatusChangedListener;
            }

            @Override // java.lang.Runnable
            @RequiresPermission(DefaultConnectivityMonitorFactory.f15198b)
            public void run() {
                int size = NetworkChangedReceiver.this.f13875b.size();
                NetworkChangedReceiver.this.f13875b.add(this.f13876e);
                if (size == 0 && NetworkChangedReceiver.this.f13875b.size() == 1) {
                    NetworkChangedReceiver.this.f13874a = NetworkUtils.getNetworkType();
                    Utils.getApp().registerReceiver(NetworkChangedReceiver.m8213a(), new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
                }
            }
        }

        /* renamed from: com.blankj.utilcode.util.NetworkUtils$NetworkChangedReceiver$b */
        /* loaded from: classes3.dex */
        public class RunnableC1831b implements Runnable {

            /* renamed from: e */
            public final /* synthetic */ OnNetworkStatusChangedListener f13878e;

            public RunnableC1831b(OnNetworkStatusChangedListener onNetworkStatusChangedListener) {
                this.f13878e = onNetworkStatusChangedListener;
            }

            @Override // java.lang.Runnable
            public void run() {
                int size = NetworkChangedReceiver.this.f13875b.size();
                NetworkChangedReceiver.this.f13875b.remove(this.f13878e);
                if (size == 1 && NetworkChangedReceiver.this.f13875b.size() == 0) {
                    Utils.getApp().unregisterReceiver(NetworkChangedReceiver.m8213a());
                }
            }
        }

        /* renamed from: com.blankj.utilcode.util.NetworkUtils$NetworkChangedReceiver$c */
        /* loaded from: classes3.dex */
        public class RunnableC1832c implements Runnable {
            public RunnableC1832c() {
            }

            @Override // java.lang.Runnable
            @RequiresPermission(DefaultConnectivityMonitorFactory.f15198b)
            public void run() {
                NetworkType networkType = NetworkUtils.getNetworkType();
                if (NetworkChangedReceiver.this.f13874a == networkType) {
                    return;
                }
                NetworkChangedReceiver.this.f13874a = networkType;
                if (networkType == NetworkType.NETWORK_NO) {
                    Iterator it2 = NetworkChangedReceiver.this.f13875b.iterator();
                    while (it2.hasNext()) {
                        ((OnNetworkStatusChangedListener) it2.next()).onDisconnected();
                    }
                } else {
                    Iterator it3 = NetworkChangedReceiver.this.f13875b.iterator();
                    while (it3.hasNext()) {
                        ((OnNetworkStatusChangedListener) it3.next()).onConnected(networkType);
                    }
                }
            }
        }

        /* renamed from: com.blankj.utilcode.util.NetworkUtils$NetworkChangedReceiver$d */
        /* loaded from: classes3.dex */
        public static class C1833d {

            /* renamed from: a */
            public static final NetworkChangedReceiver f13881a = new NetworkChangedReceiver();
        }

        /* renamed from: a */
        public static /* synthetic */ NetworkChangedReceiver m8213a() {
            return m8217e();
        }

        /* renamed from: e */
        public static NetworkChangedReceiver m8217e() {
            return C1833d.f13881a;
        }

        /* renamed from: f */
        public boolean m8218f(OnNetworkStatusChangedListener onNetworkStatusChangedListener) {
            if (onNetworkStatusChangedListener == null) {
                return false;
            }
            return this.f13875b.contains(onNetworkStatusChangedListener);
        }

        @RequiresPermission(DefaultConnectivityMonitorFactory.f15198b)
        /* renamed from: g */
        public void m8219g(OnNetworkStatusChangedListener onNetworkStatusChangedListener) {
            if (onNetworkStatusChangedListener == null) {
                return;
            }
            C1887b.m8474V0(new RunnableC1830a(onNetworkStatusChangedListener));
        }

        /* renamed from: h */
        public void m8220h(OnNetworkStatusChangedListener onNetworkStatusChangedListener) {
            if (onNetworkStatusChangedListener == null) {
                return;
            }
            C1887b.m8474V0(new RunnableC1831b(onNetworkStatusChangedListener));
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if ("android.net.conn.CONNECTIVITY_CHANGE".equals(intent.getAction())) {
                C1887b.m8476W0(new RunnableC1832c(), 1000L);
            }
        }
    }

    /* loaded from: classes3.dex */
    public enum NetworkType {
        NETWORK_ETHERNET,
        NETWORK_WIFI,
        NETWORK_5G,
        NETWORK_4G,
        NETWORK_3G,
        NETWORK_2G,
        NETWORK_UNKNOWN,
        NETWORK_NO
    }

    /* loaded from: classes3.dex */
    public interface OnNetworkStatusChangedListener {
        void onConnected(NetworkType networkType);

        void onDisconnected();
    }

    /* loaded from: classes3.dex */
    public static final class WifiScanResults {

        /* renamed from: a */
        public List<ScanResult> f13882a = new ArrayList();

        /* renamed from: b */
        public List<ScanResult> f13883b = new ArrayList();

        /* renamed from: b */
        public static List<ScanResult> m8223b(List<ScanResult> list) {
            ScanResult scanResult;
            if (list == null || list.isEmpty()) {
                return new ArrayList();
            }
            LinkedHashMap linkedHashMap = new LinkedHashMap(list.size());
            for (ScanResult scanResult2 : list) {
                if (!TextUtils.isEmpty(scanResult2.SSID) && ((scanResult = (ScanResult) linkedHashMap.get(scanResult2.SSID)) == null || scanResult.level < scanResult2.level)) {
                    linkedHashMap.put(scanResult2.SSID, scanResult2);
                }
            }
            return new ArrayList(linkedHashMap.values());
        }

        public List<ScanResult> getAllResults() {
            return this.f13882a;
        }

        public List<ScanResult> getFilterResults() {
            return this.f13883b;
        }

        public void setAllResults(List<ScanResult> list) {
            this.f13882a = list;
            this.f13883b = m8223b(list);
        }
    }

    /* renamed from: com.blankj.utilcode.util.NetworkUtils$a */
    /* loaded from: classes3.dex */
    public static class C1834a extends Utils.Task<Boolean> {
        public C1834a(Utils.Consumer consumer) {
            super(consumer);
        }

        @Override // com.blankj.utilcode.util.ThreadUtils.Task
        @RequiresPermission("android.permission.INTERNET")
        /* renamed from: g, reason: merged with bridge method [inline-methods] */
        public Boolean doInBackground() {
            return Boolean.valueOf(NetworkUtils.isAvailable());
        }
    }

    /* renamed from: com.blankj.utilcode.util.NetworkUtils$b */
    /* loaded from: classes3.dex */
    public static class C1835b extends Utils.Task<Boolean> {

        /* renamed from: t */
        public final /* synthetic */ String f13884t;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C1835b(Utils.Consumer consumer, String str) {
            super(consumer);
            this.f13884t = str;
        }

        @Override // com.blankj.utilcode.util.ThreadUtils.Task
        @RequiresPermission("android.permission.INTERNET")
        /* renamed from: g, reason: merged with bridge method [inline-methods] */
        public Boolean doInBackground() {
            return Boolean.valueOf(NetworkUtils.isAvailableByPing(this.f13884t));
        }
    }

    /* renamed from: com.blankj.utilcode.util.NetworkUtils$c */
    /* loaded from: classes3.dex */
    public static class C1836c extends Utils.Task<Boolean> {

        /* renamed from: t */
        public final /* synthetic */ String f13885t;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C1836c(Utils.Consumer consumer, String str) {
            super(consumer);
            this.f13885t = str;
        }

        @Override // com.blankj.utilcode.util.ThreadUtils.Task
        @RequiresPermission("android.permission.INTERNET")
        /* renamed from: g, reason: merged with bridge method [inline-methods] */
        public Boolean doInBackground() {
            return Boolean.valueOf(NetworkUtils.isAvailableByDns(this.f13885t));
        }
    }

    /* renamed from: com.blankj.utilcode.util.NetworkUtils$d */
    /* loaded from: classes3.dex */
    public static class C1837d extends Utils.Task<Boolean> {
        public C1837d(Utils.Consumer consumer) {
            super(consumer);
        }

        @Override // com.blankj.utilcode.util.ThreadUtils.Task
        @RequiresPermission(allOf = {"android.permission.ACCESS_WIFI_STATE", "android.permission.INTERNET"})
        /* renamed from: g, reason: merged with bridge method [inline-methods] */
        public Boolean doInBackground() {
            return Boolean.valueOf(NetworkUtils.isWifiAvailable());
        }
    }

    /* renamed from: com.blankj.utilcode.util.NetworkUtils$e */
    /* loaded from: classes3.dex */
    public static class C1838e extends Utils.Task<String> {

        /* renamed from: t */
        public final /* synthetic */ boolean f13886t;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C1838e(Utils.Consumer consumer, boolean z) {
            super(consumer);
            this.f13886t = z;
        }

        @Override // com.blankj.utilcode.util.ThreadUtils.Task
        @RequiresPermission("android.permission.INTERNET")
        /* renamed from: g, reason: merged with bridge method [inline-methods] */
        public String doInBackground() {
            return NetworkUtils.getIPAddress(this.f13886t);
        }
    }

    /* renamed from: com.blankj.utilcode.util.NetworkUtils$f */
    /* loaded from: classes3.dex */
    public static class C1839f extends Utils.Task<String> {

        /* renamed from: t */
        public final /* synthetic */ String f13887t;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C1839f(Utils.Consumer consumer, String str) {
            super(consumer);
            this.f13887t = str;
        }

        @Override // com.blankj.utilcode.util.ThreadUtils.Task
        @RequiresPermission("android.permission.INTERNET")
        /* renamed from: g, reason: merged with bridge method [inline-methods] */
        public String doInBackground() {
            return NetworkUtils.getDomainAddress(this.f13887t);
        }
    }

    /* renamed from: com.blankj.utilcode.util.NetworkUtils$g */
    /* loaded from: classes3.dex */
    public static class RunnableC1840g implements Runnable {

        /* renamed from: e */
        public final /* synthetic */ Utils.Consumer f13888e;

        public RunnableC1840g(Utils.Consumer consumer) {
            this.f13888e = consumer;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (NetworkUtils.f13871b.isEmpty()) {
                NetworkUtils.f13871b.add(this.f13888e);
                NetworkUtils.m8210l();
            } else {
                this.f13888e.accept(NetworkUtils.f13873d);
                NetworkUtils.f13871b.add(this.f13888e);
            }
        }
    }

    /* renamed from: com.blankj.utilcode.util.NetworkUtils$h */
    /* loaded from: classes3.dex */
    public static class C1841h extends TimerTask {

        /* renamed from: com.blankj.utilcode.util.NetworkUtils$h$a */
        /* loaded from: classes3.dex */
        public class a implements Runnable {
            public a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                Iterator it2 = NetworkUtils.f13871b.iterator();
                while (it2.hasNext()) {
                    ((Utils.Consumer) it2.next()).accept(NetworkUtils.f13873d);
                }
            }
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        @RequiresPermission(allOf = {"android.permission.ACCESS_WIFI_STATE", "android.permission.CHANGE_WIFI_STATE", "android.permission.ACCESS_COARSE_LOCATION"})
        public void run() {
            NetworkUtils.m8211m();
            WifiScanResults wifiScanResult = NetworkUtils.getWifiScanResult();
            if (NetworkUtils.m8209k(NetworkUtils.f13873d.f13882a, wifiScanResult.f13882a)) {
                return;
            }
            WifiScanResults unused = NetworkUtils.f13873d = wifiScanResult;
            C1887b.m8474V0(new a());
        }
    }

    /* renamed from: com.blankj.utilcode.util.NetworkUtils$i */
    /* loaded from: classes3.dex */
    public static class RunnableC1842i implements Runnable {

        /* renamed from: e */
        public final /* synthetic */ Utils.Consumer f13890e;

        public RunnableC1842i(Utils.Consumer consumer) {
            this.f13890e = consumer;
        }

        @Override // java.lang.Runnable
        public void run() {
            NetworkUtils.f13871b.remove(this.f13890e);
            if (NetworkUtils.f13871b.isEmpty()) {
                NetworkUtils.m8212n();
            }
        }
    }

    public NetworkUtils() {
        throw new UnsupportedOperationException("u can't instantiate me...");
    }

    @RequiresPermission(allOf = {"android.permission.ACCESS_WIFI_STATE", "android.permission.CHANGE_WIFI_STATE", "android.permission.ACCESS_COARSE_LOCATION"})
    public static void addOnWifiChangedConsumer(Utils.Consumer<WifiScanResults> consumer) {
        if (consumer == null) {
            return;
        }
        C1887b.m8474V0(new RunnableC1840g(consumer));
    }

    public static String getBroadcastIpAddress() {
        try {
            Enumeration<NetworkInterface> networkInterfaces = NetworkInterface.getNetworkInterfaces();
            new LinkedList();
            while (networkInterfaces.hasMoreElements()) {
                NetworkInterface nextElement = networkInterfaces.nextElement();
                if (nextElement.isUp() && !nextElement.isLoopback()) {
                    List<InterfaceAddress> interfaceAddresses = nextElement.getInterfaceAddresses();
                    int size = interfaceAddresses.size();
                    for (int i = 0; i < size; i++) {
                        InetAddress broadcast = interfaceAddresses.get(i).getBroadcast();
                        if (broadcast != null) {
                            return broadcast.getHostAddress();
                        }
                    }
                }
            }
            return "";
        } catch (SocketException e) {
            e.printStackTrace();
            return "";
        }
    }

    @RequiresPermission("android.permission.INTERNET")
    public static String getDomainAddress(String str) {
        try {
            return InetAddress.getByName(str).getHostAddress();
        } catch (UnknownHostException e) {
            e.printStackTrace();
            return "";
        }
    }

    @RequiresPermission("android.permission.INTERNET")
    public static Utils.Task<String> getDomainAddressAsync(String str, @NonNull Utils.Consumer<String> consumer) {
        return C1887b.m8535v(new C1839f(consumer, str));
    }

    @RequiresPermission("android.permission.ACCESS_WIFI_STATE")
    public static String getGatewayByWifi() {
        WifiManager wifiManager = (WifiManager) Utils.getApp().getSystemService("wifi");
        return wifiManager == null ? "" : Formatter.formatIpAddress(wifiManager.getDhcpInfo().gateway);
    }

    @RequiresPermission("android.permission.INTERNET")
    public static String getIPAddress(boolean z) {
        try {
            Enumeration<NetworkInterface> networkInterfaces = NetworkInterface.getNetworkInterfaces();
            LinkedList linkedList = new LinkedList();
            while (networkInterfaces.hasMoreElements()) {
                NetworkInterface nextElement = networkInterfaces.nextElement();
                if (nextElement.isUp() && !nextElement.isLoopback()) {
                    Enumeration<InetAddress> inetAddresses = nextElement.getInetAddresses();
                    while (inetAddresses.hasMoreElements()) {
                        linkedList.addFirst(inetAddresses.nextElement());
                    }
                }
            }
            Iterator it2 = linkedList.iterator();
            while (it2.hasNext()) {
                InetAddress inetAddress = (InetAddress) it2.next();
                if (!inetAddress.isLoopbackAddress()) {
                    String hostAddress = inetAddress.getHostAddress();
                    boolean z2 = hostAddress.indexOf(58) < 0;
                    if (z) {
                        if (z2) {
                            return hostAddress;
                        }
                    } else if (!z2) {
                        int indexOf = hostAddress.indexOf(37);
                        return indexOf < 0 ? hostAddress.toUpperCase() : hostAddress.substring(0, indexOf).toUpperCase();
                    }
                }
            }
            return "";
        } catch (SocketException e) {
            e.printStackTrace();
            return "";
        }
    }

    public static Utils.Task<String> getIPAddressAsync(boolean z, @NonNull Utils.Consumer<String> consumer) {
        return C1887b.m8535v(new C1838e(consumer, z));
    }

    @RequiresPermission("android.permission.ACCESS_WIFI_STATE")
    public static String getIpAddressByWifi() {
        WifiManager wifiManager = (WifiManager) Utils.getApp().getSystemService("wifi");
        return wifiManager == null ? "" : Formatter.formatIpAddress(wifiManager.getDhcpInfo().ipAddress);
    }

    public static boolean getMobileDataEnabled() {
        try {
            TelephonyManager telephonyManager = (TelephonyManager) Utils.getApp().getSystemService("phone");
            if (telephonyManager == null) {
                return false;
            }
            return telephonyManager.isDataEnabled();
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    @RequiresPermission("android.permission.ACCESS_WIFI_STATE")
    public static String getNetMaskByWifi() {
        WifiManager wifiManager = (WifiManager) Utils.getApp().getSystemService("wifi");
        return wifiManager == null ? "" : Formatter.formatIpAddress(wifiManager.getDhcpInfo().netmask);
    }

    public static String getNetworkOperatorName() {
        TelephonyManager telephonyManager = (TelephonyManager) Utils.getApp().getSystemService("phone");
        return telephonyManager == null ? "" : telephonyManager.getNetworkOperatorName();
    }

    @RequiresPermission(DefaultConnectivityMonitorFactory.f15198b)
    public static NetworkType getNetworkType() {
        if (m8207i()) {
            return NetworkType.NETWORK_ETHERNET;
        }
        NetworkInfo m8206h = m8206h();
        if (m8206h == null || !m8206h.isAvailable()) {
            return NetworkType.NETWORK_NO;
        }
        if (m8206h.getType() == 1) {
            return NetworkType.NETWORK_WIFI;
        }
        if (m8206h.getType() != 0) {
            return NetworkType.NETWORK_UNKNOWN;
        }
        switch (m8206h.getSubtype()) {
            case 1:
            case 2:
            case 4:
            case 7:
            case 11:
            case 16:
                return NetworkType.NETWORK_2G;
            case 3:
            case 5:
            case 6:
            case 8:
            case 9:
            case 10:
            case 12:
            case 14:
            case 15:
            case 17:
                return NetworkType.NETWORK_3G;
            case 13:
            case 18:
                return NetworkType.NETWORK_4G;
            case 19:
            default:
                String subtypeName = m8206h.getSubtypeName();
                return (subtypeName.equalsIgnoreCase("TD-SCDMA") || subtypeName.equalsIgnoreCase("WCDMA") || subtypeName.equalsIgnoreCase("CDMA2000")) ? NetworkType.NETWORK_3G : NetworkType.NETWORK_UNKNOWN;
            case 20:
                return NetworkType.NETWORK_5G;
        }
    }

    @RequiresPermission("android.permission.ACCESS_WIFI_STATE")
    public static String getSSID() {
        WifiInfo connectionInfo;
        WifiManager wifiManager = (WifiManager) Utils.getApp().getApplicationContext().getSystemService("wifi");
        if (wifiManager == null || (connectionInfo = wifiManager.getConnectionInfo()) == null) {
            return "";
        }
        String ssid = connectionInfo.getSSID();
        return TextUtils.isEmpty(ssid) ? "" : (ssid.length() > 2 && ssid.charAt(0) == '\"' && ssid.charAt(ssid.length() - 1) == '\"') ? ssid.substring(1, ssid.length() - 1) : ssid;
    }

    @RequiresPermission("android.permission.ACCESS_WIFI_STATE")
    public static String getServerAddressByWifi() {
        WifiManager wifiManager = (WifiManager) Utils.getApp().getSystemService("wifi");
        return wifiManager == null ? "" : Formatter.formatIpAddress(wifiManager.getDhcpInfo().serverAddress);
    }

    @RequiresPermission("android.permission.ACCESS_WIFI_STATE")
    public static boolean getWifiEnabled() {
        WifiManager wifiManager = (WifiManager) Utils.getApp().getSystemService("wifi");
        if (wifiManager == null) {
            return false;
        }
        return wifiManager.isWifiEnabled();
    }

    @RequiresPermission(allOf = {"android.permission.ACCESS_WIFI_STATE", "android.permission.ACCESS_COARSE_LOCATION"})
    public static WifiScanResults getWifiScanResult() {
        List<ScanResult> scanResults;
        WifiScanResults wifiScanResults = new WifiScanResults();
        if (getWifiEnabled() && (scanResults = ((WifiManager) Utils.getApp().getSystemService("wifi")).getScanResults()) != null) {
            wifiScanResults.setAllResults(scanResults);
        }
        return wifiScanResults;
    }

    @RequiresPermission(DefaultConnectivityMonitorFactory.f15198b)
    /* renamed from: h */
    public static NetworkInfo m8206h() {
        ConnectivityManager connectivityManager = (ConnectivityManager) Utils.getApp().getSystemService("connectivity");
        if (connectivityManager == null) {
            return null;
        }
        return connectivityManager.getActiveNetworkInfo();
    }

    @RequiresPermission(DefaultConnectivityMonitorFactory.f15198b)
    /* renamed from: i */
    public static boolean m8207i() {
        NetworkInfo networkInfo;
        NetworkInfo.State state;
        ConnectivityManager connectivityManager = (ConnectivityManager) Utils.getApp().getSystemService("connectivity");
        if (connectivityManager == null || (networkInfo = connectivityManager.getNetworkInfo(9)) == null || (state = networkInfo.getState()) == null) {
            return false;
        }
        return state == NetworkInfo.State.CONNECTED || state == NetworkInfo.State.CONNECTING;
    }

    @RequiresPermission(DefaultConnectivityMonitorFactory.f15198b)
    public static boolean is4G() {
        NetworkInfo m8206h = m8206h();
        return m8206h != null && m8206h.isAvailable() && m8206h.getSubtype() == 13;
    }

    @RequiresPermission(DefaultConnectivityMonitorFactory.f15198b)
    public static boolean is5G() {
        NetworkInfo m8206h = m8206h();
        return m8206h != null && m8206h.isAvailable() && m8206h.getSubtype() == 20;
    }

    @RequiresPermission("android.permission.INTERNET")
    public static boolean isAvailable() {
        return isAvailableByDns() || isAvailableByPing(null);
    }

    @RequiresPermission("android.permission.INTERNET")
    public static Utils.Task<Boolean> isAvailableAsync(@NonNull Utils.Consumer<Boolean> consumer) {
        return C1887b.m8535v(new C1834a(consumer));
    }

    @RequiresPermission("android.permission.INTERNET")
    public static boolean isAvailableByDns() {
        return isAvailableByDns("");
    }

    @RequiresPermission("android.permission.INTERNET")
    public static void isAvailableByDnsAsync(Utils.Consumer<Boolean> consumer) {
        isAvailableByDnsAsync("", consumer);
    }

    @RequiresPermission("android.permission.INTERNET")
    public static boolean isAvailableByPing() {
        return isAvailableByPing("");
    }

    @RequiresPermission("android.permission.INTERNET")
    public static void isAvailableByPingAsync(Utils.Consumer<Boolean> consumer) {
        isAvailableByPingAsync("", consumer);
    }

    public static boolean isBehindProxy() {
        return (System.getProperty("http.proxyHost") == null || System.getProperty("http.proxyPort") == null) ? false : true;
    }

    @RequiresPermission(DefaultConnectivityMonitorFactory.f15198b)
    public static boolean isConnected() {
        NetworkInfo m8206h = m8206h();
        return m8206h != null && m8206h.isConnected();
    }

    @RequiresPermission(DefaultConnectivityMonitorFactory.f15198b)
    public static boolean isMobileData() {
        NetworkInfo m8206h = m8206h();
        return m8206h != null && m8206h.isAvailable() && m8206h.getType() == 0;
    }

    public static boolean isRegisteredNetworkStatusChangedListener(OnNetworkStatusChangedListener onNetworkStatusChangedListener) {
        return NetworkChangedReceiver.m8213a().m8218f(onNetworkStatusChangedListener);
    }

    public static boolean isUsingVPN() {
        return ((ConnectivityManager) Utils.getApp().getSystemService("connectivity")).getNetworkInfo(17).isConnectedOrConnecting();
    }

    @RequiresPermission(allOf = {"android.permission.ACCESS_WIFI_STATE", "android.permission.INTERNET"})
    public static boolean isWifiAvailable() {
        return getWifiEnabled() && isAvailable();
    }

    @RequiresPermission(allOf = {"android.permission.ACCESS_WIFI_STATE", "android.permission.INTERNET"})
    public static Utils.Task<Boolean> isWifiAvailableAsync(@NonNull Utils.Consumer<Boolean> consumer) {
        return C1887b.m8535v(new C1837d(consumer));
    }

    @RequiresPermission(DefaultConnectivityMonitorFactory.f15198b)
    public static boolean isWifiConnected() {
        NetworkInfo activeNetworkInfo;
        ConnectivityManager connectivityManager = (ConnectivityManager) Utils.getApp().getSystemService("connectivity");
        return (connectivityManager == null || (activeNetworkInfo = connectivityManager.getActiveNetworkInfo()) == null || activeNetworkInfo.getType() != 1) ? false : true;
    }

    /* renamed from: j */
    public static boolean m8208j(ScanResult scanResult, ScanResult scanResult2) {
        return scanResult != null && scanResult2 != null && C1887b.m8431A(scanResult.BSSID, scanResult2.BSSID) && C1887b.m8431A(scanResult.SSID, scanResult2.SSID) && C1887b.m8431A(scanResult.capabilities, scanResult2.capabilities) && scanResult.level == scanResult2.level;
    }

    /* renamed from: k */
    public static boolean m8209k(List<ScanResult> list, List<ScanResult> list2) {
        if (list == null && list2 == null) {
            return true;
        }
        if (list == null || list2 == null || list.size() != list2.size()) {
            return false;
        }
        for (int i = 0; i < list.size(); i++) {
            if (!m8208j(list.get(i), list2.get(i))) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: l */
    public static void m8210l() {
        f13873d = new WifiScanResults();
        Timer timer = new Timer();
        f13872c = timer;
        timer.schedule(new C1841h(), 0L, 3000L);
    }

    @RequiresPermission(allOf = {"android.permission.ACCESS_WIFI_STATE", "android.permission.CHANGE_WIFI_STATE"})
    /* renamed from: m */
    public static void m8211m() {
        if (getWifiEnabled()) {
            ((WifiManager) Utils.getApp().getSystemService("wifi")).startScan();
        }
    }

    /* renamed from: n */
    public static void m8212n() {
        Timer timer = f13872c;
        if (timer != null) {
            timer.cancel();
            f13872c = null;
        }
    }

    public static void openWirelessSettings() {
        Utils.getApp().startActivity(new Intent("android.settings.WIRELESS_SETTINGS").setFlags(268435456));
    }

    @RequiresPermission(DefaultConnectivityMonitorFactory.f15198b)
    public static void registerNetworkStatusChangedListener(OnNetworkStatusChangedListener onNetworkStatusChangedListener) {
        NetworkChangedReceiver.m8213a().m8219g(onNetworkStatusChangedListener);
    }

    public static void removeOnWifiChangedConsumer(Utils.Consumer<WifiScanResults> consumer) {
        if (consumer == null) {
            return;
        }
        C1887b.m8474V0(new RunnableC1842i(consumer));
    }

    @RequiresPermission("android.permission.CHANGE_WIFI_STATE")
    public static void setWifiEnabled(boolean z) {
        WifiManager wifiManager = (WifiManager) Utils.getApp().getSystemService("wifi");
        if (wifiManager == null || z == wifiManager.isWifiEnabled()) {
            return;
        }
        wifiManager.setWifiEnabled(z);
    }

    public static void unregisterNetworkStatusChangedListener(OnNetworkStatusChangedListener onNetworkStatusChangedListener) {
        NetworkChangedReceiver.m8213a().m8220h(onNetworkStatusChangedListener);
    }

    @RequiresPermission("android.permission.INTERNET")
    public static boolean isAvailableByDns(String str) {
        if (TextUtils.isEmpty(str)) {
            str = "www.baidu.com";
        }
        try {
            return InetAddress.getByName(str) != null;
        } catch (UnknownHostException e) {
            e.printStackTrace();
            return false;
        }
    }

    @RequiresPermission("android.permission.INTERNET")
    public static Utils.Task isAvailableByDnsAsync(String str, @NonNull Utils.Consumer<Boolean> consumer) {
        return C1887b.m8535v(new C1836c(consumer, str));
    }

    @RequiresPermission("android.permission.INTERNET")
    public static boolean isAvailableByPing(String str) {
        if (TextUtils.isEmpty(str)) {
            str = "223.5.5.5";
        }
        return ShellUtils.execCmd(String.format("ping -c 1 %s", str), false).result == 0;
    }

    @RequiresPermission("android.permission.INTERNET")
    public static Utils.Task<Boolean> isAvailableByPingAsync(String str, @NonNull Utils.Consumer<Boolean> consumer) {
        return C1887b.m8535v(new C1835b(consumer, str));
    }
}
