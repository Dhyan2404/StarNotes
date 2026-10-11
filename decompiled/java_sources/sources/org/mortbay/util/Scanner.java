package org.mortbay.util;

import java.io.File;
import java.io.FilenameFilter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Timer;
import java.util.TimerTask;
import org.mortbay.log.Log;

/* loaded from: classes13.dex */
public class Scanner {

    /* renamed from: a */
    public int f115345a;

    /* renamed from: e */
    public FilenameFilter f115349e;

    /* renamed from: f */
    public List f115350f;

    /* renamed from: i */
    public Timer f115353i;

    /* renamed from: j */
    public TimerTask f115354j;

    /* renamed from: b */
    public List f115346b = Collections.synchronizedList(new ArrayList());

    /* renamed from: c */
    public Map f115347c = new HashMap();

    /* renamed from: d */
    public Map f115348d = new HashMap();

    /* renamed from: g */
    public volatile boolean f115351g = false;

    /* renamed from: h */
    public boolean f115352h = true;

    /* renamed from: k */
    public boolean f115355k = true;

    /* loaded from: classes13.dex */
    public interface BulkListener extends Listener {
        void filesChanged(List list) throws Exception;
    }

    /* loaded from: classes13.dex */
    public interface DiscreteListener extends Listener {
        void fileAdded(String str) throws Exception;

        void fileChanged(String str) throws Exception;

        void fileRemoved(String str) throws Exception;
    }

    /* loaded from: classes13.dex */
    public interface Listener {
    }

    /* renamed from: a */
    public final void m71659a(String str) {
        for (Object obj : this.f115346b) {
            try {
                if (obj instanceof DiscreteListener) {
                    ((DiscreteListener) obj).fileAdded(str);
                }
            } catch (Error e) {
                m71664f(obj, str, e);
            } catch (Exception e2) {
                m71664f(obj, str, e2);
            }
        }
    }

    public synchronized void addListener(Listener listener) {
        if (listener == null) {
            return;
        }
        this.f115346b.add(listener);
    }

    /* renamed from: b */
    public final void m71660b(List list) {
        for (Object obj : this.f115346b) {
            try {
                if (obj instanceof BulkListener) {
                    ((BulkListener) obj).filesChanged(list);
                }
            } catch (Error e) {
                m71664f(obj, list.toString(), e);
            } catch (Exception e2) {
                m71664f(obj, list.toString(), e2);
            }
        }
    }

    /* renamed from: c */
    public final void m71661c(String str) {
        for (Object obj : this.f115346b) {
            try {
                if (obj instanceof DiscreteListener) {
                    ((DiscreteListener) obj).fileChanged(str);
                }
            } catch (Error e) {
                m71664f(obj, str, e);
            } catch (Exception e2) {
                m71664f(obj, str, e2);
            }
        }
    }

    /* renamed from: d */
    public final void m71662d(String str) {
        for (Object obj : this.f115346b) {
            try {
                if (obj instanceof DiscreteListener) {
                    ((DiscreteListener) obj).fileRemoved(str);
                }
            } catch (Error e) {
                m71664f(obj, str, e);
            } catch (Exception e2) {
                m71664f(obj, str, e2);
            }
        }
    }

    /* renamed from: e */
    public final void m71663e(File file, Map map) {
        try {
            if (file.exists()) {
                if (file.isFile()) {
                    FilenameFilter filenameFilter = this.f115349e;
                    if (filenameFilter == null || (filenameFilter != null && filenameFilter.accept(file.getParentFile(), file.getName()))) {
                        map.put(file.getCanonicalPath(), new Long(file.lastModified()));
                        return;
                    }
                    return;
                }
                if (file.isDirectory()) {
                    if (this.f115355k || this.f115350f.contains(file)) {
                        for (File file2 : file.listFiles()) {
                            m71663e(file2, map);
                        }
                    }
                }
            }
        } catch (IOException e) {
            Log.warn("Error scanning watched files", (Throwable) e);
        }
    }

    /* renamed from: f */
    public final void m71664f(Object obj, String str, Throwable th) {
        Log.warn(th);
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(obj);
        stringBuffer.append(" failed on '");
        stringBuffer.append(str);
        Log.warn(stringBuffer.toString());
    }

    public FilenameFilter getFilenameFilter() {
        return this.f115349e;
    }

    public boolean getRecursive() {
        return this.f115355k;
    }

    public File getScanDir() {
        List list = this.f115350f;
        if (list == null) {
            return null;
        }
        return (File) list.get(0);
    }

    public List getScanDirs() {
        return this.f115350f;
    }

    public int getScanInterval() {
        return this.f115345a;
    }

    public Timer newTimer() {
        return new Timer(true);
    }

    public TimerTask newTimerTask() {
        return new C20444c(this);
    }

    public synchronized void removeListener(Listener listener) {
        if (listener == null) {
            return;
        }
        this.f115346b.remove(listener);
    }

    public void reportDifferences(Map map, Map map2) {
        ArrayList arrayList = new ArrayList();
        HashSet<String> hashSet = new HashSet(map2.keySet());
        for (Map.Entry entry : map.entrySet()) {
            if (!hashSet.contains(entry.getKey())) {
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append("File added: ");
                stringBuffer.append(entry.getKey());
                Log.debug(stringBuffer.toString());
                m71659a((String) entry.getKey());
                arrayList.add(entry.getKey());
            } else if (map2.get(entry.getKey()).equals(entry.getValue())) {
                hashSet.remove(entry.getKey());
            } else {
                StringBuffer stringBuffer2 = new StringBuffer();
                stringBuffer2.append("File changed: ");
                stringBuffer2.append(entry.getKey());
                Log.debug(stringBuffer2.toString());
                m71661c((String) entry.getKey());
                hashSet.remove(entry.getKey());
                arrayList.add(entry.getKey());
            }
        }
        if (!hashSet.isEmpty()) {
            for (String str : hashSet) {
                StringBuffer stringBuffer3 = new StringBuffer();
                stringBuffer3.append("File removed: ");
                stringBuffer3.append(str);
                Log.debug(stringBuffer3.toString());
                m71662d(str);
                arrayList.add(str);
            }
        }
        if (arrayList.isEmpty()) {
            return;
        }
        m71660b(arrayList);
    }

    public void scan() {
        scanFiles();
        reportDifferences(this.f115348d, this.f115347c);
        this.f115347c.clear();
        this.f115347c.putAll(this.f115348d);
    }

    public void scanFiles() {
        if (this.f115350f == null) {
            return;
        }
        this.f115348d.clear();
        for (File file : this.f115350f) {
            if (file != null && file.exists()) {
                m71663e(file, this.f115348d);
            }
        }
    }

    public void schedule() {
        if (this.f115351g) {
            Timer timer = this.f115353i;
            if (timer != null) {
                timer.cancel();
            }
            TimerTask timerTask = this.f115354j;
            if (timerTask != null) {
                timerTask.cancel();
            }
            if (getScanInterval() > 0) {
                this.f115353i = newTimer();
                TimerTask newTimerTask = newTimerTask();
                this.f115354j = newTimerTask;
                this.f115353i.schedule(newTimerTask, getScanInterval() * 1000, 1000 * getScanInterval());
            }
        }
    }

    public void setFilenameFilter(FilenameFilter filenameFilter) {
        this.f115349e = filenameFilter;
    }

    public void setRecursive(boolean z) {
        this.f115355k = z;
    }

    public void setReportExistingFilesOnStartup(boolean z) {
        this.f115352h = z;
    }

    public void setScanDir(File file) {
        ArrayList arrayList = new ArrayList();
        this.f115350f = arrayList;
        arrayList.add(file);
    }

    public void setScanDirs(List list) {
        this.f115350f = list;
    }

    public synchronized void setScanInterval(int i) {
        this.f115345a = i;
        schedule();
    }

    public synchronized void start() {
        if (this.f115351g) {
            return;
        }
        this.f115351g = true;
        if (this.f115352h) {
            scan();
        } else {
            scanFiles();
            this.f115347c.putAll(this.f115348d);
        }
        schedule();
    }

    public synchronized void stop() {
        if (this.f115351g) {
            this.f115351g = false;
            Timer timer = this.f115353i;
            if (timer != null) {
                timer.cancel();
            }
            TimerTask timerTask = this.f115354j;
            if (timerTask != null) {
                timerTask.cancel();
            }
            this.f115354j = null;
            this.f115353i = null;
        }
    }
}
