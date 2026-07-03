# Technology, Claims, and Operations as Growth Enablers — MAPFRE USA Research Brief

**Prepared:** 2026-07-02 | **Scope:** MAPFRE USA / The Commerce Insurance Company (Webster, MA), with Massachusetts personal auto as the core book (~80% of revenue per client, distributed almost entirely through independent agents; no functioning bind-capable direct channel).

---

## 1. Executive summary

- MAPFRE USA completed a full **Guidewire InsuranceSuite** modernization of its personal lines core (policy, billing, claims, rating, agent/customer digital front end) announced in November 2020, and moved commercial auto/garage lines to **Guidewire Cloud on AWS** — so the frequently-assumed "legacy core" excuse does not apply; the constraint is what has been *built on top of* the modern core, not the core itself [1].
- The parent group spends **>€600 million per year on technology** and runs an AI Center that produced **150+ AI use cases in 2025 (one-third generative AI)**; MAPFRE USA has a dedicated Chief Data, Digital & Innovation Officer (José Luis Bernal Zúñiga) whose stated priorities are customer self-service and reaching the digital consumer — but no public evidence of a bind-capable direct channel or an agent-API program in the U.S. [2][3][4].
- MAPFRE's customer-experience benchmarks are **poor and persistent**: lowest score in J.D. Power's 2025 New England auto insurance study (595 vs. Amica's 735 and a regional average ~705), bottom-quintile auto claims satisfaction across 2019–2024 studies, and below-average shopping-study scores [5][6][7][8]. This is the single most documented weakness in the public record.
- Financially, the turnaround is real: North America swung from a **€1.8M loss in 2023 (combined ratio ~105.4%)** to **€139M profit and a 95.4% combined ratio in FY2025**, with U.S. auto combined ratio improving from ~107% (2023) to **97.8% (2025)** — creating, for the first time in years, capital headroom to invest in growth rather than remediation [9][10].
- The best-practice bar in agent-facing technology is well documented: **83% of independent agents say they would write more business with carriers offering real-time appetite and quoting inside their management systems** (Ivans, Jan 2024), and J.D. Power's 2025 Independent Agent Study shows a 274-point satisfaction gap between carriers rated "very easy" vs. not [11][12]. Erie, Auto-Owners, Cincinnati, and Progressive (For Agents Only "Portfolio" rebuild) define the standard [12][13].
- Modern claims capabilities are quantifiably accretive: photo/AI estimating cuts appraisal cycle time 20–30% and top adopters run up to ~90% touchless estimates; typical carriers recover only ~5.1% of paid losses through subrogation while ~15–16% of recoverable claims are missed (an estimated $15B+ industry leakage); McKinsey projects >50% of claims activities automated by 2030 with STP rates above 90% in personal lines [14][15][16][17]. MAPFRE already fields several of these building blocks (ePICS photo appraisal, CAR EZ managed repair, One Inc ClaimsPay digital payments, Shift Technology at group level) but its claims-satisfaction scores show they are not yet translating into experience or retention advantage [18][19][20][21].

---

## 2. What is publicly known about MAPFRE USA's technology stack and digital investments

### 2.1 Core systems: Guidewire, deployed — personal lines complete by 2020, commercial on Guidewire Cloud

Per a joint Guidewire/MAPFRE press release (Nov 4, 2020), MAPFRE USA deployed, for **personal lines**: Guidewire **InsuranceSuite** (PolicyCenter, ClaimCenter, BillingCenter), **Client Data Management**, **Rating Management**, **EnterpriseEngage** (digital portals for policyholders, agents, CSRs and vendors), plus **DataHub** and **InfoCenter** for data/analytics. For **commercial auto and garage lines**, MAPFRE was implementing PolicyCenter, Rating Management and EnterpriseEngage on **Guidewire Cloud (AWS)**. John Kelly (then EVP) cited "reduced time-to-market for new products," simplified underwriting workflow and more flexible billing as the goals; no quantified benefits were disclosed [1].

**Analyst note:** This matters strategically. MAPFRE's core platform is the same one used by many digitally leading carriers. The absence of a bind-capable direct channel and (as far as public sources show) of published agent-facing APIs is therefore an *execution/prioritization* gap, not a legacy-technology gap.

### 2.2 Group-level technology and AI investment

- MAPFRE S.A. states it invests **over €600 million annually in technology** (as of ~2024–2025 group communications) [2].
- The group's FY2025 results communication highlights accelerated deployment of the **REEF technology platform** and an **Artificial Intelligence Center that developed more than 150 use cases in 2025, one-third based on generative AI**; group-reported claims-processing time reductions of ~30% in select auto categories were achieved in Spain and Brazil portals — *not* documented for the U.S. [3][10].
- **Shift Technology partnership** (announced Oct 2020, via MAPFRE's insur_space program): AI claims automation and fraud detection, beginning with homeowner water-damage claims; the group positions Shift as an end-to-end claims automation partner. U.S.-specific deployment scope is not publicly detailed [21].

### 2.3 MAPFRE USA's stated digital agenda

MAPFRE USA's Chief Data, Digital & Innovation Officer **José Luis Bernal Zúñiga** has presented at ITC Vegas 2024 and 2025 on the company's data/AI strategy. Publicly stated priorities (as of late 2024–2025): (1) **promoting customer self-service** and (2) **expanding access to the digital consumer base**, using data, analytics and AI models; a flagship **AI-driven fraud detection project** identifying fraud "in real time" is repeatedly cited [4][22]. Notably, in the public material reviewed, **agent-channel technology is not mentioned** as a strategic priority — a striking omission for a carrier that distributes ~100% through independent agents [4][22].

### 2.4 Customer-facing digital assets (U.S.)

| Asset | What it does | Source / as-of |
|---|---|---|
| **Go MAPFRE app** | Policy management, digital ID cards, payments, claims tracking (launched ~2021) | [18], current |
| **ePICS** photo appraisal | Customer submits photos/video of vehicle damage; licensed appraiser returns estimate in 24–48 hrs, eliminating in-person appraisal for eligible claims | [18][20], current |
| **CAR EZ** managed repair | Expedited repair via preferred body-shop network with dedicated appraiser coordination | [20], current |
| **One Inc ClaimsPay** | Digital outbound claims and premium-refund payments (instant payments, multiple methods beyond checks); announced Nov 1, 2023 | [19] |
| Website quote page | Quote only — **cannot bind** (client statement, corroborated by absence of any bind flow on mapfreinsurance.com) | client; [18] |

### 2.5 Footprint and financial capacity to invest

- MAPFRE USA operates in **11 states through 3,000+ independent agents/brokers** (as of Nov 2023, per One Inc release) after its 2017–2018 restructuring exited NY, NJ, KY, TN, IN to focus on the Northeast (~67% of business at that time) [19][23].
- North America results (MAPFRE S.A. reporting, in euros):

| Metric | FY2023 | FY2024 | FY2025 |
|---|---|---|---|
| NA premiums | ~€2.7B | ~€2.8B (US ~€2.4B) | €2.6B (US ~€2.3B; FX-driven decline, stable in local currency) |
| NA net result | –€1.8M | €97.6M | €139M (US €118.2M) |
| NA combined ratio | ~105.4% (implied) | 98.7% | 95.4% |
| NA **auto** combined ratio | ~107.2% (implied) | 101.2% | 97.8% |

Sources: MAPFRE FY2024 and FY2025 earnings communications [9][10]. The improvement is attributed by MAPFRE to "significant tariff adjustments," technical measures, and benign weather — i.e., primarily rate, not operational transformation [9][10].
- **AM Best rating caveat:** MoneyGeek (2026 review) notes MAPFRE's U.S. entities are "currently unrated per MAPFRE's request" (ratings previously A/Excellent before withdrawal); treat any "A-rated" claim with care [8]. I could not verify the current AM Best status from a primary AM Best source within this research pass — flagged as an open item.

---

## 3. Claims-experience benchmarks: MAPFRE vs. competitors in MA/New England

### 3.1 J.D. Power studies (most probative external benchmark)

| Study | MAPFRE result | Benchmark | As-of |
|---|---|---|---|
| U.S. Auto Insurance Study, **New England** 2025 | **595 — lowest in region** | Amica 735 (1st, all 7 dimensions); Plymouth Rock 592; Farmers 567; Amica was 110 pts above regional avg (implies avg ~705) | June 2025 [5] |
| U.S. Auto Insurance Study, New England 2023 | 797/1,000, **9th** in region | (older 1,000-pt scale; not comparable to 2025 redesigned scale) | 2023 [8] |
| U.S. Auto **Claims** Satisfaction 2024 | **17th of 21** | industry avg; Ranked bottom quintile | 2024 [8] |
| U.S. Auto Claims Satisfaction 2020 | **second-to-last** | industry avg 872 that year | 2020 [7] |
| U.S. Auto Claims Satisfaction 2019 | **23rd of 25** | — | 2019 [7] |
| U.S. Insurance **Shopping** Study 2024 | **622** | New England regional avg 637 | 2024 [8] |
| U.S. Auto Claims Satisfaction 2025 | not individually ranked in cited coverage | Industry avg **700**; Erie 743, NJM 731, Liberty Mutual 730; avg repair cycle time 19.3 days (down from 22.3) | Oct 28, 2025 [6] |

The pattern across six-plus years and multiple study types (claims, shopping, overall satisfaction) is consistent: **MAPFRE sits at or near the bottom of its region and of national claims rankings**, while its most direct MA competitors bracket it (Amica far above; Plymouth Rock roughly at par at 592; Safety and Arbella too small to be ranked separately in most national studies) [5][6][7][8].

### 3.2 Complaint data

- NAIC complaint index for MAPFRE auto: **1.02** (slightly above the 1.00 average), per ValuePenguin citing NAIC data — but this figure is dated (2019 study year) [7].
- ConsumersAdvocate reports a Commerce Insurance Company NAIC complaint ratio of **0.62** (below average) in its 2026 review, while MoneyGeek (2026) characterizes the group's index as "mixed (0.62–9.99) varying by subsidiary," with some sources citing "more than twice the average" complaints for certain entities [8][24].
- **Reconciliation and trust judgment:** these figures conflict because the NAIC index is computed per legal entity and per year. The Commerce Insurance Company (the dominant MA auto writer) appears to run *below* average (0.62), while smaller MAPFRE subsidiaries (e.g., in formerly non-core states) drag group-level aggregations up. For a Massachusetts growth strategy, the Commerce-entity figure is the relevant one — but it should be re-verified directly in the NAIC CIS database and the MA Division of Insurance annual complaint-ratio report, which were not directly retrievable in this pass (open item). I was **unable to source a current MA DOI complaint ratio for Commerce from a primary source**; do not quote one.

### 3.3 Market-share context (why claims experience matters now)

Massachusetts private passenger auto, **August 2025** (Agency Checklists, from CAR data) [25]:

| Rank | Carrier | Share of exposures | Exposures |
|---|---|---|---|
| 1 | **Commerce (MAPFRE)** | **18.22%** | 624,158 |
| 2 | Progressive | 11.92% | 408,487 |
| 3 | GEICO | 11.56% | 395,911 |
| 4 | Safety | 9.62% | 329,650 |
| 5 | Plymouth Rock | 8.01% | 274,524 |
| 6 | Arbella | 7.12% | 243,894 |

Commerce held 19.02% at December 2024 and has drifted to the 18.1–18.3% range through 2025; **Progressive overtook GEICO in May 2025** and is the momentum player, gaining across both agency and digital channels [25][26]. MAPFRE's #1 position is intact but eroding at roughly 0.8 pp/year while the two national direct/hybrid carriers together hold ~23.5% [25].

### 3.4 Distribution shock: the AAA Northeast dispute

In February 2026, a Massachusetts Superior Court **denied MAPFRE's preliminary injunction** to stop AAA Northeast from selling competitors' auto insurance. MAPFRE claims breach of an exclusive joint-marketing arrangement worth approximately **$200 million in annual premium**; AAA contends no exclusivity has existed since 2008 and already sells Travelers and Arbella policies. The court found money damages adequate — meaning AAA can keep diverting business while litigation proceeds [27]. This puts a mid-single-digit share of MAPFRE's MA book at competitive risk and sharpens the urgency of making its *other* ~3,000 agent relationships stickier through technology and service.

---

## 4. Best practices in agent-facing technology among winning IA carriers

### 4.1 What agents say they want (survey evidence)

- **Ivans 2024 Agent-Connectivity Survey** (1,000 independent agents, published Jan 12, 2024): **83% would write more business with carriers that provide real-time appetite and quoting inside their agency management systems**; 70% prefer integrated AMS quoting but only 22% have it today; top-5 requested digital capabilities are policy download, digital document delivery, digital inquiry, digital quoting/submission, and **digital claims communication/transparency** [11].
- **J.D. Power 2025 U.S. Independent Agent Satisfaction Study** (with Big "I"): personal-lines agent satisfaction is **274 points higher** when a carrier is "very easy" to work with, yet **61% of agents say carriers are not "very easy"**; only 56% of personal-lines agents say carriers meet foundational needs. Top personal-lines carriers: **Erie 754, Auto-Owners 749, Cincinnati 717** — all agent-only carriers that treat ease-of-doing-business as the product [12].

### 4.2 What the winners actually build

| Carrier | Capability | Evidence / as-of |
|---|---|---|
| **Progressive** | "For Agents Only (FAO) **Portfolio**" — multi-million-dollar rebuild of its agent quoting platform: auto data-prefill, integrated multi-product quoting, single portfolio view; explicitly framed as reinforcing "ease of use" with agents co-designing | Progressive newsroom (rollout announced 2023–2024) [13] |
| **Erie / Auto-Owners / Cincinnati** | Consistent #1–3 in agent satisfaction on six dimensions incl. ease of doing business and servicing; the strategic lesson is that agent-only carriers can out-satisfy national brands | J.D. Power 2025 [12] |
| **Plymouth Rock** (direct MA competitor) | Hi Marley SMS claims communication to cut cycle times; generative-AI-assisted FNOL and early claim segmentation; NWN voice-analytics/AI in contact centers (Mar 2025); dedicated "digital tools for agents" releases on the home side | [28][29][30] |
| Industry pattern (Datos Insights, Ivans, ACT) | Real-time rating APIs into comparative raters (EZLynx connects 330+ carriers), bilateral API partnerships, straight-through small-personal-lines issuance, appetite-as-API | [11][31] |

**Where MAPFRE stands:** MAPFRE participates in comparative-rater ecosystems (it appears among carrier API partners in rater/portal directories [31]), and runs an agent locator and agent portal, but there is **no public evidence of a modern agent-API program, real-time appetite service, or an agent-experience investment narrative** comparable to Progressive's Portfolio or Plymouth Rock's tooling. Given ~100% IA distribution, this is the most conspicuous white space in its public technology story [4][13][31].

---

## 5. What modern claims capabilities contribute to combined ratio and retention

### 5.1 Straight-through processing and AI estimating

- McKinsey ("Claims 2030"): by 2030, **more than half of current claims activities** can be replaced by AI-enabled automation, and personal-lines carriers can reach **STP rates above 90%**, compressing settlement from days to hours/minutes [17].
- Photo/AI estimating: computer-vision estimating is credited with **20–30% cycle-time reduction** and lower LAE per CCC-ecosystem analyses; Tractable's flagship deployment (Admiral Seguros) reports **90% of auto estimates touchless with 98% completed in under 15 minutes** [14][15]. Photo estimating consistently posts lower cycle times than physical inspection formats (CCC data) [32].
- Cycle time is the retention lever: J.D. Power's 2025 claims study shows industry repair cycle time improving to **19.3 days (from 22.3)** drove a 9-point satisfaction gain among repairable claims; satisfaction craters (−21 pts to 630) for customers with $1,000+ deductibles facing rental costs — i.e., speed and cost-transparency failures directly destroy the loyalty of exactly the customers most likely to shop [6].

### 5.2 Subrogation analytics

- Typical carriers recover **~5.1% of paid losses** via subrogation; best-in-class operating models recover materially more (one vendor claims up to 22% of recoverable claims value) [16].
- Closed-file audits find **11–21% (avg ~16%) of claims with subrogation potential are missed**; the National Association of Subrogation Professionals estimates ~15% of recoverable claims are never pursued; industry-wide missed-subrogation estimates run **$15B+ annually** (some estimates $20B+) [16].
- Implication: on a book of MAPFRE's size (US ~€2.3B premiums, FY2025 [10]), each 0.5 pp of additional net recoveries is a direct, rate-free combined-ratio improvement — among the fastest-payback claims-analytics investments available.

### 5.3 Managed repair (DRP)

Direct repair programs deliver parts/labor pricing concessions, monthly KPI-managed severity control, faster cycle times, and lower LAE; large networks (e.g., Sedgwick's 3,400+ shops) achieve better labor rates and throughput [33]. MAPFRE's **CAR EZ** program already provides this scaffolding in MA [20]; the public record contains no MAPFRE-specific severity or penetration figures (not sourceable — do not quote).

### 5.4 Fraud and payments

- Shift-type AI fraud detection is MAPFRE's own most-touted U.S. AI initiative ("identifying fraud in real time") [4][21]; group results attribute part of the loss-ratio improvement to AI-driven fraud work [3].
- Digital claim payments (One Inc ClaimsPay, adopted Nov 2023) reduce check-handling expense and are associated with claims-satisfaction gains at the settlement step [19].

**Synthesis:** the levers with the best-documented combined-ratio math are (1) touchless/photo estimating penetration (LAE + severity + cycle time), (2) subrogation analytics (direct loss recovery), (3) fraud AI (loss ratio), and (4) DRP steering (severity). The levers with the best-documented *retention* math are cycle time, proactive digital communication, and instant payment — precisely the dimensions where J.D. Power shows MAPFRE trailing [6][7][8].

---

## 6. So what for MAPFRE's growth strategy

1. **The core-systems alibi is gone; the gap is productization.** MAPFRE sits on a full Guidewire stack with EnterpriseEngage portals [1] and a parent spending €600M+/year on technology [2], yet has no bind-capable direct channel and no visible agent-API program. The growth strategy should reframe technology asks not as "modernization" (done) but as **channel productization on an existing modern core** — materially cheaper and faster than competitors assume.

2. **Agent-experience technology is the highest-leverage, lowest-regret investment.** With ~100% IA distribution, 3,000+ agencies [19], an eroding 18.2% share [25], and the AAA channel in open dispute [27], MAPFRE's defensible moat is being the *easiest carrier to place MA auto with*. The evidence base is unusually crisp: 83% of agents would shift volume for real-time in-AMS quoting [11], and a 274-point satisfaction gap separates "very easy" carriers from the rest [12]. A Progressive-Portfolio-style quoting rebuild plus real-time rating APIs into EZLynx/Applied raters, STP new-business issuance, and digital claims-status transparency for agents should headline the growth plan.

3. **Claims experience is MAPFRE's most measurable competitive liability — and its cheapest retention lever.** Six years of bottom-quintile J.D. Power claims scores [5][6][7][8] against a #1 market share is an unstable combination: the brand's share is sustained by agent inertia and price, not experience, exactly as Progressive scales the hybrid model in MA [25][26]. Scaling ePICS penetration toward touchless norms (90% touchless is demonstrated art-of-the-possible [15]), Hi-Marley-style texting, and instant payment ubiquity attacks both retention and LAE simultaneously.

4. **Fund growth from claims-economics self-help.** The FY2023→FY2025 swing (auto CR ~107%→97.8% [9][10]) came mostly from rate. The next 2–3 points should come from operations: subrogation analytics (typical 5.1% recovery vs. ~16% missed-opportunity rate [16]), fraud AI, and DRP steering — creating a self-funding mechanism for the agent-tech and direct-channel build without threatening the newly restored underwriting profit.

5. **Sequence the direct channel carefully.** Public evidence shows MAPFRE's own leadership prioritizes "digital consumer access" [4], but activating direct bind before fixing agent ease-of-doing-business would inflame the channel at the precise moment the AAA dispute [27] makes agent goodwill strategically scarce. The evidence supports an **agent-first digitization sequence** (raters/APIs/STP → agent-embedded consumer self-service → direct bind for defined segments), not a direct-first one.

6. **Close the data gaps before final recommendations.** Not publicly sourceable and needed from the client or paid databases: Commerce-entity NAIC/MA-DOI complaint ratios (current year), ePICS/CAR EZ penetration and cycle-time internals, retention/PIF trends by agency segment, actual subrogation recovery rate, agent NPS, current AM Best status, and the terms/economics of the AAA agreement.

---

## Sources

1. Guidewire press release, "MAPFRE Deploys Guidewire for Personal Lines Business Innovation and Growth; Commercial Lines Transformation through Guidewire Cloud Now Underway," Nov 4, 2020 — https://www.guidewire.com/about/press-center/press-releases/20201104/mapfre-deploys-guidewire-personal-lines-business
2. MAPFRE S.A. corporate communications on technology hiring/investment (>€600M annual tech investment), ~2024 — https://www.mapfre.com/en/communicate/innovation-communicate/mapfre-hire-hundred-technology-professionals-open-hubs-spain-colombia-brazil/
3. MAPFRE S.A. FY2025 results communications (REEF platform; AI Center 150+ use cases, 1/3 gen-AI; ~30% claim-processing time cuts in Spain/Brazil), Feb 2026 — https://www.mapfre.com/en/communicate/corporate-communicate/annual-earnings-presentation-2025/ and https://www.investing.com/news/company-news/mapfre-2025-results-presentation-record-premiums-and-earnings-drive-highestever-dividend-93CH-4502479
4. IK-Hub, "MAPFRE at ITC Vegas 2024: MAPFRE USA's digital, data and innovation strategies" (José Luis Bernal Zúñiga; self-service + digital consumer priorities; real-time AI fraud project), Dec 2024 — https://ik-hub.com/thought-leadership/mapfre-at-itc-vegas-2024-mapfre-usas-digital-data-and-innovation-strategies/
5. J.D. Power 2025 U.S. Auto Insurance Study, New England region (Amica 735; MAPFRE 595 lowest; Plymouth Rock 592; Farmers 567), June 2025 — https://resolve.jdpower.com/business/press-releases/2025-us-auto-insurance-study (regional figures via Carrier Management, Jun 10, 2025: https://www.carriermanagement.com/news/2025/06/10/276132.htm and Amica release: https://www.amica.com/en/about-us/media-center/news-release-archive/2025/jdp-auto-award.html)
6. Business Wire / J.D. Power, "Satisfaction with Auto Insurance Claims Strained by Higher Deductibles, More Total Losses" — 2025 U.S. Auto Claims Satisfaction Study (industry 700; Erie 743; cycle time 19.3 days; fielded Sep 2024–Aug 2025), Oct 28, 2025 — https://www.businesswire.com/news/home/20251028397623/en/Satisfaction-with-Auto-Insurance-Claims-Strained-by-Higher-Deductibles-More-Total-Losses-J.D.-Power-Finds
7. ValuePenguin, "MAPFRE Auto & Home Insurance Review" (NAIC complaint index 1.02 auto, 2019; J.D. Power 2019 claims rank 23/25; 2020 second-to-last), accessed Jul 2026 (data as of 2019–2020) — https://www.valuepenguin.com/mapfre-auto-home-insurance-review
8. MoneyGeek, "MAPFRE Car Insurance Review" (J.D. Power 2024 claims rank 17/21; 2024 shopping 622 vs 637 NE avg; 2023 NE satisfaction 797/9th; complaint index mixed 0.62–9.99 by subsidiary; AM Best unrated at company request), 2026 review, accessed Jul 2026 — https://www.moneygeek.com/insurance/auto/reviews/mapfre-insurance/
9. MAPFRE S.A., FY2024 earnings communication (North America: premiums ~€2.8B, US ~€2.4B; net €97.6M vs −€1.8M in 2023; CR 98.7% −6.7pp; auto CR 101.2% −6.0pp), Feb 2025 — https://www.mapfre.com/en/communicate/corporate-communicate/2024-earnings-presentation/
10. MAPFRE S.A., FY2025 earnings communication (North America: premiums €2.6B; US €2.3B, US result €118.2M; NA net €139M +42%; CR 95.4% −3.3pp; auto CR 97.8%), Feb 2026 — https://www.mapfre.com/en/communicate/corporate-communicate/annual-earnings-presentation-2025/
11. Carrier Management, "Survey: Carrier Connectivity Top of Mind for Agents" (Ivans survey of 1,000 agents: 83% would write more with real-time appetite/quoting; 70% prefer AMS-integrated quoting vs 22% usage), Jan 12, 2024 — https://www.carriermanagement.com/news/2024/01/12/257763.htm
12. J.D. Power 2025 U.S. Independent Agent Satisfaction Study (Erie 754 / Auto-Owners 749 / Cincinnati 717 personal lines; 274-pt ease-of-business satisfaction gap; 61% say not "very easy"), Sep 2025 — https://www.jdpower.com/business/press-releases/2025-us-independent-agent-satisfaction-study (PDF: https://www.jdpower.com/sites/default/files/file/2025-09/2025118%20U.S.%20Independent%20Insurance%20Agent%20Satisfaction%20Study.pdf)
13. Progressive newsroom, "New Progressive Quoting Experience Helps Agents Meet Preferred Customer Needs" (FAO Portfolio quoting rebuild), 2023–2024 — https://progressive.mediaroom.com/news-releases/?item=122461
14. CCC Intelligent Solutions ecosystem analyses (computer-vision estimating; 20–30% cycle-time reduction; retention/switching-cost effects), accessed Jul 2026 — https://www.cccis.com/insurance-carriers/apd/claims-estimating and https://businessmodelcanvastemplate.com/blogs/how-it-works/ccc-intelligent-solutions-how-it-works
15. Tractable, "Solutions — Insurers" (Admiral Seguros: 90% touchless estimates, 98% of assessments <15 minutes), accessed Jul 2026 — https://tractable.ai/insurers/
16. Subrogation benchmarks: OpsDog "Subrogation Recovery Rate as % of Total Loss (Auto)" (typical ~5.1% of paid losses) — https://opsdog.com/products/subrogation-recovery-rate ; NAIC Journal of Insurance Regulation, "How's the Recovery? Salvage and Subrogation," 2023 ($51.6B recovered across auto lines, 2021) — https://content.naic.org/sites/default/files/cipr-jir-2023-2.pdf ; SubroIQ (audit average 16% missed, range 11–21%) — https://www.subroiq.com/subrogationelevated/ ; Genpact (NASP ~15% missed; $15B annual leakage) — https://www.genpact.com/insight/maximize-subrogation-opportunities-to-strengthen-the-bottom-line
17. McKinsey & Company, "Claims 2030: Dream or reality?" (>50% of claims activities automatable by 2030; >90% STP in personal lines), 2022–2023 — https://www.mckinsey.com/industries/financial-services/our-insights/claims-2030-dream-or-reality
18. MAPFRE Insurance — ePICS auto photo appraisal (24–48 hr estimates) and Go MAPFRE app pages, accessed Jul 2026 — https://www.mapfreinsurance.com/car-insurance/epics/ and https://www.mapfreinsurance.com/go-mapfre-app/
19. One Inc press release, "MAPFRE Insurance Accelerates Digital Adoption with Selection of One Inc's ClaimsPay Solution" (11 states, 3,000+ agents), Nov 1, 2023 — https://www.oneinc.com/resources/news/mapfre-insurance-accelerates-digital-adoption-with-selection-of-one-incs-claimspay-solution
20. MoneyGeek MAPFRE review — CAR EZ managed repair program description, accessed Jul 2026 — https://www.moneygeek.com/insurance/auto/reviews/mapfre-insurance/
21. MAPFRE S.A. / Shift Technology joint announcement, "MAPFRE and Shift Technology join forces to reinvent the customer claims experience," Oct 2020 — https://www.mapfre.com/en/communicate/innovation-communicate/mapfre-shift-technology-join-forces/
22. MAPFRE S.A., "MAPFRE shines at ITC Vegas with presentations on gen AI" and ITC Vegas 2025 recap (Bernal on GenAI ROI, human-in-the-loop), Oct 2025 — https://www.mapfre.com/en/communicate/innovation-communicate/mapfre-itc-vegas-gen-ai/ and https://www.mapfre.com/en/insights/innovation/itc-vegas-2025/
23. Insurance Journal, "MAPFRE USA to Exit 5, Focus on 11 States; Sell New York and Life Units in Reorganization," Dec 5, 2017 — https://www.insurancejournal.com/news/national/2017/12/05/473137.htm
24. ConsumersAdvocate, "2026 MAPFRE Auto Insurance Reviews" (Commerce NAIC complaint ratio 0.62), accessed Jul 2026 — https://www.consumersadvocate.org/car-insurance/c/mapfre-auto-insurance-review
25. Agency Checklists, "6th Look 2025: Market Share Report for MA Auto Insurance Marketplace" (CAR exposure data as of Aug 2025; Commerce 18.22%), Nov 3, 2025 — https://agencychecklists.com/2025/11/03/6th-look-2025-market-share-report-for-ma-auto-insurance-marketplace-78046/
26. Agency Checklists, "1st Look 2025: Market Share For MA Auto Marketplace" (Commerce 19.02%, 936,254 exposures at Dec 2024), Jan 13, 2025 — https://agencychecklists.com/2025/01/13/1st-look-2025-market-share-for-ma-auto-marketplace-74001/
27. Insurance Journal, "MAPFRE Denied Injunction Against AAA Auto Insurance Sales in Massachusetts" (~$200M annual premium at issue; injunction denied), Feb 23, 2026 — https://www.insurancejournal.com/magazines/mag-features/2026/02/23/858398.htm
28. Insurance Innovation Reporter, "Inside Plymouth Rock's Push to Modernize Claims with AI" (gen-AI FNOL and segmentation), 2025 — https://iireporter.com/inside-plymouth-rocks-push-to-modernize-claims-with-ai/
29. Hi Marley, "3 Ways Plymouth Rock Uses Digital Communication to Bolster Its Business" (claims texting, cycle-time reduction), accessed Jul 2026 — https://www.himarley.com/blog/3-ways-plymouth-rock-uses-digital-communication-to-bolster-its-business/
30. NWN press release, "Plymouth Rock Assurance Collaborates with NWN…" (voice analytics + gen AI in contact centers), Mar 2025 — https://nwn.ai/news-room/press-release/plymouth-rock-assurance-collaborates-with-nwn-to-improve-insurance-agent-communications-and-customer-service/
31. EZLynx (Applied Systems), Rating Engine product pages (330+ carrier connections; rater-to-portal bind workflow); Agentero carrier/rater support directory listing MAPFRE among API-connected carriers, accessed Jul 2026 — https://www.ezlynx.com/products/rating-engine/ and https://support.agentero.com/knowledge/which-comparative-raters-are-supported-by-these-carriers
32. Repairer Driven News, "CCC: Virtual/photo estimating 3.9% of appraisals, cuts cycle time compared to some other methods," Dec 11, 2017 — https://www.repairerdrivennews.com/2017/12/11/ccc-photo-estimating-3-9-of-appraisals-cuts-cycle-time-compared-to-some-other-methods/
33. Sedgwick, "Direct repair program / Auto repair network" (3,400+ contracted shops; labor-rate and cycle-time advantages), accessed Jul 2026 — https://www.sedgwick.com/loss-adjusting/auto-claims/direct-repair-program/
